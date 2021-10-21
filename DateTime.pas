//unit DateTime;

function IsLeapYear(): boolean;
begin
  var y := DateTime.Now.Year;
  result := ((y mod 4 = 0) and (y mod 100 <> 0)) or (y mod 400 = 0)
end;

function LaterInYear(day1, day2: system.DateTime): system.DateTime;
begin
  if day1.Month > day2.Month then
    result := day1
  else if day2.Month > day1.Month then
    result := day2
  else 
  begin
    if day1.Day > day2.Day then
      result := day1
    else if day2.Day > day1.Day then
      result := day2
    else result := day1;
  end;
end;

begin
  
end. 