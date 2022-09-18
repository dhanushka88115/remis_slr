DELIMITER $$

USE `remis_emp_slr`$$

DROP VIEW IF EXISTS `employeesearchview`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeesearchview` AS (
SELECT 
`e`.`Id` AS `Id`,
`e`.`NICNumber` AS `NICNumber`,
`e`.`FirstName` AS `FirstName`,
`e`.`LastName` AS `LastName`,
`e`.`address` AS `Address`,
`ge`.`Id` AS `GenderId`,
`ge`.`GenderName` AS `GenderName`,
`sd`.`Id` AS `SubDepartmentId`,
`sd`.`SubDepartmentName` AS `SubDepartmentName`,
`sn`.`Id` AS `SectionId`,
`sn`.`SectionName` AS `SectionName`,
`st`.`Id` AS `EmployeeStatusId`,
`st`.`EmployeeStatusName` AS `EmployeeStatusName`,
`ds`.`Id` AS `DesignationId`,
`ds`.`DesignationName` AS `DesignationName`,
`dt`.`Id` AS `DesignationTypeId`,
`dt`.`DesignationTypeName` AS `DesignationTypeName`,
`js`.`Id` AS `CabinetOfficeId`,
`js`.`CabinetOfficeName` AS `CabinetOfficeName`,
`sc`.`Id` AS `ServiceCategoryId`,
`sc`.`ServiceCode` AS `ServiceCode`,
`sc`.`ServiceName` AS `ServiceName`,
`sl`.`Id` AS `ServiceLevelId`,
`sl`.`ServiceLevelName` AS `ServiceLevelName`,
`cg`.`Id` AS `ClassGradeId`,
`cg`.`ClassGradeName` AS `ClassGradeName`,
`e`.`DateOfBirth` AS `DateOfBirth`,
`e`.`AppointmentDate` AS `AppointmentDate`,
`e`.`RetirementDate` AS `RetirementDate`,
`e`.`AppointmentDateToSLR` AS `AppointmentDateToSLR`,
`ss`.`Id` AS `SalaryStructureId`,
`ss`.`SalaryCode` AS `SalaryCode`,
`ss`.`ServiceCategory` AS `ServiceCategory`,
`e`.`ComputerNo` AS `ComputerNo`,
`e`.`NICNumber` AS `NICNumber`,
`e`.`CreatedBy` AS `CreatedBy`,
`us`.`RoleId` AS `RoleId`,
`e`.`IsDeleted` AS `IsDeleted`,

CONCAT (
`e`.`Id`,
`e`.`NICNumber`,
`e`.`FirstName`,
`e`.`LastName`,
`e`.`DateOfBirth`,
`e`.`AppointmentDate`,
`e`.`AppointmentDateToSLR`,
`e`.`RetirementDate`,
`cg`.`ClassGradeName`,
`ds`.`DesignationName`,
`es`.`EmployeeStatusName`,
`dt`.`DesignationTypeName`,
`js`.`CabinetOfficeName`,
`ss`.`SalaryCode`,
`ss`.`ServiceCategory`,
`sc`.`ServiceCode`,
`sc`.`ServiceName`,
`sl`.`ServiceLevelName`,
`sd`.`SubDepartmentCode`,
`sd`.`SubDepartmentName`,
`sn`.`SectionName`,
`ge`.`GenderName`,
`e`.`ComputerNo`,
`e`.`NICNumber`) 
AS `SearchText` 

FROM 
(((((((((((((`employee` `e` 
JOIN `classgrade` `cg` ON((`cg`.`Id` = `e`.`ClassGradeId`))) 
JOIN `designation` `ds` ON((`ds`.`Id` = `e`.`DesignationId`))) 
JOIN `employeestatus` `es` ON((`es`.`Id` = `e`.`EmployeeStatusId`))) 
JOIN `designationtype` `dt` ON((`dt`.`Id` = `e`.`DesignationTypeId`))) 
JOIN `cabinetoffice` `js` ON((`js`.`Id` = `e`.`CabinetOfficeId`))) 
JOIN `salarystructure` `ss` ON((`ss`.`Id` = `e`.`SalaryStructureId`))) 
JOIN `servicecategory` `sc` ON((`sc`.`Id` = `e`.`ServiceCategoryId`))) 
JOIN `servicelevel` `sl` ON((`sl`.`Id` = `e`.`ServiceLevelId`))) 
JOIN `subdepartment` `sd` ON((`sd`.`Id` = `e`.`SubDepartmentId`))) 
JOIN `section` `sn` ON((`sn`.`Id` = `e`.`SectionId`))) 
JOIN `gender` `ge` ON((`ge`.`Id` = `e`.`GenderId`))) 
JOIN `employeestatus` `st` ON((`st`.`Id` = `e`.`GenderId`))) 
JOIN `user` `us` ON((`us`.`Username` = `e`.`CreatedBy`))) 

WHERE (`e`.`IsDeleted` = 0) ORDER BY `e`.`Id` DESC)$$

DELIMITER ;