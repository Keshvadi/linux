---
title: Text Editors (Vim/Nano)
parent: Basic Commands
nav_order: 26
layout: default
---

## Text Editors (Vim/Nano)

Text editors are essential tools for creating, modifying, and managing text files, configuration files, and source code on a Linux system.  This section covers two popular terminal-based text editors: Nano (beginner-friendly) and Vim (powerful and efficient, but with a steeper learning curve).

---

### `nano`

*   **Description:** A simple, user-friendly text editor.  It's good for beginners and for quick edits.
*   **Example Usage:**

    ```bash
    nano file.txt  # Opens 'file.txt' in Nano. Creates it if it doesn't exist.
    nano           # Opens Nano with a new, unnamed buffer.
    ```

    *Key Commands within `nano` (displayed at the bottom of the screen):*

    *   **Ctrl + G:** Get Help (displays all commands).
    *   **Ctrl + O:** Write Out (save the file).  You'll be prompted for a filename if it's a new file.  Press Enter to confirm.
    *   **Ctrl + X:** Exit Nano.  If you have unsaved changes, it will prompt you to save them.
    *   **Ctrl + W:** Where Is (search for text).
    *   **Ctrl + K:** Cut Text (cuts the current line).
    *   **Ctrl + U:** Uncut Text (paste the last cut text).
    *   **Ctrl + C:** Current Position (shows the current line and column number).
    *   **Ctrl + T:** To Spell (check spelling - requires the `spell` package to be installed).

    *Installation (if needed - usually pre-installed):*
      *   Debian/Ubuntu: `sudo apt install nano`
      *   CentOS/Fedora: `sudo yum install nano` / `sudo dnf install nano`

    *Sample Output (Nano opens in its own terminal window, so there's no separate output to show here)*

---

### `vim` (or `vi`)

*   **Description:**  A highly configurable, powerful, and efficient text editor.  Vim is known for its modal editing (different modes for inserting text, navigating, and executing commands).  It has a steeper learning curve than Nano, but it's incredibly powerful once mastered. `vi` is the original editor, and `vim` ("Vi Improved") is a widely used enhanced version.  On most systems, typing `vi` actually opens `vim`.
*   **Example Usage:**

    ```bash
    vim file.txt  # Opens 'file.txt' in Vim. Creates it if it doesn't exist.
    vim           # Opens Vim with a new, unnamed buffer.
    ```

    *Vim's Modes:*

    *   **Normal Mode:**  This is the default mode.  Used for navigation, deleting text, copying/pasting, and executing commands.  *You cannot directly type text in Normal Mode*.
    *   **Insert Mode:**  Used for inserting and editing text (like a "normal" text editor).
    *   **Visual Mode:** Used for selecting text.
    *   **Command-Line Mode:** Used for entering commands (like saving, quitting, searching, etc.).

    *Basic Vim Commands (must be in Normal Mode, except where noted):*

    *   **Entering Insert Mode:**
        *   `i`: Insert before the cursor.
        *   `a`: Append after the cursor.
        *   `o`: Open a new line *below* the current line and enter Insert Mode.
        *   `O`: Open a new line *above* the current line and enter Insert Mode.
        *   `I`: Insert at the beginning of the line
        *   `A`: appends to the end of the line.

    *   **Exiting Insert Mode:**
        *   `Esc`: Return to Normal Mode (always a good idea to press `Esc` when you're done inserting text).

    *   **Navigation (Normal Mode):**
        *   `h`: Move left (you can also use the left arrow key, but `hjkl` are more efficient).
        *   `j`: Move down (down arrow).
        *   `k`: Move up (up arrow).
        *   `l`: Move right (right arrow).
        *   `w`: Move to the beginning of the next word.
        *   `b`: Move to the beginning of the previous word.
        *   `0` (zero): Move to the beginning of the line.
        *   `$`: Move to the end of the line.
        *   `gg`: go to the first line of the file.
        *   `G`: go to the last line of the file.
        *   `[N]G`: go to the Nth line of the file.

    *   **Deleting Text (Normal Mode):**
        *   `x`: Delete the character under the cursor.
        *   `dw`: Delete from the cursor to the beginning of the next word.
        *   `dd`: Delete the current line.
        *   `D`: Delete from the cursor to the end of the current line.
        *   `[N]dd`: delete N lines.

     *   **Undoing and Redoing (Normal Mode)**
        *    `u`: undo
        *   `Ctrl + r`: redo

    *   **Copying and Pasting (Normal Mode):**
        *   `yy`: Yank (copy) the current line.
        *   `p`: Paste the yanked or deleted text *after* the cursor.
        *   `P`: Paste the yanked or deleted text *before* the cursor.
        *  `[N]yy`: copy N lines.

    *   **Saving and Quitting (Command-Line Mode - enter by typing `:` in Normal Mode):**
        *   `:w`: Write (save) the file.
        *   `:w filename.txt`: Save the file as `filename.txt`.
        *   `:q`: Quit (if no changes have been made).
        *   `:q!`: Quit *without* saving changes (discard changes).
        *   `:wq`: Write (save) and quit.
        *   `:x`: Save and quit (similar to `:wq`, but only writes if changes have been made).
        *   `:qa`: quit all

    *   **Searching (Command-Line Mode):**
        *   `/pattern`: Search *forward* for "pattern".  Press `n` for the next match, `N` for the previous match.
        *   `?pattern`: Search *backward* for "pattern".

    *Installation (usually pre-installed, but if needed):*
      *   Debian/Ubuntu: `sudo apt install vim`
      *   CentOS/Fedora: `sudo yum install vim` / `sudo dnf install vim`

    *Sample Output (Vim opens in its own terminal window)*

    *Note: Mastering Vim takes time and practice.  Consider using `vimtutor` (a built-in tutorial) to learn the basics interactively.*

    ```bash
    vimtutor  # Start the Vim tutorial
    ```

---