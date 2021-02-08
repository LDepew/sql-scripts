-- DROP PROCEDURE AddUser();

DELIMITER //

CREATE PROCEDURE AddUser(IN uname varchar(30),
	IN Pword varchar(30), IN fname varchar(30),
	IN lname varchar(30))
    
    BEGIN
		INSERT into Users (username, password, firstname, lastname,
			isReviewer, isAdmin)
		VALUES (uname, pword, fname, lname, false, false);
    END//
    
    DELIMITER ;
    
    CALL AddUser('rv', 'rv', 'System', 'Reviewer');