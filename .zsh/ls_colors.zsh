# LS_COLORS
# export LS_COLORS="TYPE=STYLE;FG;BG"
# others write (ow)
# export LS_COLORS="ow=00;97;44"

# no Global default, although everything should be something
# fi Normal file
# di Directory
# ln Symbolic link. If you set this to âtargetâ instead of a numerical
# value, the color is as for the file pointed to.
# pi Named pipe (FIFO, PIPE)
# do Door
# bd Block device (BLOCK, BLK)
# cd Character device (CHAR, CHR)
# or Symbolic link pointing to a non-existent file (ORPHAN)
# so Socket (SOCK)
# su File that is setuid (u+s) (SETUID)
# sg File that is setgid (g+s) (SETGID)
# tw Directory that is sticky and other-writable (+t,o+w)
# (STICKY_OTHER_WRITABLE)
# ow Directory that is other-writable (o+w) and not sticky (OTHER_WRITABLE)
# st Directory with the sticky bit set (+t) and not other-writable (STICKY)
# ex Executable file (i.e. has âxâ set in permissions) (EXEC)
# mi Non-existent file pointed to by a symbolic link
# (visible when you type ls -l) (MISSING)
# lc Opening terminal code (LEFTCODE, LEFT)
# rc Closing terminal code (RIGHTCODE, RIGHT)
# ec Non-filename text (ENDCODE, END)
# *.extension Every file using this extension e.g. *.jpg

# Effects
# 00 Default colour
# 01 Bold
# 04 Underlined
# 05 Flashing text
# 07 Reversetd
# 08 Concealed

# Colours
# 31 Red
# 32 Green
# 33 Orange
# 34 Blue
# 35 Purple
# 36 Cyan
# 37 Grey

# Backgrounds
# 40 Black background
# 41 Red background
# 42 Green background
# 43 Orange background
# 44 Blue background
# 45 Purple background
# 46 Cyan background
# 47 Grey background

# Extra colours
# 90 Dark grey
# 91 Light red
# 92 Light green
# 93 Yellow
# 94 Light blue
# 95 Light purple
# 96 Turquoise
# 97 White
# 100 Dark grey background
# 101 Light red background
# 102 Light green background
# 103 Yellow background
# 104 Light blue background
# 105 Light purple background
# 106 Turquoise background

export LS_COLORS="\
di=00;93\
:ow=00;93;41\
:ex=01;93\
:ln=04;32\
:or=05;31\
:*.py=32\
:*.rb=100\
:*.php=37\
:*.html=04;94\
:*.js=00;96\
:*.css=00;96\
:*.sass=00;96\
:*.scss=00;96\
:*.gitignore=04;31\
:*.gitmodules=04;31\
:*.gitattributes=04;31\
:*.localized=04;31\
:*.rbenv-version=04;31\
:*.rvmrc=04;31\
:*.nanorc=04;31\
:*.htoprc=04;31\
:*.netrc=04;31\
:*.md=30;106\
:*.markdown=30;106\
:*.DS_Store=07\
:*.tar=00;31\
:*.tgz=00;31\
:*.zip=00;31\
:*.rar=00;31\
:*.sfv=00;31\
:*.jpg=01;34;40\
:*.png=01;34;40\
:*.gif=01;34;40\
:*.mkv=01;34;44\
:*.avi=01;34;44\
:*.mov=01;34;44\
:*.mp4=01;34;44\
:*.flv=01;34;44\
:*.pdf=04;33\
:*.txt=37\
:*.csv=37\
:*.json=37\
:*.sh=37;40\
:*.bash_history=00;90\
:*.gdb_history=00;90\
:*.irb_history=00;90\
:*.mysql_history=00;90\
:*.php_history=00;90\
:*.psql_history=00;90\
:*.lesshst=00;90\
"
