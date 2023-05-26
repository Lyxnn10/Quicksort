<h1>Quicksort Informatik EF Fbg</h1>

Ein Quicksort Progreamm in Java für den Informatik Unterricht (Fbg)

<h1>Quicksort Laufzeit</h1>

Die Quicksort-Laufzeit beträgt im:

Worst-Case: O(n^2)
Average-Case: O(n \cdot log⁡(n))
Best-Case: O(n \cdot log⁡(n))
Der Worst-Case wäre der Fall, wenn beispielsweise das Pivotelement immer das letzte Element ist und die Liste eigentlich schon sortiert ist. Im Allgemeinen ist das Eintreffen des Worst-Case also abhängig von dem Ansatz der Wahl des Pivotelements und kann entsprechend unterschiedlich groß sein. Dabei würden die Teillisten immer nur um eins kleiner werden. Das kommt aber in der Praxis ziemlich selten vor.

Im Best-Case ist die Laufzeit genau wie im Durchschnitt. Man geht dabei von dem Fall aus, dass man das Pivotelement so wählt, dass die Teillisten immer möglichst gleich groß sind. Die Länge der größeren Teilliste ist dabei im Schnitt \frac{2}{n} \sum_{i=\frac{n}{2}}^{n-1}i=\frac{3}{4}n-\frac{3}{2} und die Tiefe damit O(log⁡(n)).

Aufgrund seiner Komplexität gehört der Quicksort in der Praxis tatsächlich zu den beliebtesten Sortieralgorithmen. Er ist zum einen schnell und man kann davon ausgehen, dass der Worst-Case so gut wie nie auftritt. Zusätzlich ist die Implementierung, sollten wir eine Rekursion zur Verfügung haben, ziemlich einfach.

<h1>Speicherplatzkomplexität</h1>
Der Quicksort gilt allgemein als In-Place-Verfahren, da dabei die zu Sortierenden Elemente innerhalb der Liste vertauscht werden und kein zusätzlicher Speicherplatz benötigt wird. Der Speicherverbrauch ist vom Pivot-Element und der Art der vorhandenen Daten abhängig. Die Stapelgröße beträgt im:

Worst-Case: O(n)
Average-Case: O(log⁡(n))



![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=java&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
