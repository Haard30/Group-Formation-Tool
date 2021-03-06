DROP procedure IF EXISTS `sp_addTAToCourse`;
DELIMITER $$
CREATE DEFINER=`CSCI5308_22_TEST_USER`@`%` PROCEDURE `sp_addToken`(
IN userID bigint,
IN emailID VARCHAR(255),
IN token VARCHAR(255)
)
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	INSERT into forgot_password values(userID,emailID,token);
	COMMIT;
END$$
DELIMITER ;