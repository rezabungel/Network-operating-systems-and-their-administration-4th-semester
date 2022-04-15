# Network-operating-systems-and-their-administration-4th-semester

___
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

___
### <a name="Practice">Practice.</a>
Small scripts are stored in this folder. In order to run the script, you need to write `bash name_scipts`.

___
### <a name="Lecture">Lecture.</a>
#### <a name="Building_a_project">Building a project.</a>
The lecture folder stores program codes that can be compiled using a _makefile_ or manually using the _gcc compiler_. If you compile programs manually, then you need to go to the console to the folder with the necessary program code and call the compiler by writing `gcc name_file_programs.c -o name_result.out`, but it's better to use the makefile, where everything is provided. To use the makefile, you need to be in the root folder of the repository.

Makefile structure.
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
+ `make Program№` - where №1 to 6 compiles only the specified program;
+ `make clear` - deletes executable files that have been compiled.

All compiled programs are located in the folder where their code is stored. To run the program, you need to write in the console `./Program№.out` where № is the number of the program being run.

#### <a name="What_programs_do_and_the_output_of_the_result_of_their_work">What programs do and the output of the result of their work.</a>
___
<a name="Program_№1">__Program №1__</a>  
Example of a dynamic memory allocation program for an array.  
What happens in this program?(???)  

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
<a name="Program_№2">__Program №2__</a>  
Example of a program for reading data from a file.  
What happens in this program?(???)  

Test  
```
fd = 3  
called read( 3, c, 10). returned that 0 bytes were read.  
closed the fd.  
```
___
<a name="Program_№3">__Program №3__</a>  
Creating a process. fork() system call.  
What happens in this program?(???)  

Test  
```
my pid = 3441, returned pid = 3442  
my pid = 3442, returned pid = 0  
```
___
<a name="Program_№4">__Program №4__</a>  
Signals. Example of the program.  
What happens in this program?(???)  

Test  
```
counter = 1  
counter = 3  
counter = 5  
```
___
<a name="Program_№5">__Program №5__</a>  
Unnamed channels. Example.  
What happens in this program?(???)  

Test  
```
$ ./a.out what_s_up_man?  
what_s_up_man?  
```
___
<a name="Program_№6">__Program №6__</a>  
Named channels. Example.  
What happens in this program?(???)  

Test  
```
my_named_pipe is created  
$ echo Hello_world! > my_named_pipe  
my_named_pipe is opened  
Incomming message (13): Hello_world!  
  
read error: Success  
```
The command "$ echo Hello_world! > my_named_pipe" must be entered in a new console window.  