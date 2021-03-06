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

function DaysInYear(year: integer): integer;
begin
  assert(year > 0, 'year > 0');
  var y1 := DateTime.Create(year, 1, 1);
  var y2 := DateTime.Create(year + 1, 1, 1);
  result := (y2 - y1).Days;
end;

function DaysInYearRange(year1, year2: integer): integer;
begin
  assert(year1 > 0, 'year1 > 0');
  assert(year2 > 0, 'year2 > 0');
  var y1 := DateTime.Create(year1, 1, 1);
  var y2 := DateTime.Create(year2 + 1, 1, 1);
  result := abs((y2 - y1).Days);
end;

function SecondsInHours(hours: integer): integer;
begin
  result := hours * 3600;
end;

begin
  assert(DaysInYearRange(2021,2024) = 1461);
  assert(DaysInYearRange(2021,2023) = 1095);
  assert(DaysInYear(2021) = 365);
  assert(DaysInYear(2020) = 366);
  assert(SecondsInHours(1) = 3600);
  assert(SecondsInHours(2) = 7200);
end. 