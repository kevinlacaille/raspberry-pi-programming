select concat('Time since last espresso: ',
extract(hour from (now()::timestamp - timenow::timestamp)), 'h ', 
extract(minute from (now()::timestamp - timenow::timestamp)), 'm ', 
substring(text(extract(second from (now()::timestamp - timenow::timestamp))), 1, position('.' in text(extract(second from (now()::timestamp - timenow::timestamp))))-1), 's'
)
from consumption
ORDER BY timenow DESC