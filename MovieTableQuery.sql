

select *
from movie;

select movieyear, movietitle
from movie
where movieTitle = "American Beauty";

select *
from movie
where movieYear = "1999";

select *
from movie
where movieYear < "1998";

select *
from movie
where movieYear = "1999";

Select RevName,MovieTitle as Names
from Reviewer,movie;

select *
from rating
where RevStars >= "7";

select *
from rating
where NumOfRating is null;

select *
from movie
where MovieId;