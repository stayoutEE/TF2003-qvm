@echo off



set CC=lcc

set Q3ASM=q3asm

set CFLAGS=-DQ3_VM -S -Wf-target=bytecode -Wf-g

set INCFLAGS=-I..\include

set SRC=..\src



rem make sure we have a safe environement

set LIBRARY=

set INCLUDE=



mkdir VM

cd VM



%CC% %CFLAGS% %INCFLAGS% %SRC%\actions.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\admin.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\bg_lib.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\buttons.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\clan.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\client.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\combat.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\coop.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\ctf.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\debug.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\demoman.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\doors.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\engineer.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\flare.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\g_cmd.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\g_main.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\g_mem.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\g_spawn.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\g_tf_utils.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\g_utils.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\hook.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\items.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\mathlib.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\menu.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\misc.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\plats.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\player.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\pyro.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\q_shared.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\scout.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\sentry.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\server.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\sniper.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\spectate.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\spy.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\status.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\subs.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\tfort.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\tforthlp.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\tfortmap.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\tforttm.c

@if errorlevel 1 goto quit


%CC% %CFLAGS% %INCFLAGS% %SRC%\triggers.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\tsoldier.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\weapons.c

@if errorlevel 1 goto quit

%CC% %CFLAGS% %INCFLAGS% %SRC%\world.c

@if errorlevel 1 goto quit

copy %SRC%\g_syscalls.asm .

@if errorlevel 1 goto quit



%Q3ASM% -f %SRC%\game



:quit



cd ..
