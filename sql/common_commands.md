# Common comands

## Mariadb / Mysql

### Normalize a column
Where:
Base is the new table to be used for normalization and OriginalTable is the original table where the data comes from.

-- Step 1: Create the new table
CREATE TABLE Base (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    BASE VARCHAR(255) NOT NULL
);

-- Step 2: Populate the new table with unique base values
INSERT INTO Base (BASE)
SELECT DISTINCT BASE FROM OriginalTable;

-- Step 3: Update the original table to reference the new table by ID
ALTER TABLE OriginalTable ADD COLUMN BaseID INT;

UPDATE OriginalTable ot
JOIN Base b ON ot.BASE = b.BASE
SET ot.BaseID = b.ID;

-- Optionally drop the old BASE column and rename the new column
ALTER TABLE OriginalTable DROP COLUMN BASE;
ALTER TABLE OriginalTable CHANGE BaseID BASE INT;

