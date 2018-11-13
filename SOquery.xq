declare namespace xs = "http://www.w3.org/2001/XMLSchema";
declare variable $threshold as xs:integer external; //(threshold=$1 en bash

for $row in doc("Users.xml")/users
where $row/@Reputation > $threshold
order by $row/@Reputation descending
