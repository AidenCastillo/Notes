# Password Polices
`sudo nano /etc/pam.d/common-password
update line with pam.unix.so
to
`password [success=2 default=ignore] pam.unix.so obscure sha512 minlen=8

### Password Complexity
`sudo apt install libpam-pwquality
`sudo nano /etc/pam.d/common-password
`password requisite pam_pwquality.so retry=3 ucredit=-1 dcredit=-1 ocredit=-1

### Expiration Date
`sudo nano /etc/login.defs
`PASS_MAX_DAYS 100
`PASS_MIN_DAYS 0
`PASS_WARN_AGE 7`
# Auditing (no points)
`sudo apt-get install auditd
`sudo service auditd start
`sudo auditctl -w /etc/passwd -p wa -k user-modify
`sudo cat /var/log/audit/audit.log | grep user-modify


# History (no points)
* Add to the ./bashrc file in terminal
HISTCONTROL=''
HISTFOLDER=~/.bash_histories
HISTFILEEXT=history      # only files in $HISTFOLDER with this extension will be read
shopt -s histappend   # append when closing session
mkdir -p $HISTFOLDER
HISTFILE=$HISTFOLDER/$(date +%Y-%m-%d_%H-%M-%S_%N).$HISTFILEEXT  # create unique file name for this session. Nanoseconds seems to be unique enough, try: for ((i=0; i<=10; i++)); do date +%Y-%m-%d_%H-%M-%S_%N; done
if HISTFILE unset, history is not saved on exit -> not really necessary if we save after each command, but its a double net safety
HISTSIZE=-1       # maximum number of commands to hold inside bash history buffer
HISTFILESIZE=-1   # maximum number of lines in history file
history -a $HISTFILE # bash saves the total history commands entered since startup or since the last save and saves that amount of commands to the file. This means reading a history file after typing commands will trip up bash, but this won't be a problem if the history file is only loaded in the beginning. This means that only new commands are saved not all the old loaded commands, thereby we can load as many history files into the buffer as we want and still only save newly thereafter typed commands
PROMPT_COMMAND="history -a $HISTFILE; $PROMPT_COMMAND"  # This command is executed after very typed command -> save history after each command instead after only closing the session

Load old histories from last 5 files/sessions
HISTLINESTOLOAD=2000
--reverse lists newest files at first
names=($(ls --reverse $HISTFOLDER/*.$HISTFILEEXT 2>/dev/null))
toload=()
linecount=0
Check if is really file and count lines and only append to $toload if linecount under $HISTLINESTOLOAD
for fname in ${names[*]}; do
    if test -f $fname; then
        linecount=$((linecount+$(wc -l < $fname) ))
        if test $linecount -ge $HISTLINESTOLOAD; then
            break
        fi
        toload+=($fname)
    fi
done
Beginning with the oldest load files in $toload into bash history buffer
for (( i=${#toload[*]}-1; i>=0; i-- )); do
    history -r ${toload[$i]}
done
