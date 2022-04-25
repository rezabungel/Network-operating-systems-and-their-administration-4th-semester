#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <stdbool.h>

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

#include <arpa/inet.h>

#define SERVER_IP "127.0.0.1"
#define DEFAULT_PORT 8888
#define BUFFER_SIZE 1024
#define ERROR_C "CLIENT ERROR:"
#define SERVER_CLOSE_CONNECTION_SYMBOL '#'

bool is_client_connection_close(const char *msg) //Проверяет переданное сообщение на наличие символа завершения.
{
    for (int i = 0; i < strlen(msg); i++)
    {
        if (msg[i] == SERVER_CLOSE_CONNECTION_SYMBOL)
        {
            return true;
        }
    }
    return false;
}

int main()
{
    int client;
    struct sockaddr_in server_address; //Переменная типа сокет_адрес, которая содержит информацию об адресе сервера.

    client = socket(AF_INET, SOCK_STREAM, 0); //Создание сокета для подключения к серверу.
    if (client < 0)
    {
        printf("%s establishing socket error.\n", ERROR_C);
        return -1;
    }

    server_address.sin_family = AF_INET;
    server_address.sin_port = htons(DEFAULT_PORT);
    inet_pton(AF_INET, SERVER_IP, &server_address.sin_addr);

    printf("\n=> Client socket created.\n");
    /* Первый аргумент - сокет-дескриптор клиента. Второй аргумент - указатель на адрес сервера (структура sockaddr) для соответствующего
    домена. Третий аргумент - целое число - длина структуры адреса. */
    int ret = connect(client, (struct sockaddr *)&server_address, sizeof(server_address)); //Подключение клиента к серверу.
    if (ret == 0)
    {
        printf("=> Connection to server %s with port number %d\n", inet_ntoa(server_address.sin_addr), DEFAULT_PORT);
    }
    else
    {
        printf("%s failed connection to server.\n", ERROR_C);
        return 1;
    }

    char buffer[BUFFER_SIZE]; //Используется для хранения сообщений (которые приходят и которые будут отправлены).
    printf("=> Waiting for server confirmation...\n");
    /* 1 аргумент - сокет, который хранит соединение с сервером, от которого должно прийти сообщение; 2 и 3 аргумент - соответственно, адрес
    и длина буфера для записи читаемых данных; 4 аргумент - это комбинация битовых флагов, управляющих режимами чтения. */
    recv(client, buffer, BUFFER_SIZE, 0); //Принимаем сообщение от сервера.
    printf("%s\n", buffer);               //Выводим на экран полученное сообщение.
    printf("=> Connection established. Enter %c to end the connection.\n\n", SERVER_CLOSE_CONNECTION_SYMBOL);

    while (true)
    {
        printf("Client: ");
        fgets(buffer, BUFFER_SIZE, stdin); //Считываем информацию, которую отправим серверу.

        /* Удаляем символ конца строки */
        size_t last = strlen(buffer) - 1;
        if (buffer[last] == '\n')
        {
            buffer[last] = '\0';
        }
        /* Закончили удаление символа конца строки. */

        send(client, buffer, BUFFER_SIZE, 0);           //Отправляем сообщение серверу.
        if (is_client_connection_close(buffer) == true) //Проверяем отправленное сообщение на наличие символа завершения.
        {
            break;
        }

        printf("Server: ");
        recv(client, buffer, BUFFER_SIZE, 0);           //Принимаем сообщение от сервера.
        printf("%s\n", buffer);                         //Выводим на экран полученное сообщение.
        if (is_client_connection_close(buffer) == true) //Проверяем полученное сообщение на наличие символа завершения.
        {
            break;
        }
    }

    /* Аргумент - закрываемый сокет-дескриптор. (Эта функция закрывает сокет и разрывает все соединения с этим сокетом. В отличие
    от функции "shutdown" функция "close" может дожидаться окончания всех операций с сокетом, обеспечивая "нормальное", а не аварийное закрытие соединений). */
    close(client);

    printf("\nGoodBye...\n");
    return 0;
}