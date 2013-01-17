#! /usr/bin/lua

MINS = 60
HOURS = 3600
DAYS = 86400

dtimes = 
{ 
    0, 
    1, 
   10, 
   30, 
    1*MINS, 
    2*MINS, 
    5*MINS, 
   10*MINS, 
   15*MINS,
   30*MINS, 
    1*HOURS, 
    2*HOURS, 
    6*HOURS, 
   12*HOURS, 
    1*DAYS, 
    2*DAYS,
    7*DAYS,
}

dpressures = 
{
      0,
      1,
      2,
      5,
     10,
     20,
     50,
    100,
    200,
    500,
   1000,
   2000,
   5000,
  10000,
}


for _, dt in ipairs(dtimes) do
   for _, dp in ipairs(dpressures) do
      print(dt/MINS, dp, dp/(dt/HOURS))
   end
end


-- Pressure is measured in Pa
-- Device is accurate to about 20 Pa
-- Filter ensure that noise of ~50 Pa does does not change 100 Pa
-- After 5 minutes, a change of 100 Pa gives a change of 1.2 mb (hPa) per hour.
-- Therfore, only update the disply every 5 or 10 minutes

