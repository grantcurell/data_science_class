-- Change the name with a copy
USE 单词卡
SELECT *
INTO 我的單詞卡
FROM Vida__中文;

-- Get rid of the old table (not very efficient way to do this)
USE 单词卡
DROP TABLE Vida__中文

-- Make a copy of the copy so I'm not messing with the original
USE 单词卡
SELECT *
INTO 備份
FROM 我的單詞卡;

-- Add a column called picture
USE 单词卡
ALTER TABLE 備份
ADD 圖片 varbinary(max)