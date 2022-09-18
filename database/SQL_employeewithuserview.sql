DELIMITER $$

USE `remis_emp_slr`$$

DROP VIEW IF EXISTS `employeewithuserview`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeewithuserview` AS (
SELECT
  `u`.`Username`            AS `Username`,
  `u`.`EmployeeId`          AS `EmployeeId`,
  `e`.`FirstName`           AS `FirstName`,
  `e`.`LastName`            AS `LastName`,
  `u`.`Password`            AS `Password`,
  `u`.`RoleId`              AS `RoleId`,
  `u`.`IsDeleted`           AS `IsDeleted`,
  `r`.`RoleName`            AS `RoleName`,
  `e`.`CabinetOfficeId`     AS `CabinetOfficeId`,
  `c`.`CabinetOfficeName`   AS `CabinetOfficeName`

FROM (((`user` `u`
   LEFT JOIN `employee` `e` ON (`u`.`EmployeeId` = `e`.`Id`))
   LEFT JOIN `role` `r` ON (`u`.`RoleId` = `r`.`Id`))
   LEFT JOIN `CabinetOffice` `c` ON (`e`.`CabinetOfficeId` = `c`.`Id`))

WHERE (`e`.`IsDeleted` = 0))$$

DELIMITER ;