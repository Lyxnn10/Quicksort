def quicksort(arr, start, end):
    if start < end:
        # Teile das Array und erhalte den Partitionierungsindex
        pIndex = partition(arr, start, end)
        
        # Sortiere die linke Hälfte des Arrays (Elemente kleiner als das Pivot-Element)
        quicksort(arr, start, pIndex - 1)
        
        # Sortiere die rechte Hälfte des Arrays (Elemente größer als das Pivot-Element)
        quicksort(arr, pIndex + 1, end)


def partition(arr, start, end):
    # Das Pivot-Element auswählen (hier wird das letzte Element gewählt)
    pivot = arr[end]
    
    # Initialer Partitionierungsindex
    pIndex = start
    
    # Elemente durchgehen und sie in die entsprechenden Hälften des Arrays verschieben
    for i in range(start, end):
        if arr[i] <= pivot:
            # Elemente kleiner oder gleich dem Pivot-Element werden nach links verschoben
            arr[i], arr[pIndex] = arr[pIndex], arr[i]
            pIndex += 1
    
    # Das Pivot-Element an seine endgültige Position bringen
    arr[pIndex], arr[end] = arr[end], arr[pIndex]
    
    # Den endgültigen Partitionierungsindex zurückgeben
    return pIndex


# Benutzer nach der Anzahl der Elemente im Array fragen
n = int(input("Anzahl der Elemente im Array: "))

# Benutzer nach den Werten der Elemente im Array fragen
arr_input = input("Werte der Elemente im Array: ")
arr = list(map(int, arr_input.split()))

# Das unsortierte Array ausgeben
print("Das unsortierte Array ist", arr)

# QuickSort aufrufen, um das Array zu sortieren
quicksort(arr, 0, len(arr) - 1)

# Das sortierte Array ausgeben
print("Das sortierte Array ist", arr)