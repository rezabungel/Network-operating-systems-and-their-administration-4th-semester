# Task 3

## Missoin.
Mission: Реализовать клиент-серверное приложение, в котором клиент аргументами командной строки получает ip адрес, порт и команду bash, которую должен выполнить сервер. Сервер получает строку с командой выполняет ее и возвращает результат выполнения клиенту. Клиент получает результат и прекращает работу. При получении сервером команды `exit` от клиента, его работа завершается. При обмене, оборачивать информацию в контейнер вида:
```
+-------------------+
| command | payload |
+-------------------+
```
Пример запросов с клиента: `exit | NULL`, `execute | ls -la \`, `execute | whoami`.  
Пример ответов от сервера: `reponse | OK`, `response | .`, `response | fizzbuzz`.  

Дизайн контейнера -- на усмотрение исполнителя.

### Building a project.

The Server and Client folders store program codes that can be compiled using a _makefile_ or manually using the _gcc compiler_. If you compile programs manually, then you need to go to the console to the folder with the necessary program code and call the compiler by writing `gcc name_file_programs.c -o name_result.out`, but it's better to use a makefile where everything is provided. To use the makefile to compile the client-server application, you must be in the Task 3 folder.

Makefile structure:
+ all
    + server
    + client
+ clear

As you can see from the structure, the makefile has 4 targets that can be called with the following commands:
+ `make` or `make all` - compiles all programs from the Server and Client folders.;
+ `make server` or `make client` - compile only programs located in this folder;
+ `make clear` - deletes executable files that have been compiled.

All compiled programs are located in the Task 3 folder. To run the program, you need to write `./server.out` and `./client.out` in the console. (You need to run two programs. The server starts first, the client starts second.)  

___
P.s. [The problem condition is taken from here](https://github.com/rtu-os/ktso-0x-20/tree/main/task03). (There are also links to useful materials here).