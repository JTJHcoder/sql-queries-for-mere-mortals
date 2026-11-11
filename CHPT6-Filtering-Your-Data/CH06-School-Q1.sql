SELECT *
FROM Staff
WHERE StfStreetAddress LIKE '%Box%';

/*
% means any number of characters before. _ means only 1. ESCAPE can be use if we want literal val.
I guess Box here in address means you use post offic box as address.
*/