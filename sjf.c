#include <stdio.h>

int main() {
    int n, i, j, total = 0, index, temp;
    float avg_wt, avg_tat;

    // Matrix to store Process ID, Burst Time, Waiting Time, and Turnaround Time
    int A[100][4];

    // Input number of processes
    printf("Enter number of processes: ");
    scanf("%d", &n);

    // Input burst times and assign process IDs
    printf("Enter Burst Time for each process:\n");
    for (i = 0; i < n; i++) {
        printf("P%d: ", i + 1);
        scanf("%d", &A[i][1]);
        A[i][0] = i + 1; // Process ID
    }

    // Sorting processes by Burst Time (SJF scheduling)
    for (i = 0; i < n; i++) {
        index = i;
        for (j = i + 1; j < n; j++) {
            if (A[j][1] < A[index][1]) {
                index = j;
            }
        }
        // Swap Burst Time
        temp = A[i][1];
        A[i][1] = A[index][1];
        A[index][1] = temp;

        // Swap Process ID
        temp = A[i][0];
        A[i][0] = A[index][0];
        A[index][0] = temp;
    }

    // Initialize the Waiting Time of the first process
    A[0][2] = 0;

    // Calculate Waiting Times
    for (i = 1; i < n; i++) {
        A[i][2] = 0;
        for (j = 0; j < i; j++) {
            A[i][2] += A[j][1];
        }
        total += A[i][2];
    }

    avg_wt = (float)total / n;
    total = 0;

    // Display process details and calculate Turnaround Times
    printf("\nP\tBT\tWT\tTAT\n");
    for (i = 0; i < n; i++) {
        A[i][3] = A[i][1] + A[i][2]; // TAT = BT + WT
        total += A[i][3];
        printf("P%d\t%d\t%d\t%d\n", A[i][0], A[i][1], A[i][2], A[i][3]);
    }

    avg_tat = (float)total / n;

    // Display average times
    printf("\nAverage Waiting Time = %.2f\n", avg_wt);
    printf("Average Turnaround Time = %.2f\n", avg_tat);

    return 0;
}
