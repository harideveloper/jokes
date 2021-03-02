DROP SCHEMA IF EXISTS `jokesdb`; 
CREATE SCHEMA IF NOT EXISTS `jokesdb`; 
USE `jokesdb`;
CREATE USER 'jokesuser'@'localhost' IDENTIFIED BY 'jokesuser';
GRANT ALL PRIVILEGES ON * . * TO 'jokesuser'@'localhost';
FLUSH PRIVILEGES;


DROP TABLE IF EXISTS `jokes`;
CREATE TABLE `jokes` (
`id` int(10) NOT NULL AUTO_INCREMENT,
`type` varchar(20) NOT NULL,
`setup` varchar(255) NOT NULL,
`punchline` varchar(255) NOT NULL,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

USE `jokesdb`;
SELECT * FROM `jokes`;

INSERT INTO `jokes` VALUES('1','general','What did the fish say when it hit the wall?','Dam.');
INSERT INTO `jokes` VALUES('2','general','How do you make a tissue dance?','You put a little boogie on it.');
INSERT INTO `jokes` VALUES('3','general','What ''s Forrest Gump ''s password ?','1Forrest1');
INSERT INTO `jokes` VALUES('4','general','What do you call a belt made out of watches?','A waist of time.');
INSERT INTO `jokes` VALUES('5','general','Why can''t bicycles stand on their own?','They are two tired');

INSERT INTO `jokes` VALUES('6','general','How does a train eat?','It goes chew, chew');
INSERT INTO `jokes` VALUES('7','general','What do you call a singing Laptop','A Dell');
INSERT INTO `jokes` VALUES('8','general','How many lips does a flower have?','Tulips');
INSERT INTO `jokes` VALUES('9','general','How do you organize an outer space party?','A waist of time.');
INSERT INTO `jokes` VALUES('10','general','What kind of shoes does a thief wear?','Sneakers');

INSERT INTO `jokes` VALUES('11','general','What''s the best time to go to the dentist?','Tooth hurty.');
INSERT INTO `jokes` VALUES('12','knock-knock','Knock knock. \n Who''s there? \n A broken pencil. \n A broken pencil who?','Never mind. It''s pointless.');
INSERT INTO `jokes` VALUES('13','knock-knock','Knock knock. \n Who''s there? \n Cows go. \n Cows go who?','No, cows go moo.');
INSERT INTO `jokes` VALUES('14','knock-knock','Knock knock. \n Who''s there? \n Little old lady. \n Little old lady who?','I didn''t know you could yodel!');
INSERT INTO `jokes` VALUES('15','programming','What''s the best thing about a Boolean?','Even if you''re wrong, you''re only off by a bit.');

INSERT INTO `jokes` VALUES('16','programming','What''s the object-oriented way to become wealthy?','Inheritance');
INSERT INTO `jokes` VALUES('17','programming','Where do programmers like to hangout?','The Foo Bar');
INSERT INTO `jokes` VALUES('18','programming','Why did the programmer quit his job?','Because he didn''t get arrays');
INSERT INTO `jokes` VALUES('19','general','Did you hear about the two silk worms in a race?','It ended in a tie.');
INSERT INTO `jokes` VALUES('20','general','What do you call a laughing motorcycle?','A Yamahahahaha.');



