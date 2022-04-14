all: Lec2_3 Lec4

Lec2_3: Program1 Program2 Program3

Lec4: Program4 Program5 Program6

Program1:
	gcc 'Lecture/Lec2_3/Program1/1 - Example of a dynamic memory allocation program for an array.c' -o 'Lecture/Lec2_3/Program1/Program1.out'

Program2:
	gcc 'Lecture/Lec2_3/Program2/2 - Example of a program for reading data from a file.c' -o 'Lecture/Lec2_3/Program2/Program2.out'

Program3:
	gcc 'Lecture/Lec2_3/Program3/3 - Creating a process. fork() system call.c' -o 'Lecture/Lec2_3/Program3/Program3.out'

Program4:
	gcc 'Lecture/Lec4/Program4/4 - Signals. Example of the program.c' -o 'Lecture/Lec4/Program4/Program4.out'

Program5:
	gcc 'Lecture/Lec4/Program5/5 - Unnamed channels. Example.c' -o 'Lecture/Lec4/Program5/Program5.out'

Program6:
	gcc 'Lecture/Lec4/Program6/6 - Named channels. Example.c' -o 'Lecture/Lec4/Program6/Program6.out'

clear:
	rm -rf Lecture/Lec*/Program?/*.out