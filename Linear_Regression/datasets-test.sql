SELECT * FROM medical WHERE age='35' AND sex='male' AND bmi='32.4' AND children='0' AND smoker='no' AND region='southeast' AND charges='10000.0000'

UPDATE Medical SET charges='11000.0000' WHERE age='35' AND sex='male' AND bmi='32.4' AND children='0' AND smoker='no' AND region='southeast' AND charges='10000.0000'

DELETE FROM Medical WHERE age='35' AND sex='male' AND bmi='32.4' AND children='0' AND smoker='no' AND region='southeast' AND charges='11000.0000'

CREATE TABLE Horizontal_Filter (age text, sex text, bmi text, children text, smoker text, region text, charges text)
INSERT INTO Horizontal_Filter SELECT * FROM Medical WHERE sex='male'

drop table Vertical_Filter

select * from Vertical_Filter limit 10

SELECT * FROM Medical

SELECT SUM(charges/(age*n_smoker))/COUNT(*) FROM (SELECT CAST(age as INT) as age,CASE WHEN smoker="yes" THEN 1.3 ELSE 1 END AS n_smoker, CAST(charges as DOUBLE) as charges, charges*(age*CASE WHEN smoker="yes" THEN 1.3 ELSE 1 END) as 'charges/(ageXsmoker)' FROM Medical)



admin...
SELECT * FROM sqlite_master WHERE type="table"


    In the settings set: "sqlite.logLevel": "DEBUG"
    Open command palette > SQLite: Open Database > show table
    Open command palette > SQLite: Show output
    Copy and paste the output here.
