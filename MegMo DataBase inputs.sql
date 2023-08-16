/*INSERT Users (UserName, [Password], FirstName, LastName, Phone, Email,IsReviewer, IsAdmin)
    VALUES ('MegMoore', 'hockey2', 'Megan', 'Moore', Null, 'donner09@gmail.com', 1, 0),
    ('PreacherMan', 'Bmaeie!', 'Brandon', 'Moore', null, 'hockeyfan@gmail.com', 0, 0);*/

   --SELECT * FROM Users

INSERT Requests (DESCRIPTION, Justification, RejectionReason, DeliveryMode, Status, Total, UserId)
    VALUES ('info', 'because', null, 'truck', 'active', 20.00, 2),
    ('key', 'why not', null, 'plane', 'inactive', 45.23, 3);


INSERT Products (PartNbr, Name, Price, Unit, PhotoPath, VendorId)
    VALUES (12, 'specops', 43.29, 'b12', null, 3),
    (12, 'specops', 43.29, null, 'c9', 3);

