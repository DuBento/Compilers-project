int *factorial(int n) {
  if n > 1 then factorial = n * factorial(n-1); else factorial = 1;
}

int *fir() -> 0
@ { int f = 5; }
{
  writeln 'Teste para a função factorial';
  writeln f, ' != ', factorial(f);
}
>> { writeln 'End of function!'; }