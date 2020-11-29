-- ### THEATERALL ###

DROP TABLE THEATERALL CASCADE CONSTRAINTS;

CREATE TABLE THEATERALL (
    theater VARCHAR2(10) CONSTRAINT theaterall_theater_pk PRIMARY KEY,
    movienum NUMBER(1),
    moviename VARCHAR2(50) NOT NULL,
    running_time VARCHAR2(30)
);

ALTER TABLE CUSTOMER ADD FOREIGN KEY (movienum) REFERENCES MOVIEINFO(movienum);

INSERT ALL
    INTO THEATERALL VALUES('1관',1,'해리포터 : 죽음의 성물 2','18:00  21:00  25:00')
    INTO THEATERALL VALUES('2관',2,'스파이더맨 : 뉴 유니버스','14:00  17:20  20:30')
    INTO THEATERALL VALUES('3관',3,'블레어 윗치 프로젝트 2','15:30  20:50')
    INTO THEATERALL VALUES('4관',4,'어벤져스 2 : 에이지 오브 울트론','16:20  18:50  20:50')
    INTO THEATERALL VALUES('특별관',5,'닥터 스트레인지','15:20  17:00  20:30')
SELECT * FROM DUAL;

-- ### CUSTOMER ###

DROP TABLE CUSTOMER CASCADE CONSTRAINTS;

CREATE TABLE CUSTOMER (
    reservation_num NUMBER(4) CONSTRAINT customer_reservation_num_pk PRIMARY KEY,
    username VARCHAR2(30),
    movienum NUMBER(1),
    moviename VARCHAR2(50),
    theater VARCHAR2(10),
    running_date DATE,
    running_time VARCHAR2(10),
    price NUMBER(5),
    isdiscount NUMBER(1)
);

ALTER TABLE CUSTOMER ADD FOREIGN KEY (movienum) REFERENCES MOVIEINFO(movienum);
ALTER TABLE CUSTOMER ADD FOREIGN KEY (theater) REFERENCES THEATERALL(theater);

