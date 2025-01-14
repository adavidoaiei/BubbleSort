program BubbleSort;

var
  a: array[1..100] of Integer;
  n, i, j, temp: Integer;

begin
  // Citirea numarului de elemente
  Write('Introduceti numarul de elemente: ');
  ReadLn(n);

  // Citirea elementelor array-ului
  WriteLn('Introduceti elementele array-ului:');
  for i := 1 to n do
    ReadLn(a[i]);

  // Algoritmul Bubble Sort
  for i := 1 to n - 1 do
    for j := 1 to n - i do
      if a[j] > a[j + 1] then
      begin
        temp := a[j];
        a[j] := a[j + 1];
        a[j + 1] := temp;
      end;

  // Afisarea array-ului sortat
  WriteLn('Array-ul sortat este:');
  for i := 1 to n do
    Write(a[i], ' ');
  WriteLn;
  readln;
end.
