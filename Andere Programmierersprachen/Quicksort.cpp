#include <iostream>
#include <vector>
using namespace std;

// QuickSort-Algorithmus
void sort(vector<int>& arr, int start, int end);

// Hilfsmethode zum Vertauschen von zwei Array-Elementen
void swap(vector<int>& arr, int x, int y);

// Partitioniert das Array um das Pivot-Element
int partition(vector<int>& arr, int start, int end);

int main() {
    // Benutzer nach der Anzahl der Elemente im Array fragen
    cout << "Anzahl der Elemente im Array: ";
    int n;
    cin >> n;

    // Benutzer nach den Werten der Elemente im Array fragen
    cout << "Werte der Elemente im Array:" << endl;
    vector<int> arr(n);
    for (int i = 0; i < n; i++)
        cin >> arr[i];

    // Das unsortierte Array ausgeben
    cout << "Das unsortierte Array ist ";
    for (int i = 0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;

    // QuickSort aufrufen, um das Array zu sortieren
    sort(arr, 0, arr.size() - 1);

    // Das sortierte Array ausgeben
    cout << "Das sortierte Array ist ";
    for (int i = 0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;

    return 0;
}

void sort(vector<int>& arr, int start, int end) {
    if (start < end) {
        // Teile das Array und erhalte den Partitionierungsindex
        int pIndex = partition(arr, start, end);

        // Sortiere die linke Hälfte des Arrays (Elemente kleiner als das Pivot-Element)
        sort(arr, start, pIndex - 1);

        // Sortiere die rechte Hälfte des Arrays (Elemente größer als das Pivot-Element)
        sort(arr, pIndex + 1, end);
    }
}

int partition(vector<int>& arr, int start, int end) {
    // Das Pivot-Element auswählen (hier wird das letzte Element gewählt)
    int pivot = arr[end];

    // Initialer Partitionierungsindex
    int pIndex = start;

    // Elemente durchgehen und sie in die entsprechenden Hälften des Arrays verschieben
    for (int i = start; i < end; i++) {
        if (arr[i] <= pivot) {
            // Elemente kleiner oder gleich dem Pivot-Element werden nach links verschoben
            swap(arr, i, pIndex);
            pIndex++;
        }
    }

    // Das Pivot-Element an seine endgültige Position bringen
    swap(arr, pIndex, end);

    // Den endgültigen Partitionierungsindex zurückgeben
    return pIndex;
}

void swap(vector<int>& arr, int x, int y) {
    int temp = arr[x];
    arr[x] = arr[y];
    arr[y] = temp;
}