INSERT ALL
    INTO CUSTOMER VALUES(1111,'고은비',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1112,'권오민',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1113,'권희성',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1114,'김민건',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1115,'김성호',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1116,'김연식',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1117,'김재웅',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1118,'김준형',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1119,'김창훈',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1120,'김혜성',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1121,'박다영',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1122,'박민영',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1123,'양호준',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1124,'염아정',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1125,'이민재',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1126,'장문희',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1127,'장종욱',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'21:00',13000,0)
    INTO CUSTOMER VALUES(1128,'조윤혜',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1129,'차왕현',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1130,'최지수',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1131,'최지원',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1132,'최태열',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1133,'현준',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1134,'George S. Fleming',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1135,'Edwin S. Porter',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1136,'Cecil Hepworth',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1137,'Edwin S. Porter',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1138,'Wallace McCutcheon',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'17:00',13000,0)
    INTO CUSTOMER VALUES(1139,'Edwin Stanton Porter',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1140,'Edwin Stanton Porter',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1141,'Wallace McCutcheon',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1142,'Edwin S. Porter',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1143,'Francis J. Marion',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'17:00',13000,0)
    INTO CUSTOMER VALUES(1144,'Wallace McCutcheon',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1145,'Edwin S. Porter',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1146,'Wallace McCutcheon',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1147,'Ediwin S. Porter',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1148,'Edwin Stanton Porter',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'17:00',13000,0)
    INTO CUSTOMER VALUES(1149,'D. W. Griffith',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1150,'D. W. Griffith',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'14:00',13000,0)
    INTO CUSTOMER VALUES(1151,'D.W. Griffith',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1152,'J. Searle Dawley',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1153,'J. Searle Dawley',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'17:00',13000,0)
    INTO CUSTOMER VALUES(1154,'D.W. Griffith',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1155,'Sidney Olcott',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1156,'Charles Brabin',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1157,'D. W. Griffith',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1158,'D.W. Griffith',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'17:00',13000,0)
    INTO CUSTOMER VALUES(1159,'Otis Turner',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1160,'Oscar Apfel',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'14:00',13000,0)
    INTO CUSTOMER VALUES(1161,'Colin Campbell',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1162,'Theodore Marston',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1163,'Thomas H. Ince',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1164,'Thomas H. Ince',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'21:00',13000,0)
    INTO CUSTOMER VALUES(1165,'Lucius Henderson',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1166,'Harold M. Shaw',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1167,'D. W. Griffith',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1168,'David Wark Griffith',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1169,'Unknown',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1170,'Theodore Marston',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'14:00',13000,0)
    INTO CUSTOMER VALUES(1171,'D. W. Griffith',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1172,'Mack Sennett',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1173,'Mack Sennett',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1174,'Herbert Brenon',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'21:00',13000,0)
    INTO CUSTOMER VALUES(1175,'Carl Laemmle',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1176,'Lawrence Marston',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1177,'Edwin Thanhouser',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1178,'Raymond B. West',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1179,'Allan Dwan',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1180,'D.W. Griffith',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1181,'D. W. Griffith',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1182,'D.W. Griffith',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1183,'Henry Lehrman',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1184,'Oscar Apfel',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'21:00',13000,0)
    INTO CUSTOMER VALUES(1185,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'17:20',13000,0)
    INTO CUSTOMER VALUES(1186,'Cecil B. DeMille',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1187,'Rollin S. Sturgeon',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1188,'Mabel Normand',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1189,'Charlie Chaplin',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'1:00',13000,0)
    INTO CUSTOMER VALUES(1190,'James Kirkwood',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1191,'George Nichols',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1192,'Mack Sennett',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1193,'Charlie Chaplin',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1194,'D. W. Griffith',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'21:00',13000,0)
    INTO CUSTOMER VALUES(1195,'George Nichols',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1196,'Sydney Drew',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1197,'Charlie Chaplin',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1198,'Charlie Chaplin',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1199,'Edward LeSaint',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'21:00',13000,0)
    INTO CUSTOMER VALUES(1200,'J. Farrell MacDonald',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1201,'Charlie Chaplin',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1202,'Mabel Normand',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1203,'D. W. Griffith',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1204,'Edward S. Curtis',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'18:00',13000,0)
    INTO CUSTOMER VALUES(1205,'Charles Avery',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1206,'Charlie Chaplin',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1207,'Mabel Normand',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1208,'Mack Sennett',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1209,'Mabel Normand',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'18:00',13000,0)
    INTO CUSTOMER VALUES(1210,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1211,'Henry Lehrman',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1212,'Henry Lehrman',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1213,'Charlie Chaplin',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1214,'Herbert Brenon',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'18:00',13000,0)
    INTO CUSTOMER VALUES(1215,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1216,'Louis J. Gasnier',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1217,'Charlie Chaplin',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1218,'Charles Chaplin',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1219,'Cecil B. DeMille',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'18:00',13000,0)
    INTO CUSTOMER VALUES(1220,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1221,'William Nigh',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'15:30',11000,1)
    INTO CUSTOMER VALUES(1222,'Edwin McKim',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1223,'Oscar Apfel',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
    INTO CUSTOMER VALUES(1224,'Cecil B. DeMille',1,'해리포터 : 죽음의 성물 2','1관',to_date('11-27-2020','mm-dd-yyyy'),'18:00',13000,0)
    INTO CUSTOMER VALUES(1225,'William Desmond Taylor',2,'스파이더맨 : 뉴 유니버스','2관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1226,'Charlie Chaplin',3,'블레어 위치 프로젝트 2','3관',to_date('11-27-2020','mm-dd-yyyy'),'20:50',11000,1)
    INTO CUSTOMER VALUES(1227,'Mack Sennett',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1228,'Reginald Barker',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'20:30',13000,0)
    INTO CUSTOMER VALUES(1229,'Cecil B. DeMille',4,'어벤져스 2 : 에이지 오브 울트론','4관',to_date('11-27-2020','mm-dd-yyyy'),'16:20',13000,0)
    INTO CUSTOMER VALUES(1230,'J. Gordon Edwards',5,'닥터 스트레인지','특별관',to_date('11-27-2020','mm-dd-yyyy'),'15:20',13000,0)
SELECT * FROM DUAL;

-- ### MOVIEINFO ###

DROP TABLE MOVIEINFO CASCADE CONSTRAINTS;

CREATE TABLE MOVIEINFO (
    movienum NUMBER(1) CONSTRAINT movieinfo_movienum_pk PRIMARY KEY,
    moviename VARCHAR2(50) NOT NULL,
    distributor VARCHAR2(50), 
    actor VARCHAR2(100),
    director VARCHAR2(30),
    genre VARCHAR2(40),
    class NUMBER(2),
    price NUMBER(6),
    isdiscount NUMBER(1),
    worldboxoffice_rank NUMBER(11)
);

INSERT ALL
    INTO MOVIEINFO values(1,'해리포터 : 죽음의 성물 2','워너브라더스', '다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트 외','데이비드 예이츠','모험, 판타지, 미스터리',null,13000,0,1341693157)
    INTO MOVIEINFO values(2,'스파이더맨 : 뉴 유니버스','소니픽처스 코리아', '셔메이크 무어, 헤일리 스타인펠드, 니콜라스 케이지, 리에브 슈라이버 외', '피터 램지','애니메이션, 슈퍼히어로',12,13000,0,375469903)
    INTO MOVIEINFO values(3,'블레어 위치 프로젝트 2','아티잔 엔터테인먼트','제임스 앨런 맥퀸', '애덤 윈가드', '공포, 미스터리',18,11000,1,47737094)
    INTO MOVIEINFO values(4,'어벤져스 2 : 에이지 오브 울트론','월트 디즈니 컴퍼니 코리아','로버트 다우니 주니어, 크리스 에반스, 스칼렛 요한슨 등','케빈 파이기','액션, 슈퍼히어로',12,13000,0,1405403694)
    INTO MOVIEINFO values(5,'닥터 스트레인지','월트 디즈니 컴퍼니 코리아', '베네딕트 컴버배치, 레이첼 맥아담스  등','케빈 파이기', '액션, 슈퍼히어로',12,13000,0,677718395)
SELECT * FROM DUAL;

-- ### BLAIRWITCH_SEAT ###

DROP TABLE BLAIRWITCH_SEAT CASCADE CONSTRAINTS;

CREATE TABLE BLAIRWITCH_SEAT (
    seat_num VARCHAR2(3) CONSTRAINT blairwitch_seat_num_pk PRIMARY KEY,
    isseat NUMBER(1),
    movienum NUMBER(1),
    reservation_num NUMBER(4)
);

INSERT ALL
    INTO BLAIRWITCH_SEAT VALUES('A1',1,3,1111)
    INTO BLAIRWITCH_SEAT VALUES('A2',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A3',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A4',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A5',1,3,1113)
    INTO BLAIRWITCH_SEAT VALUES('A6',1,3,1123)
    INTO BLAIRWITCH_SEAT VALUES('A7',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A8',1,3,1112)
    INTO BLAIRWITCH_SEAT VALUES('A9',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A10',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A11',1,3,1124)
    INTO BLAIRWITCH_SEAT VALUES('A12',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A13',1,3,1122)
    INTO BLAIRWITCH_SEAT VALUES('A14',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A15',1,3,1121)
    INTO BLAIRWITCH_SEAT VALUES('A16',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A17',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A18',1,3,1129)
    INTO BLAIRWITCH_SEAT VALUES('A19',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A20',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A21',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A22',1,3,1166)
    INTO BLAIRWITCH_SEAT VALUES('A23',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A24',1,3,1161)
    INTO BLAIRWITCH_SEAT VALUES('A25',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A26',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A27',1,3,1191)
    INTO BLAIRWITCH_SEAT VALUES('A28',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A29',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A30',1,3,1216)
    INTO BLAIRWITCH_SEAT VALUES('A31',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A32',1,3,1196)
    INTO BLAIRWITCH_SEAT VALUES('A33',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A34',1,3,1128)
    INTO BLAIRWITCH_SEAT VALUES('A35',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A36',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A37',1,3,1201)
    INTO BLAIRWITCH_SEAT VALUES('A38',1,3,1211)
    INTO BLAIRWITCH_SEAT VALUES('A39',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A40',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A41',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A42',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A43',1,3,1221)
    INTO BLAIRWITCH_SEAT VALUES('A44',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('A45',1,3,1221)
    INTO BLAIRWITCH_SEAT VALUES('A46',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B1',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B2',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B3',1,3,1114)
    INTO BLAIRWITCH_SEAT VALUES('B4',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B5',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B6',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B7',1,3,1120)
    INTO BLAIRWITCH_SEAT VALUES('B8',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B9',1,3,1115)
    INTO BLAIRWITCH_SEAT VALUES('B10',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B11',1,3,1116)
    INTO BLAIRWITCH_SEAT VALUES('B12',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B13',1,3,1118)
    INTO BLAIRWITCH_SEAT VALUES('B14',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B15',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B16',1,3,1119)
    INTO BLAIRWITCH_SEAT VALUES('B17',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B18',1,3,1117)
    INTO BLAIRWITCH_SEAT VALUES('B19',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B20',1,3,1206)
    INTO BLAIRWITCH_SEAT VALUES('B21',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B22',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B23',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B24',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B25',1,3,1226)
    INTO BLAIRWITCH_SEAT VALUES('B26',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B27',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B28',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B29',1,3,1176)
    INTO BLAIRWITCH_SEAT VALUES('B30',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B31',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B32',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B33',1,3,1171)
    INTO BLAIRWITCH_SEAT VALUES('B34',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B35',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B36',1,3,1181)
    INTO BLAIRWITCH_SEAT VALUES('B37',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B38',1,3,1186)
    INTO BLAIRWITCH_SEAT VALUES('B39',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B40',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B41',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B42',1,3,1126)
    INTO BLAIRWITCH_SEAT VALUES('B43',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B44',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B45',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('B46',1,3,1130)
    INTO BLAIRWITCH_SEAT VALUES('C1',1,3,1131)
    INTO BLAIRWITCH_SEAT VALUES('C2',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C3',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C4',1,3,1146)
    INTO BLAIRWITCH_SEAT VALUES('C5',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C6',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C7',1,3,1156)
    INTO BLAIRWITCH_SEAT VALUES('C8',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C9',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C10',1,3,1141)
    INTO BLAIRWITCH_SEAT VALUES('C11',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C12',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C13',1,3,1133)
    INTO BLAIRWITCH_SEAT VALUES('C14',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C15',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C16',1,3,1151)
    INTO BLAIRWITCH_SEAT VALUES('C17',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C18',1,3,1136)
    INTO BLAIRWITCH_SEAT VALUES('C19',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C20',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C21',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C22',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C23',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C24',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C25',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C26',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C27',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C28',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C29',1,3,1132)
    INTO BLAIRWITCH_SEAT VALUES('C30',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C31',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C32',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C33',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C34',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C35',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C36',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C37',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C38',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C39',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C40',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C41',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C42',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C43',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C44',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C45',0,3,null)
    INTO BLAIRWITCH_SEAT VALUES('C46',0,3,null)
SELECT * FROM DUAL;

-- ### MOVIE_REVIEW ###

DROP TABLE MOVIE_REVIEW CASCADE CONSTRAINTS;

CREATE TABLE MOVIE_REVIEW (
    review_num VARCHAR2(10) CONSTRAINT movie_review_reviewnum_pk PRIMARY KEY,
    movienum NUMBER(1),
    moviename VARCHAR2(50) NOT NULL,
    star NUMBER(2,1),
    review VARCHAR2(300)
);

ALTER TABLE MOVIE_REVIEW ADD FOREIGN KEY (movienum) REFERENCES MOVIEINFO(movienum);

INSERT ALL
    INTO MOVIE_REVIEW VALUES(10001,1,'해리포터 : 죽음의 성물 2',4.0,'그에게 작별을 고하며, 기나긴 여정에 경의를 표한다. 이건 시리즈에 주는 별점이다.')
    INTO MOVIE_REVIEW VALUES(10002,1,'해리포터 : 죽음의 성물 2',5.0,'10년을 우쭈쭈했던 네빌이 멋진 남자가 되는 것을 보았고, 10년을 미워했던 스네이프를 꼭 안아줄 수 있게 되었다.')
    INTO MOVIE_REVIEW VALUES(10003,1,'해리포터 : 죽음의 성물 2',4.0,'마지막이 가장 뛰어난 시리즈를 대하는 기쁨.')
    INTO MOVIE_REVIEW VALUES(10004,1,'해리포터 : 죽음의 성물 2',5.0,'해리포터라는 대장정을 마무리짓는 마지막. 호그와트에서의 대규모 전쟁씬은 흡사 반지의 제왕을 연상시키는 듯')
    INTO MOVIE_REVIEW VALUES(10005,1,'해리포터 : 죽음의 성물 2',4.0,'엔딩 크레딧이 올라갈 때 나의 어린시절이 막을 내리는 느낌을 받았다. 아직 더 호그와트에 머물고 싶은데.')
    INTO MOVIE_REVIEW VALUES(10006,2,'스파이더맨 : 뉴 유니버스',4.5,'Hey~~~ 끝내준다!!! 스파이더맨 최고!!! 그리고 황석희도 최고!!! Not Only, We are All Spider_Man')
    INTO MOVIE_REVIEW VALUES(10007,2,'스파이더맨 : 뉴 유니버스',4.5,'세상에... 마블 최고작이 이런 형태로 나올줄이야... 마블로고부터 시작해 엔딩롤에 쿠키까지! 세련됨을 넘어 쿨함으로 무장한 인싸 파티극!!!')
    INTO MOVIE_REVIEW VALUES(10008,2,'스파이더맨 : 뉴 유니버스',5.0,'마치 입체적인 코믹북을 보는 느낌, 굉장히 신선하고 더할 나위 없이 즐겁다!')
    INTO MOVIE_REVIEW VALUES(10009,2,'스파이더맨 : 뉴 유니버스',5.0,'영화를 보는동안  지루하단 생각을 자체를 하지 못했다. 애니메이션으로 할 수 있는 모든 장점을 연출로 보여주었다.')
    INTO MOVIE_REVIEW VALUES(10010,2,'스파이더맨 : 뉴 유니버스',4.5,'아...놔...유니버스 이런거였어......???? 마블이..아니지.. 세상에나 끝내주네...')
    INTO MOVIE_REVIEW VALUES(10011,3,'블레어 위치 프로젝트 2',2.6,'재미가 없으면 잠이라도 자게 냅두든가...')
    INTO MOVIE_REVIEW VALUES(10012,3,'블레어 위치 프로젝트 2',2.0,'17년 사이에 휘발된 원작의 장점들')
    INTO MOVIE_REVIEW VALUES(10013,3,'블레어 위치 프로젝트 2',3.0,'우아... 오싹하구만...ㅠㅠ 카메라가 너무 흔들려서 정신 산만했다...')
    INTO MOVIE_REVIEW VALUES(10014,3,'블레어 위치 프로젝트 2',3.0,'쳐다보지 말랬잖아! 왜 쳐다봐 ㅠㅠ')
    INTO MOVIE_REVIEW VALUES(10015,3,'블레어 위치 프로젝트 2',1.0,'원작인줄 알고 봤다 하.... 착각하고 본 건 처음이네')
    INTO MOVIE_REVIEW VALUES(10016,4,'어벤져스 2 : 에이지 오브 울트론',3.5,'아이언맨으로부터 시작된 마블의 오래된 팬으로서, 이 수많은 히어로들을 어느 누구 하나 외면하지 않은 채 교통정리해준 것 만으로도 감격')
    INTO MOVIE_REVIEW VALUES(10017,4,'어벤져스 2 : 에이지 오브 울트론',4.0,'화려하고 웅장한 액션과 스케일, 적절한 유머, 다양한 캐릭터들의 협동플레이와 속편으로 가는 완벽한 떡밥까지...')
    INTO MOVIE_REVIEW VALUES(10018,4,'어벤져스 2 : 에이지 오브 울트론',3.5,'기대에 못미쳐도 다음편을 기대하게 만드는 저력..')
    INTO MOVIE_REVIEW VALUES(10019,4,'어벤져스 2 : 에이지 오브 울트론',5.0,'사실 빠심때문에 객관적인 평가가 불가능합니다')
    INTO MOVIE_REVIEW VALUES(10020,4,'어벤져스 2 : 에이지 오브 울트론',2.5,'딱 예고편만큼 의 스칼렛,퀵실버 너무 포스없는 울트론 각 캐릭터들간의 개연성면에서 부족한 연결고리')
    INTO MOVIE_REVIEW VALUES(10021,5,'닥터 스트레인지',4.0,'주술사가 통치하는 이 시국에 화려한 마법사가 등장했군요! 정말 딱 맞는 영화입니다^^')
    INTO MOVIE_REVIEW VALUES(10022,5,'닥터 스트레인지',4.0,'도르마무 거래를 하러왔다')
    INTO MOVIE_REVIEW VALUES(10023,5,'닥터 스트레인지',4.0,'역동적이고 창의적인 시각 디자인.')
    INTO MOVIE_REVIEW VALUES(10024,5,'닥터 스트레인지',3.0,'건물이 왜곡되어 소서러들이 갈릴 때마다 아.. 저게 시각효과팀의 영혼이구나.')
    INTO MOVIE_REVIEW VALUES(10025,5,'닥터 스트레인지',3.5,'첫 스타트라 감질맛나게 보여줘서 아쉽지만 전작 이미지 탈피하고 캐릭터 완벽적응, 어벤져스 도입도 성공적이다. DOCTOR STRANGE WILL RETRUN.')
SELECT * FROM DUAL;
