# Editors

## Visual Studio Code
* (Command)/Ctrl+Shift+P - "Revert File", to reload a single file.
* (Command)/Ctrl+Shift+P - "Developer: Reload Window", to reload all explorer files.
* Ctrl+/ - Comment out/in
* Shift+Command+V - Preview Markdown file
* Command+Shift+\ - Matching Brace
* Shift+Alt+F - format code (Helps with JSON)
## Vim
* By default, vim lets you use Ctrl-a1 to increment the number under the cursor, record a macro to increase numbers in a column.
* To reload .vimrc, <code>:so $MYVIMRC or :so %</code>
* On windows, using a terminal to ubuntu with Vim open, copy/paste: press shift + drag mouse to select a text in vim then ctr l + shift + c on the terminal
* vimdiff <(svn diff)
* creating and restoring a session
    <code>:mks ~/.vim/sessions/rooster.vim</code>

    The next time you’re ready to start working on that project, source that session file within vim:
    <code>:source ~/.vim/sessions/rooster.vim</code>

    Or open it when you run vim using the -S flag: <code>vim -S ~/.vim/sessions/rooster.vim</code>
* load all buffers at once, <code>:bufdo e</code>
* copy filenames/path to registers
    <code>:let @" = expand("%")></code> This will copy the file name to the unamed register, then you can use good old p to paste it. 
    
    One can map this to a key for quicker use. <code>:nmap cp :let @" = expand("%")<cr></code> 
    
    You can also use this for full path <code>:let @" = expand("%:p")</code>
# Terminal
## Bash
* <code>set -a</code> causes variables defined from herein to be automatically exported.
    * <code>set -a;  ./tmp.txt;  set +a</code>
* clear the backscroll and screen, <code>printf '\ec'</code>
