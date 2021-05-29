void *fill(<int> unsorted) {
  unsorted[0] = 83;
  unsorted[1] = 62;
  unsorted[2] = 81;
  unsorted[3] = 26;
  unsorted[4] = 39;
  unsorted[5] = 97;
  unsorted[6] = 59;
  unsorted[7] = 56;
  unsorted[8] = 86;
  unsorted[9] = 21;
}

void *swap(<int> unsorted, int a, int b) {
  int temp = unsorted[a];
  unsorted[a] = unsorted[b];
  unsorted[b] = temp;
}

void *sort(<int> unsorted) {
  int i = 0;
  while (i < 9) do {
    int smallIndex = i;
    int j = i + 1;

    while (j < 10) do {
      if (unsorted[j] < unsorted[smallIndex]) then
        smallIndex = j;
      j = j + 1;
    }

    swap(unsorted, i, smallIndex);
    i = i + 1;
  }
}

void *print(<int> sorted) {
  int i = 0;
  while (i < 10) do {
    writeln sorted[i];
    i = i + 1;
  }
}

int *fir() -> 0 @ {
  <int> unsorted = [10];
  fill(unsorted);
} 
{
  sort(unsorted);
}
>> {
  print(unsorted);
}