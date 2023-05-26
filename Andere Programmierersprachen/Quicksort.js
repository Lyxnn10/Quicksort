const readline = require('readline');

function quickSort(arr, start, end) {
    if (start < end) {
        let pIndex = partition(arr, start, end);
        quickSort(arr, start, pIndex - 1);
        quickSort(arr, pIndex + 1, end);
    }
}

function partition(arr, start, end) {
    let pivot = arr[end];
    let pIndex = start;

    for (let i = start; i < end; i++) {
        if (arr[i] <= pivot) {
            swap(arr, i, pIndex);
            pIndex++;
        }
    }

    swap(arr, pIndex, end);

    return pIndex;
}

function swap(arr, x, y) {
    let temp = arr[x];
    arr[x] = arr[y];
    arr[y] = temp;
}

function main() {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    rl.question("Anzahl der Elemente im Array: ", (n) => {
        let arr = [];

        rl.question("Werte der Elemente im Array (mit Leerzeichen getrennt): ", (values) => {
            arr = values.split(' ').map(Number);
            console.log("Das unsortierte Array ist " + arr);

            quickSort(arr, 0, arr.length - 1);

            console.log("Das sortierte Array ist " + arr);

            rl.close();
        });
    });
}

main();