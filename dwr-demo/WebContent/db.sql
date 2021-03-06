DROP TABLE IF EXISTS t_equipment;
CREATE TABLE t_equipment (
  id int(11) NOT NULL AUTO_INCREMENT,
  model varchar(200) DEFAULT NULL,
  name varchar(200) DEFAULT NULL,
  number int(11) DEFAULT NULL,
  price double(9,2) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=REDUNDANT;
INSERT INTO t_equipment VALUES (1,'C-009','C-009',100,12345);
INSERT INTO t_equipment VALUES (2,'B-002','B-002',123,333333);
INSERT INTO t_equipment VALUES (3,'D-009','D-009',200,8888888);