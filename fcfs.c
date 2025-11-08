#include <stdio.h>

int main() {
    int n, i;
    float total_waiting_time = 0, total_turnaround_time = 0;

    // Input the number of processes
    printf("Enter the number of processes: ");
    scanf("%d", &n);

    int processes[n], burst_time[n], waiting_time[n], turnaround_time[n];

    // Input burst time for each process
    printf("Enter the burst time for each process:\n");
    for (i = 0; i < n; i++) {
        printf("Process P%d: ", i + 1);
        scanf("%d", &burst_time[i]);
        processes[i] = i + 1; // Process ID
    }

    // Calculate waiting time
    waiting_time[0] = 0; // First process has no waiting time
    for (i = 1; i < n; i++) {
        waiting_time[i] = waiting_time[i - 1] + burst_time[i - 1];
    }

    // Calculate turnaround time
    for (i = 0; i < n; i++) {
        turnaround_time[i] = waiting_time[i] + burst_time[i];
    }

    // Display results
    printf("\nProcess\tBurst Time\tWaiting Time\tTurnaround Time\n");
    for (i = 0; i < n; i++) {
        printf("P%d\t%d\t\t%d\t\t%d\n", processes[i], burst_time[i], waiting_time[i], turnaround_time[i]);
        total_waiting_time += waiting_time[i];
        total_turnaround_time += turnaround_time[i];
    }

    // Calculate and display averages
    printf("\nAverage Waiting Time: %.2f", total_waiting_time / n);
    printf("\nAverage Turnaround Time: %.2f\n", total_turnaround_time / n);

    return 0;
}
