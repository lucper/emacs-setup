## Files

| Command       | Description                                                           |
|---------------|-----------------------------------------------------------------------|          
| Ctrl+x b      | Switch or create new buffer. Enter the buffer name in the minibuffer. |
| Ctrl+x Ctrl+f | Open or create new file. Enter the file's path.                       |
| Ctrl+x Ctrl+s | Save buffer to a file.                                                |

## Movement

| Command             | Description                                          |
|---------------------|------------------------------------------------------|
| Ctrl+g              | Quit whatever command you are trying to run.         |
| Ctrl+a              | Move to beginning of line.                           |
| Ctrl+e              | Move to end of line.                                 |
| Alt+f               | Move forward one word.                               |
| Alt+b               | Move backward one word.                              |
| Ctrl+s              | Regex search. Press again to move to next match.     |
| Ctrl+r              | Regex search. Press again to move to previous match. |
| Ctrl+/              | Undo last change.                                    |
| Alt+< (Alt+Shift+<) | Move to beginning of buffer.                         |
| Alt+> (Alt+Shift+>) | Move to end of buffer.                               |
| Alt+gg              | Go to line.                                          |

## Selection with regions

| Command   | Description |
|-----------|-------------|
|Ctrl+space | Sets a mark. When you move, everytinh between mark and point is a region. \ | 
|           | Ex. The sequence of commands Ctrl+space > some movement > backspace = deletes the region. |

## Kill and Yank (Copy, Paste and Cut)

| Command | Description                                           |
|---------|-------------------------------------------------------|
| Ctrl+w  | Kill region (like Ctrl+x, cut).                       |
| Alt+w   | Copy region to kill ring (like Ctrl+c, copy).         |
| Alt+d   | Kill word.                                            |
| Ctrl+k  | Kill line.                                            |
| Ctrl+y  | Yank or copy last killed region (like Ctrl+s, paste). |

## Miscellaneous

| Command | Description                                                  |
|---------|--------------------------------------------------------------|
| Alt+\   | Delete all spaces and tabs around point.                     |
| Alt+/   | Cycles through possible expansions of the text before point. |

## Windows and Frames

A frame is composed of windows. The frame is just the "outer window".

| Command  | Description                                                             |
|----------|-------------------------------------------------------------------------|
| Ctrl+x o | Switch cursor to another window.                                        |
| Ctrl+x 1 | Delete all other windows, leaving only the current window in the frame. |
| Ctrl+x 2 | Split frame above and below.                                            |
| Ctrl+x 3 | Split frame side by side.                                               |
| Ctrl+x 0 | Delete current window.                                                  |

### CIDER Keybinds (minor-mode that complements clojure-mode)
| Command             | Description                                     |
|---------------------|-------------------------------------------------|
|Ctrl+c Ctrl+q        | Quit REPL.                                      |
|Ctrl+c Ctrl+o        | Clear output of last expression.                |
|Ctrl+u Ctrl+c Ctrl+o | Clear REPL buffer.                              |
|Ctrl+c Ctrl-z        | Jump between source and REPL buffers.           |
|Ctrl+c Ctrl+b        | Interrupt evaluation.                           |
|Ctrl+c Ctrl+e        | Evaluate expression immediatly preceding point. |
|Ctrl+c Ctrl+k        | Compile current buffer.                         |
|Ctrl+c Alt+n Alt+n   | Switch to namespace of current buffer.          |
|Ctrl+cdd             | Display documentation for symbol under point.
                        Press q to quit documentation window.           |
|Ctrl+Up, Ctrl+Down   | Cycle through REPL history.                     |

### Paredit (minor-mode for Lisp's parentheses)
#### Wrapping, Slurping and Barfing
Alt+s                 Splices (removes) "",(),[] or {) around point.
Alt+Up                Splices s-expressions backwardss from rear of point.
Alt+Down              Splices s-expressions forward from rear of point.
Alt+(                 Wrapping. Surrounds the expression after
                      point with parentheses.
Ctrl+Right            Slurping. Expands a closing parentheses to
                      include the next expression to the right.
Ctrl+Left             Barfing. Contracts a closing parentheses to
                      remove the last expression.
Ex. Consider (+ 1 |2 3) where | is the point. 
1. Pressing Alt+(, adding +, then space: 
(+ 1 (+ |2) 3)
2. Pressing Ctrl+Right:
(+ 1 (+ |2 3)) 
3. Pressing Ctrl+Left:
(+ 1 (+ | 2) 3)
#### Navigation
Ctrl+Alt+f            Move to the closing parenthesis.              
Ctrl+Alt+b            Move to the opening parenthesis.
