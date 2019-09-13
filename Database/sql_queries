SELECT DateStarted,DateRestored FROM `network_outage`

CREATE VIEW SELECT timestampdiff(hour,DateStarted,DateRestored) as Outage FROM `network_outage` as Test

SELECT timestampdiff(hour,DateStarted,DateRestored) as Outage FROM `network_outage`

--Create View Syntax
CREATE VIEW network_chart as  SELECT ID,client,SelectISP,Status,select_circuit,DateStarted,DateRestored, timestampdiff(hour,DateStarted,DateRestored) as Outage FROM `network_outage`

CREATE VIEW network_chart as  SELECT ID,client,SelectISP,Status,select_circuit,DateStarted,DateRestored,GlobeOutage,PldtOutage,InfinivanOutage,timestampdiff(hour,DateStarted,DateRestored) as Outage FROM `network_outage`

--Asset Tag Generation --
## https://stackoverflow.com/questions/53128339/how-to-generate-unique-tag-id-start-from-f-00001-in-php#
CREATE VIEW item_view AS
SELECT *, CONCAT('LINK14F', LPAD(ID, 5, '0')) AS AssetTag FROM asset_storagedevice
