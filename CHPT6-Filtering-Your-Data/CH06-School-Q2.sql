SELECT *
FROM Students
WHERE StudState NOT IN ('OR', 'WA');

/*
According to google OR and WA are Pacific Northwest. We want everything other than that.

*/ 