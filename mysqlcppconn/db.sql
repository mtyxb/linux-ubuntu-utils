DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `userpass` varchar(64) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `idx_user_username` (`username`)
);

INSERT INTO user (username, userpass) VALUES ('abc', md5('test'));
INSERT INTO user (username, userpass) VALUES ('def', md5('test'));
INSERT INTO user (username, userpass) VALUES ('ghi', md5('test'));

