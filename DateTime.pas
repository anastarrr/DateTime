//unit DateTime;

function IsLeapYear(): boolean;
begin
  var y := DateTime.Now.Year;
  result := ((y mod 4 = 0) and (y mod 100 <> 0)) or (y mod 400 = 0)
end;

function SecondsInMinute(): integer;
begin
result := 60;
end;

begin

end. 