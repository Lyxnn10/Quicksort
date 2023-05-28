import java.util.Arrays;
import java.util.Scanner;

class QuickSort {
	private static Scanner sc;

	public static void main(String args[]) {
		sc = new Scanner(System.in);

		// Benutzer nach der Anzahl der Elemente im Array fragen
		System.out.println("Anzahl der Elemente im Array:");
		int n = sc.nextInt();
		
		// Benutzer nach den Werten der Elemente im Array fragen
		System.out.println("Werte der Elemente im Array:");
		int arr[] = new int[n];
		for (int i = 0; i < n; i++)
			arr[i] = sc.nextInt();
		
		// Das unsortierte Array ausgeben
		System.out.println("Das unsortierte Array ist " + Arrays.toString(arr));

		// QuickSort aufrufen, um das Array zu sortieren
		sort(arr, 0, arr.length - 1);
		
		// Das sortierte Array ausgeben
		System.out.println("Das sortierte Array ist " + Arrays.toString(arr));
	}

	// QuickSort-Algorithmus
	static void sort(int arr[], int start, int end) {
		if (start < end) {
			// Teile das Array und erhalte den Partitionierungsindex
			int pIndex = partition(arr, start, end);
			
			// Sortiere die linke Hälfte des Arrays (Elemente kleiner als das Pivot-Element)
			sort(arr, start, pIndex - 1);
			
			// Sortiere die rechte Hälfte des Arrays (Elemente größer als das Pivot-Element)
			sort(arr, pIndex + 1, end);
		}
	}

	// Partitioniert das Array um das Pivot-Element
	static int partition(int arr[], int start, int end) {
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

	// Hilfsmethode zum Vertauschen von zwei Array-Elementen
	static void swap(int arr[], int x, int y) {
		int temp = arr[x];
		arr[x] = arr[y];
		arr[y] = temp;
	}
}
