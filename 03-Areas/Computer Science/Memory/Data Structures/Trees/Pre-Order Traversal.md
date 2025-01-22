Type of [[Tree]] traversal that follow the Root-Left-Right policy
* Root node of subtree visited first.
* Left subtree is traversed
* Right subtree is traversed

## Algorithm

```
Preorder(root):
	1. Follow steps 2-4 until root != NULL
	2. Write root->data
	3. Preorder(root->left)
	4. Preorder(root->right)
	5. End loop
```
![[Pre-Order Traversal 2024-07-15 22.52.12.excalidraw]]

## Code
```cpp
// C++ program for preorder traversals

#include <bits/stdc++.h>
using namespace std;

// Structure of a Binary Tree Node
struct Node {
    int data;
    struct Node *left, *right;
    Node(int v)
    {
        data = v;
        left = right = NULL;
    }
};

// Function to print preorder traversal
void printPreorder(struct Node* node)
{
    if (node == NULL)
        return;

    // Deal with the node
    cout << node->data << " ";

    // Recur on left subtree
    printPreorder(node->left);

    // Recur on right subtree
    printPreorder(node->right);
}

// Driver code
int main()
{
    struct Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    root->right->right = new Node(6);

    // Function call
    cout << "Preorder traversal of binary tree is: \n";
    printPreorder(root);

    return 0;
}
```