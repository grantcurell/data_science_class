USE 单词卡
INSERT INTO  備份 (備份.uid, 備份.繁體字, 備份.簡體字, 備份.拼音, 備份.翻譯, 備份.詞源)
VALUES (newid(), '曹', '曹', 'cáo', '同類的人，姓，周朝諸侯國名。在今山東西南部。', '曹 is composed of 񳔌 (originally 㯥 “a pair, couple”) and 曰 “to speak, say,” which indicate the original meaning “opponents or adversaries.')

DELETE
FROM 備份
WHERE 繁體字 = '曹';