# Quicksort Informatik EF Fbg

Ein Quicksort Programm in Java für den Informatik Unterricht (Fbg)

## Quicksort Pseudocode

```
funktion quicksort(links, rechts)
  if links < rechts
    t = teilen(links, rechts)  // Teile die Liste in zwei Hälften um ein Pivot-Element zu finden
    quicksort(links, t)       // Sortiere die linke Hälfte der Liste
    quicksort(t + 1, rechts)   // Sortiere die rechte Hälfte der Liste
  end
end

funktion teilen(links, rechts)
  n = links - 1   // Index für Elemente, die kleiner als das Pivot-Element sind
  m = rechts + 1  // Index für Elemente, die größer als das Pivot-Element sind
  
  pivot = Liste[(links + rechts) / 2]  // Wähle das Pivot-Element aus der Liste

  while Liste[n] < pivot  // Ordne Elemente, die kleiner als das Pivot-Element sind, links ein
    n++ 
    
  while Liste[m] > pivot  // Ordne Elemente, die größer als das Pivot-Element sind, rechts ein
    m++
    
  if n < m
    int a = Liste[n]    // Tausche die Elemente an den Positionen n und m
    Liste[n] = Liste[m]
    Liste[m] = a
  else return m         // Gib die Position des Pivot-Elements zurück
  ```


## Quicksort Laufzeit

Die Quicksort-Laufzeit beträgt im:
  

Worst-Case: $O(n^2)$   

Average-Case: $O(n \cdot log⁡(n))$   

Best-Case: $O(n \cdot log⁡(n))$   
 <br>
Der Worst-Case wäre der Fall, wenn beispielsweise das Pivotelement immer das letzte Element ist und die Liste eigentlich schon sortiert ist. Im Allgemeinen ist das Eintreffen des Worst-Case also abhängig von dem Ansatz der Wahl des Pivotelements und kann entsprechend unterschiedlich groß sein. Dabei würden die Teillisten immer nur um eins kleiner werden. Das kommt aber in der Praxis ziemlich selten vor.
  
 <br>
Im Best-Case ist die Laufzeit genau wie im Durchschnitt. Man geht dabei von dem Fall aus, dass man das Pivotelement so wählt, dass die Teillisten immer möglichst gleich groß sind. Die Länge der größeren Teilliste ist dabei im Schnitt: 

\$$\frac{2}{n} \sum_{i=\frac{n}{2}}^{n-1}i=\frac{3}{4}n-\frac{3}{2}\$$

und die Tiefe damit \$O(log⁡(n))\$. 
<br>
Aufgrund seiner Komplexität gehört der Quicksort in der Praxis tatsächlich zu den beliebtesten Sortieralgorithmen. Er ist zum einen schnell und man kann davon ausgehen, dass der Worst-Case so gut wie nie auftritt. Zusätzlich ist die Implementierung, sollten wir eine Rekursion zur Verfügung haben, ziemlich einfach.

## Speicherplatzkomplexität
Der Quicksort gilt allgemein als In-Place-Verfahren, da dabei die zu Sortierenden Elemente innerhalb der Liste vertauscht werden und kein zusätzlicher Speicherplatz benötigt wird. Der Speicherverbrauch ist vom Pivot-Element und der Art der vorhandenen Daten abhängig. Die Stapelgröße beträgt im:
  
Worst-Case: $O(n)$   

Average-Case: $O(log⁡(n))$

![Alt-Text](/img/quicksort.png)
