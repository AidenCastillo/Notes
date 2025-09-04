improve terminal 
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "string.h"

// Constants
#define VGA_WIDTH   80
#define VGA_HEIGHT  25
#define VGA_MEMORY  0xB8000

// Special characters
#define ESCAPE_CHAR '\033'
#define NEWLINE     '\n'
#define CSI_START   '['

// VGA color definitions
enum vga_color {
    VGA_COLOR_BLACK,
    VGA_COLOR_BLUE,
    VGA_COLOR_GREEN,
    VGA_COLOR_CYAN,
    VGA_COLOR_RED,
    VGA_COLOR_MAGENTA,
    VGA_COLOR_BROWN,
    VGA_COLOR_LIGHT_GREY,
    VGA_COLOR_DARK_GREY,
    VGA_COLOR_LIGHT_BLUE,
    VGA_COLOR_LIGHT_GREEN,
    VGA_COLOR_LIGHT_CYAN,
    VGA_COLOR_LIGHT_RED,
    VGA_COLOR_LIGHT_MAGENTA,
    VGA_COLOR_LIGHT_BROWN,
    VGA_COLOR_WHITE,
};

// Terminal state
static struct {
    size_t row;
    size_t column;
    uint8_t color;
    uint16_t* buffer;
} terminal = {
    .buffer = (uint16_t*)VGA_MEMORY
};

// Helper functions
static inline uint8_t vga_entry_color(enum vga_color fg, enum vga_color bg) {
    return fg | bg << 4;
}

static inline uint16_t vga_entry(unsigned char uc, uint8_t color) {
    return (uint16_t)uc | (uint16_t)color << 8;
}

static void handle_special_char(char c) {
    switch(c) {
        case NEWLINE:
            terminal.column = 0;
            terminal.row++;
            break;
        default:
            terminal_putentryat(c, terminal.color, terminal.column, terminal.row);
            if (++terminal.column == VGA_WIDTH) {
                terminal.column = 0;
                terminal.row++;
            }
            break;
    }

    if (terminal.row >= VGA_HEIGHT) {
        terminal.row = VGA_HEIGHT - 1;
        terminal_scroll();
    }
}

static void handle_escape_sequence(const char* data, size_t* index, size_t size) {
    if (*index + 1 >= size || data[*index + 1] != CSI_START) {
        return;
    }

    size_t j = *index + 2;
    uint16_t code[4] = {0};
    int code_index = 0;

    while (j < size && data[j] != 'm' && code_index < 3) {
        code[code_index++] = data[j++] - '0';
    }

    int color_code = 0;
    for (int i = 0; i < code_index; i++) {
        color_code = color_code * 10 + code[i];
    }

    switch (color_code) {
        case 94: 
            terminal.color = vga_entry_color(VGA_COLOR_BLUE, VGA_COLOR_BLACK);
            break;
    }

    *index = j;
}

// Public functions
void terminal_initialize(void) {
    terminal.row = 0;
    terminal.column = 0;
    terminal.color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
    
    for (size_t y = 0; y < VGA_HEIGHT; y++) {
        for (size_t x = 0; x < VGA_WIDTH; x++) {
            terminal.buffer[y * VGA_WIDTH + x] = vga_entry(' ', terminal.color);
        }
    }
}

void terminal_scroll(void) {
    for (int y = 0; y < VGA_HEIGHT - 1; y++) {
        for (int x = 0; x < VGA_WIDTH; x++) {
            terminal.buffer[y * VGA_WIDTH + x] = terminal.buffer[(y + 1) * VGA_WIDTH + x];
        }
    }
    
    // Clear last line
    for (int x = 0; x < VGA_WIDTH; x++) {
        terminal.buffer[(VGA_HEIGHT - 1) * VGA_WIDTH + x] = vga_entry(' ', terminal.color);
    }
}

void terminal_putentryat(char c, uint8_t color, size_t x, size_t y) {
    terminal.buffer[y * VGA_WIDTH + x] = vga_entry(c, color);
}

void terminal_write(const char* data, size_t size) {
    for (size_t i = 0; i < size; i++) {
        if (data[i] == ESCAPE_CHAR) {
            handle_escape_sequence(data, &i, size);
            continue;
        }
        handle_special_char(data[i]);
    }
}

void terminal_writestring(const char* data) {
    terminal_write(data, strlen(data));
}