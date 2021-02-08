DROP PROCEDURE GetAllUsers;

DELIMITER //

CREATE PROCEDURE GetAllUsers()

BEGIN
	Select id, username, firstname, lastname, 
			phone, email, isReviewer, isAdmin
		from Users;
END//

DELIMITER ;

CALL GetAllUsers();