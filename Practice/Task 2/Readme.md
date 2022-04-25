# Task 2

## Missoin.
Mission: Реализовать следующие механизмы IPC в виде клиента и сервера (consumer/producer) средствами языка программирования C / Java / Python:

Переменные окружения Сигналы Каналы (именованные и неименованные) Сокеты (как минимум, начать). Результат выполнения программ должен быть зафиксирован на скриншоте.

### Building a project.

The Server and Client folders store program codes that can be compiled using a _makefile_ or manually using the _gcc compiler_. If you compile programs manually, then you need to go to the console to the folder with the necessary program code and call the compiler by writing `gcc name_file_programs.c -o name_result.out`, but it's better to use a makefile where everything is provided. To use the makefile to compile the chat, you must be in the Task 2 folder.

Makefile structure:
+ all
    + server
    + client
+ clear

As you can see from the structure, the makefile has 4 targets that can be called with the following commands:
+ `make` or `make all` - compiles all programs from the Server and Client folders.;
+ `make server` or `make client` - compile only programs located in this folder;
+ `make clear` - deletes executable files that have been compiled.

All compiled programs are located in the Task 2 folder. To run the program, you need to write `./server.out` and `./client.out` in the console. (You need to run two programs. The server starts first, the client starts second.) To run the program, you need to write in the console `./name.out`, where name is server or client.  

___
P.s. [The problem condition is taken from here](https://github.com/rtu-os/ktso-0x-20/tree/main/task02).