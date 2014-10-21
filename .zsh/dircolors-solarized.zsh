# Configuration file for dircolors, a utility to help you set the
# LS_COLORS environment variable used by GNU ls with the --color option.
# Copyright (C) 1996, 1999-2010 Free Software Foundation, Inc.
# Copying and distribution of this file, with or without modification,
# are permitted provided the copyright notice and this notice are preserved.
# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the
# slackware version of dircolors) are recognized but ignored.
# Below, there should be one TERM entry for each termtype that is colorizable
TERM Eterm
TERM ansi
TERM color-xterm
TERM con132x25
TERM con132x30
TERM con132x43
TERM con132x60
TERM con80x25
TERM con80x28
TERM con80x30
TERM con80x43
TERM con80x50
TERM con80x60
TERM cons25
TERM console
TERM cygwin
TERM dtterm
TERM eterm-color
TERM gnome
TERM gnome-256color
TERM jfbterm
TERM konsole
TERM kterm
TERM linux
TERM linux-c
TERM mach-color
TERM mlterm
TERM putty
TERM rxvt
TERM rxvt-256color
TERM rxvt-cygwin
TERM rxvt-cygwin-native
TERM rxvt-unicode
TERM rxvt-unicode256
TERM screen
TERM screen-256color
TERM screen-256color-bce
TERM screen-bce
TERM screen-w
TERM screen.linux
TERM vt100
TERM xterm
TERM xterm-16color
TERM xterm-256color
TERM xterm-88color
TERM xterm-color
TERM xterm-debian
# Below are the color init strings for the basic file types. A color init
# string consists of one or more of the following numeric codes:
# Attribute codes:
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white

## dircolors 256 COLOR SUPPORT (see here: http://www.mail-archive.com/bug-coreutils@gnu.org/msg11030.html)
# Text 256 color coding:
# 38;5;COLOR_NUMBER
# Background 256 color coding:
# 48;5;COLOR_NUMBER

NORMAL 00;38;5;244 # no color code at all
#FILE 00 # regular file: use no color at all
RESET 0 # reset to "normal" color
DIR 00;38;5;33 # directory 01;34
LINK 01;38;5;33 # symbolic link. (If you set this to 'target' instead of a
 # numerical value, the color is as for the file pointed to.)
MULTIHARDLINK 00 # regular file with more than one link
FIFO 48;5;230;38;5;136;01 # pipe
SOCK 48;5;230;38;5;136;01 # socket
DOOR 48;5;230;38;5;136;01 # door
BLK 48;5;230;38;5;244;01 # block device driver
CHR 48;5;230;38;5;244;01 # character device driver
ORPHAN 48;5;235;38;5;160 # symlink to nonexistent file, or non-stat'able file
SETUID 48;5;160;38;5;230 # file that is setuid (u+s)
SETGID 48;5;136;38;5;230 # file that is setgid (g+s)
CAPABILITY 30;41 # file with capability
STICKY_OTHER_WRITABLE 48;5;64;38;5;230 # dir that is sticky and other-writable (+t,o+w)
OTHER_WRITABLE 48;5;235;38;5;33 # dir that is other-writable (o+w) and not sticky
STICKY 48;5;33;38;5;230 # dir with the sticky bit set (+t) and not other-writable
# This is for files with execute permission:
EXEC 01;38;5;64
# List any file extensions like '.gz' or '.tar' that you would like ls
# to colorize below. Put the extension, a space, and the color init string.
# (and any comments you want to add after a '#')
# If you use DOS-style suffixes, you may want to uncomment the following:
#.cmd 01;32 # executables (bright green)
#.exe 01;32
#.com 01;32
#.btm 01;32
#.bat 01;32
# Or if you want to colorize scripts even if they do not have the
# executable bit actually set.
#.sh 01;32
#.csh 01;32

 # archives or compressed (violet + bold for compression)
.tar    00;38;5;61
.tgz    01;38;5;61
.arj    01;38;5;61
.taz    01;38;5;61
.lzh    01;38;5;61
.lzma   01;38;5;61
.tlz    01;38;5;61
.txz    01;38;5;61
.zip    01;38;5;61
.z      01;38;5;61
.Z      01;38;5;61
.dz     01;38;5;61
.gz     01;38;5;61
.lz     01;38;5;61
.xz     01;38;5;61
.bz2    01;38;5;61
.bz     01;38;5;61
.tbz    01;38;5;61
.tbz2   01;38;5;61
.tz     01;38;5;61
.deb    01;38;5;61
.rpm    01;38;5;61
.jar    01;38;5;61
.rar    01;38;5;61
.ace    01;38;5;61
.zoo    01;38;5;61
.cpio   01;38;5;61
.7z     01;38;5;61
.rz     01;38;5;61
.apk    01;38;5;61

# image formats (yellow)
.jpg    00;38;5;136
.JPG    00;38;5;136 #stupid but needed
.jpeg   00;38;5;136
.gif    00;38;5;136
.bmp    00;38;5;136
.pbm    00;38;5;136
.pgm    00;38;5;136
.ppm    00;38;5;136
.tga    00;38;5;136
.xbm    00;38;5;136
.xpm    00;38;5;136
.tif    00;38;5;136
.tiff   00;38;5;136
.png    00;38;5;136
.svg    00;38;5;136
.svgz   00;38;5;136
.mng    00;38;5;136
.pcx    00;38;5;136
.dl     00;38;5;136
.xcf    00;38;5;136
.xwd    00;38;5;136
.yuv    00;38;5;136
.cgm    00;38;5;136
.emf    00;38;5;136
.eps    00;38;5;136

# files of interest (base1 + bold)
.pdf    01;38;5;245
.tex    01;38;5;245
.rdf    01;38;5;245
.owl    01;38;5;245
.n3     01;38;5;245
.tt     01;38;5;245
.nt     01;38;5;245

# "unimportant" files as logs and backups (base01)
.log    00;38;5;240
.bak    00;38;5;240
.aux    00;38;5;240
.bbl    00;38;5;240
.blg    00;38;5;240

# audio formats (orange)
.aac    00;38;5;166
.au     00;38;5;166
.flac   00;38;5;166
.mid    00;38;5;166
.midi   00;38;5;166
.mka    00;38;5;166
.mp3    00;38;5;166
.mpc    00;38;5;166
.ogg    00;38;5;166
.ra     00;38;5;166
.wav    00;38;5;166
# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions
.axa    00;38;5;166
.oga    00;38;5;166
.spx    00;38;5;166
.xspf   00;38;5;166

# video formats (as audio + bold)
.mov    01;38;5;166
.mpg    01;38;5;166
.mpeg   01;38;5;166
.m2v    01;38;5;166
.mkv    01;38;5;166
.ogm    01;38;5;166
.mp4    01;38;5;166
.m4v    01;38;5;166
.mp4v   01;38;5;166
.vob    01;38;5;166
.qt     01;38;5;166
.nuv    01;38;5;166
.wmv    01;38;5;166
.asf    01;38;5;166
.rm     01;38;5;166
.rmvb   01;38;5;166
.flc    01;38;5;166
.avi    01;38;5;166
.fli    01;38;5;166
.flv    01;38;5;166
.gl     01;38;5;166
# http://wiki.xiph.org/index.php/MIME_Types_and_File_Extensions
.axv 01;38;5;166
.anx 01;38;5;166
.ogv 01;38;5;166
.ogx 01;38;5;166

