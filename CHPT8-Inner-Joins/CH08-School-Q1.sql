SELECT Buildings.BuildingName, Class_Rooms.ClassRoomID, Class_Rooms.Capacity
FROM Buildings
INNER JOIN Class_Rooms
    ON Buildings.BuildingCode = Class_Rooms.BuildingCode;

/* 
Each buidling has different classroom ID each with different capacity.
/*