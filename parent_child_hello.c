#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();
    
    if (pid > 0) {
        // Parent process
        printf("Hello from parent in parent process\n");
    } else if (pid == 0) {
        // Child process
        printf("Hello from child in child process\n");
    } else {
        // Fork failed
        printf("Fork failed\n");
    }
    
    return 0;
}
