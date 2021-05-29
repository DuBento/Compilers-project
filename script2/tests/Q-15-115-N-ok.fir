int *fir() -> 0 @ {
  int i = 0;
  writeln i; !! line 3 print 0
}
{
  int i = 1; 
  writeln i; !! line 6 print 1
  if (3 < 2 || 5%3 == 0 || 3/2 == 1.5) then {
    i = 2; !! should not enter here
  } else {
    i = 3;
  }
  writeln i; !! line 13 print 3
}
>> {
  int i = 4;
  writeln i; !! line 18 print 4
}
