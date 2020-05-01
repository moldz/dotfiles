" This is useful when I am using Markdown to take notes.  It finds the first Markdown link source in the current
" line, converts the relative location to a full path on the computer, and calls the mvlastscreen executable

function MarkdownMvlastscreen()
    " find the first markdown link location in the current line and put it into the register
    execute 'normal 0f(yi('

    " store the link location for the register into a variable
    let linkpath = @"

    " figure out the path to the current buffer
    let path = expand('%:p:h')

    " create the fullpath string
    let fullpath = path . '/' . linkpath

    " create the command to execute
    let cmd = '! mvlastscreen "' . fullpath . '"'

    " prompt user for confirmation
    if input(cmd . " (y/N): ") == 'y'
        silent execute cmd
    endif

    " redraw the screen in case it goes blank
    " not sure why this is needed, but it is
    redraw!
endfunction
