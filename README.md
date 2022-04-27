# Network-operating-systems-and-their-administration-4th-semester

## About the repository.
The repository consists of two parts: Lecture and Practice.  

Content
+ [Practice](#Practice)
+ [Lecture](#Lecture)
    + [Building a project](#Building_a_project)
    + [What programs do and the output of the result of their work](#What_programs_do_and_the_output_of_the_result_of_their_work)
        + [Program №1](#Program_№1)
        + [Program №2](#Program_№2)
        + [Program №3](#Program_№3)
        + [Program №4](#Program_№4)
        + [Program №5](#Program_№5)
        + [Program №6](#Program_№6)

Operating system for building the project:
+ GNU/Linux - yes;
+ Windows - no data;
+ Mac OS - no data.

## <a name="Practice">Practice.</a>
Small scripts and completed tasks are stored in this folder. In order to run the script, you need to write `bash name_scipts`.  
Task 1 - implement 30 bash scripts that perform what is shown in the screenshot. Go to [Task 1](./Practice/Task%201).  
Task 3 - implement a chat using sockets... Go to [Task 3](./Practice/Task%203/).  

## <a name="Lecture">Lecture.</a>
### <a name="Building_a_project">Building a project.</a>
The lecture folder stores program codes that can be compiled using a _makefile_ or manually using the _gcc compiler_. If you compile programs manually, then you need to go to the console to the folder with the necessary program code and call the compiler by writing `gcc name_file_programs.c -o name_result.out`, but it's better to use the makefile, where everything is provided. To use the makefile, you need to be in the root folder of the repository.

Makefile structure:
+ all
    + Lec2_3
        + Program1
        + Program2
        + Program3
    + Lec4
        + Program4
        + Program5
        + Program6
+ clear

As you can see from the structure, the makefile has 10 targets that can be called with the following commands:
+ `make` or `make all` - compiles all programs from the Lectures folder;
+ `make Lec2_3` or `make Lec4` - compile only programs located in this folder;
+ `make Program№` - where №1-6 compiles only the specified program;
+ `make clear` - deletes executable files that have been compiled.

All compiled programs are located in the folder where their code is stored. To run the program, you need to write in the console `./Program№.out` where № is the number of the program being run.

### <a name="What_programs_do_and_the_output_of_the_result_of_their_work">What programs do and the output of the result of their work.</a>
___
#### <a name="Program_№1">Program №1</a>  
Example of a dynamic memory allocation program for an array.  
What happens in this program? -> В начале запрашиваем длину массива. Затем выделяем память для него с помощью функции malloc. При выделении памяти возвращается указатель, который будет равен NULL, если память не выделилась. В конце, если массив был инициализирован, то освобождаем выделенную память.  

Test 1  
```
Enter length of array: 1  
Allocated 4 bytes  
```
Test 2
```
Enter length of array: 10  
Allocated 40 bytes  
```
Test 3
```
Enter length of array: -10  
Error: can't allocate memory: Not enough space  
```
___ 
#### <a name="Program_№2">Program №2</a>  
Example of a program for reading data from a file.  
What happens in this program? -> В начале выделяем память для массива чаров с помощью функции calloc. Затем создаем дескриптор и открываем файл для чтения, если файла не будет, то он будет создан. Выводим значение дескриптора файла. После читаем из файла 10 байт, и записываем в переменную sz количество байт, которое удалось прочитать. Далее обязательно записываем в конец массива, в который записывали прочитанную информацию, символ конца строки (терминальный ноль). В конце программы закрываем файл.  

Test  
```
fd = 3  
called read( 3, c, 10). returned that 0 bytes were read.  
closed the fd.  
```
___
#### <a name="Program_№3">Program №3</a>  
Creating a process. fork() system call.  
What happens in this program? -> В начале мы вызываем функцию fork. В результате вызова функции у процесса появляется один ребёнок. (Если бы мы вызвали функцию fork еще раз, то появилось бы два ребёнка... каждое последующее применение функции увеличивает количество детей в два раза). Далее при помощи оператора switch-case мы узнаем в каком процессе мы находимся.  

Test  
```
my pid = 3441, returned pid = 3442  
my pid = 3442, returned pid = 0  
```
___
#### <a name="Program_№4">Program №4</a>  
Signals. Example of the program.  
What happens in this program? -> handle1 и handle2 - две обрабатывающие функции, которые принимают на вход наш сигнал с целочисленным типом данных. Функция handle1 увеличивает глобальную переменную counter(счетчик) на 1 и отправляет наш сигнал дочернему. В main происходит обработка пользовательского сигнала. В начале первую функцию обработки привязываем к текущему процессу. Далее если мы окажемся ребёнком, то сигнал обрабатывать будет вторая функция. (Также, если мы окажемся ребёнком, то  сигнал будет отправлен родителю).  

Test  
```
counter = 1  
counter = 3  
counter = 5  
```
___
#### <a name="Program_№5">Program №5</a>  
Unnamed channels. Example.  
What happens in this program? -> У нас есть два дескриптора, которые при помощи функции pipe мы записываем с обработкой ошибки. Затем вызываем функцию fork для получения идентификатора дочернего процесса. Если этот идентификатор равен 0, то это значит, что мы потомок. В один дескриптор мы будет писать, а в другом принимать информацию. То есть мы передаем сообщение между процессами по средствам каналов.  

Test  
```
$ ./a.out what_s_up_man?  
what_s_up_man?  
```
___
#### <a name="Program_№6">Program №6</a>  
Named channels. Example.  
What happens in this program? -> В начале мы создаём дескриптор канала и канал с правами доступа для всех. Затем выполняется проверка. После запускается бесконечный цикл, для прослушивания этого канала. Когда в этот канал попадет какое-то сообщение, то будет выведено количество символов (+1 на терминальный ноль)  в этом сообщении и само сообщение.  

Test  
```
my_named_pipe is created  
$ echo Hello_world! > my_named_pipe  
my_named_pipe is opened  
Incomming message (13): Hello_world!  
  
read error: Success  
```
The command "$ echo Hello_world! > my_named_pipe" must be entered in a new console window.  