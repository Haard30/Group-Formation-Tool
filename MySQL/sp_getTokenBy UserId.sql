DELIMITER $$
CREATE DEFINER=`CSCI5308_22_DEVINT_USER`@`%` PROCEDURE `sp_getTokenByEmailId`(IN emailID VARCHAR(255))
BEGIN
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SELECT temporary_lik
	FROM forgot_password where email = emailID;
	COMMIT;
END$$
DELIMITER ;
