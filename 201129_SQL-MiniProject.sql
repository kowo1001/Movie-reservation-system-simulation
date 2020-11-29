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
    INTO THEATERALL values(1,'해리포터 : 죽음의 성물 2','1관','18:00')
    INTO THEATERALL values(1,'해리포터 : 죽음의 성물 2','1관','21:00')
    INTO THEATERALL values(1,'해리포터 : 죽음의 성물 2','1관','25:00')
    INTO THEATERALL values(2,'스파이더맨 : 뉴 유니버스','2관','14:00')
    INTO THEATERALL values(2,'스파이더맨 : 뉴 유니버스','2관','17:20')
    INTO THEATERALL values(2,'스파이더맨 : 뉴 유니버스','2관','20:30')
    INTO THEATERALL values(3,'블레어 윗치 프로젝트 2','3관','15:30')
    INTO THEATERALL values(3,'블레어 윗치 프로젝트 2','3관','20:50')
    INTO THEATERALL values(4,'어벤져스 2 : 에이지 오브 울트론','4관','16:20')
    INTO THEATERALL values(4,'어벤져스 2 : 에이지 오브 울트론','4관','18:50')
    INTO THEATERALL values(4,'어벤져스 2 : 에이지 오브 울트론','4관','20:50')
    INTO THEATERALL values(5,'닥터 스트레인지','특별관','15:20')
    INTO THEATERALL values(5,'닥터 스트레인지','특별관','18:50')
    INTO THEATERALL values(5,'닥터 스트레인지','특별관','20:50')

--SELECT * FROM DUAL;
SELECT * FROM THEATERALL;

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
    INTO CUSTOMER values(1111,'고은비',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1112,'권오민',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1113,'권희성',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1114,'김민건',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1115,'김성호',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1116,'김연식',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1117,'김재웅',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1118,'김준형',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1119,'김창훈',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1120,'김혜성',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1121,'박다영',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1122,'박민영',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1123,'양호준',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1124,'염아정',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1125,'이민재',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1126,'장문희',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1127,'장종욱',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','21:00',13000,0)
    INTO CUSTOMER values(1128,'조윤혜',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1129,'차왕현',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1130,'최지수',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1131,'최지원',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1132,'최태열',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1133,'현준',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1134,'George S. Fleming',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1135,'Edwin S. Porter',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1136,'Cecil Hepworth',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1137,'Edwin S. Porter',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1138,'Wallace McCutcheon',5,'닥터 스트레인지','특별관','2020-11-27','17:00',13000,0)
    INTO CUSTOMER values(1139,'Edwin Stanton Porter',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1140,'Edwin Stanton Porter',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1141,'Wallace McCutcheon',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1142,'Edwin S. Porter',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1143,'Francis J. Marion',5,'닥터 스트레인지','특별관','2020-11-27','17:00',13000,0)
    INTO CUSTOMER values(1144,'Wallace McCutcheon',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1145,'Edwin S. Porter',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1146,'Wallace McCutcheon',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1147,'Ediwin S. Porter',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1148,'Edwin Stanton Porter',5,'닥터 스트레인지','특별관','2020-11-27','17:00',13000,0)
    INTO CUSTOMER values(1149,'D. W. Griffith',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1150,'D. W. Griffith',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','14:00',13000,0)
    INTO CUSTOMER values(1151,'D.W. Griffith',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1152,'J. Searle Dawley',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1153,'J. Searle Dawley',5,'닥터 스트레인지','특별관','2020-11-27','17:00',13000,0)
    INTO CUSTOMER values(1154,'D.W. Griffith',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1155,'Sidney Olcott',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1156,'Charles Brabin',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1157,'D. W. Griffith',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1158,'D.W. Griffith',5,'닥터 스트레인지','특별관','2020-11-27','17:00',13000,0)
    INTO CUSTOMER values(1159,'Otis Turner',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1160,'Oscar Apfel',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','14:00',13000,0)
    INTO CUSTOMER values(1161,'Colin Campbell',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1162,'Theodore Marston',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1163,'Thomas H. Ince',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1164,'Thomas H. Ince',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','21:00',13000,0)
    INTO CUSTOMER values(1165,'Lucius Henderson',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1166,'Harold M. Shaw',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1167,'D. W. Griffith',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1168,'David Wark Griffith',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1169,'Unknown',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1170,'Theodore Marston',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','14:00',13000,0)
    INTO CUSTOMER values(1171,'D. W. Griffith',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1172,'Mack Sennett',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1173,'Mack Sennett',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1174,'Herbert Brenon',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','21:00',13000,0)
    INTO CUSTOMER values(1175,'Carl Laemmle',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1176,'Lawrence Marston',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1177,'Edwin Thanhouser',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1178,'Raymond B. West',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1179,'Allan Dwan',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1180,'D.W. Griffith',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1181,'D. W. Griffith',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1182,'D.W. Griffith',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1183,'Henry Lehrman',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1184,'Oscar Apfel',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','21:00',13000,0)
    INTO CUSTOMER values(1185,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','17:20',13000,0)
    INTO CUSTOMER values(1186,'Cecil B. DeMille',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1187,'Rollin S. Sturgeon',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1188,'Mabel Normand',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1189,'Charlie Chaplin',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','1:00',13000,0)
    INTO CUSTOMER values(1190,'James Kirkwood',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1191,'George Nichols',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1192,'Mack Sennett',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1193,'Charlie Chaplin',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1194,'D. W. Griffith',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','21:00',13000,0)
    INTO CUSTOMER values(1195,'George Nichols',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1196,'Sydney Drew',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1197,'Charlie Chaplin',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1198,'Charlie Chaplin',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1199,'Edward LeSaint',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','21:00',13000,0)
    INTO CUSTOMER values(1200,'J. Farrell MacDonald',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1201,'Charlie Chaplin',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1202,'Mabel Normand',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1203,'D. W. Griffith',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1204,'Edward S. Curtis',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','18:00',13000,0)
    INTO CUSTOMER values(1205,'Charles Avery',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1206,'Charlie Chaplin',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1207,'Mabel Normand',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1208,'Mack Sennett',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1209,'Mabel Normand',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','18:00',13000,0)
    INTO CUSTOMER values(1210,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1211,'Henry Lehrman',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1212,'Henry Lehrman',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1213,'Charlie Chaplin',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1214,'Herbert Brenon',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','18:00',13000,0)
    INTO CUSTOMER values(1215,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1216,'Louis J. Gasnier',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1217,'Charlie Chaplin',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1218,'Charles Chaplin',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1219,'Cecil B. DeMille',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','18:00',13000,0)
    INTO CUSTOMER values(1220,'Charlie Chaplin',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1221,'William Nigh',3,'블레어 위치 프로젝트 2','3관','2020-11-27','15:30',11000,1)
    INTO CUSTOMER values(1222,'Edwin McKim',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1223,'Oscar Apfel',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)
    INTO CUSTOMER values(1224,'Cecil B. DeMille',1,'해리포터 : 죽음의 성물 2','1관','2020-11-27','18:00',13000,0)
    INTO CUSTOMER values(1225,'William Desmond Taylor',2,'스파이더맨 : 뉴 유니버스','2관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1226,'Charlie Chaplin',3,'블레어 위치 프로젝트 2','3관','2020-11-27','20:50',11000,1)
    INTO CUSTOMER values(1227,'Mack Sennett',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1228,'Reginald Barker',5,'닥터 스트레인지','특별관','2020-11-27','20:30',13000,0)
    INTO CUSTOMER values(1229,'Cecil B. DeMille',4,'어벤져스 2 : 에이지 오브 울트론','4관','2020-11-27','16:20',13000,0)
    INTO CUSTOMER values(1230,'J. Gordon Edwards',5,'닥터 스트레인지','특별관','2020-11-27','15:20',13000,0)

--SELECT * FROM DUAL;
SELECT * FROM CUSTOMER;

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
    INTO MOVIEINFO values(1,'해리포터 : 죽음의 성물 2','워너브라더스', '다니엘 래드클리프, 엠마 왓슨, 루퍼트 그린트 외','데이비드 예이츠','모험, 판타지, 미스터리',null,13000,0,1341693157);
    INTO MOVIEINFO values(2,'스파이더맨 : 뉴 유니버스','소니픽처스 코리아', '셔메이크 무어, 헤일리 스타인펠드, 니콜라스 케이지, 리에브 슈라이버 외', '피터 램지','애니메이션, 슈퍼히어로',12,13000,0,375469903)
    INTO MOVIEINFO values(3,'블레어 위치 프로젝트 2','아티잔 엔터테인먼트','제임스 앨런 맥퀸', '애덤 윈가드', '공포, 미스터리',18,11000,1,47737094)
    INTO MOVIEINFO values(4,'어벤져스 2 : 에이지 오브 울트론','월트 디즈니 컴퍼니 코리아','로버트 다우니 주니어, 크리스 에반스, 스칼렛 요한슨 등','케빈 파이기','액션, 슈퍼히어로',12,13000,0,1405403694)
    INTO MOVIEINFO values(5,'닥터 스트레인지','월트 디즈니 컴퍼니 코리아', '베네딕트 컴버배치, 레이첼 맥아담스  등','케빈 파이기', '액션, 슈퍼히어로',12,13000,0,677718395)

--SELECT * FROM DUAL;
SELECT * FROM MOVIEINFO;

-- ### BLAIRWITCH_SEAT ###

DROP TABLE BLAIRWITCH_SEAT CASCADE CONSTRAINTS;

CREATE TABLE BLAIRWITCH_SEAT (
    seat_num VARCHAR2(3) CONSTRAINT blairwitch_seat_num_pk PRIMARY KEY,
    isseat NUMBER(1),
    movienum NUMBER(1) ,
    reservation_num NUMBER(4)
);

INSERT ALL
    INTO BLAIRWITCH_SEAT values('A1',1,3,1111)
    INTO BLAIRWITCH_SEAT values('A2',0,3,)
    INTO BLAIRWITCH_SEAT values('A3',0,3,)
    INTO BLAIRWITCH_SEAT values('A4',0,3,)
    INTO BLAIRWITCH_SEAT values('A5',1,3,1113)
    INTO BLAIRWITCH_SEAT values('A6',1,3,1123)
    INTO BLAIRWITCH_SEAT values('A7',0,3,)
    INTO BLAIRWITCH_SEAT values('A8',1,3,1112)
    INTO BLAIRWITCH_SEAT values('A9',0,3,)
    INTO BLAIRWITCH_SEAT values('A10',0,3,)
    INTO BLAIRWITCH_SEAT values('A11',1,3,1124)
    INTO BLAIRWITCH_SEAT values('A12',0,3,)
    INTO BLAIRWITCH_SEAT values('A13',1,3,1122)
    INTO BLAIRWITCH_SEAT values('A14',0,3,)
    INTO BLAIRWITCH_SEAT values('A15',1,3,1121)
    INTO BLAIRWITCH_SEAT values('A16',0,3,)
    INTO BLAIRWITCH_SEAT values('A17',0,3,)
    INTO BLAIRWITCH_SEAT values('A18',1,3,1129)
    INTO BLAIRWITCH_SEAT values('A19',0,3,)
    INTO BLAIRWITCH_SEAT values('A20',0,3,)
    INTO BLAIRWITCH_SEAT values('A21',0,3,)
    INTO BLAIRWITCH_SEAT values('A22',1,3,1166)
    INTO BLAIRWITCH_SEAT values('A23',0,3,)
    INTO BLAIRWITCH_SEAT values('A24',1,3,1161)
    INTO BLAIRWITCH_SEAT values('A25',0,3,)
    INTO BLAIRWITCH_SEAT values('A26',0,3,)
    INTO BLAIRWITCH_SEAT values('A27',1,3,1191)
    INTO BLAIRWITCH_SEAT values('A28',0,3,)
    INTO BLAIRWITCH_SEAT values('A29',0,3,)
    INTO BLAIRWITCH_SEAT values('A30',1,3,1216)
    INTO BLAIRWITCH_SEAT values('A31',0,3,)
    INTO BLAIRWITCH_SEAT values('A32',1,3,1196)
    INTO BLAIRWITCH_SEAT values('A33',0,3,)
    INTO BLAIRWITCH_SEAT values('A34',1,3,1128)
    INTO BLAIRWITCH_SEAT values('A35',0,3,)
    INTO BLAIRWITCH_SEAT values('A36',0,3,)
    INTO BLAIRWITCH_SEAT values('A37',1,3,1201)
    INTO BLAIRWITCH_SEAT values('A38',1,3,1211)
    INTO BLAIRWITCH_SEAT values('A39',0,3,)
    INTO BLAIRWITCH_SEAT values('A40',0,3,)
    INTO BLAIRWITCH_SEAT values('A41',0,3,)
    INTO BLAIRWITCH_SEAT values('A42',0,3,)
    INTO BLAIRWITCH_SEAT values('A43',1,3,1221)
    INTO BLAIRWITCH_SEAT values('A44',0,3,)
    INTO BLAIRWITCH_SEAT values('A45',1,3,1221)
    INTO BLAIRWITCH_SEAT values('A46',0,3,)
    INTO BLAIRWITCH_SEAT values('B1',0,3,)
    INTO BLAIRWITCH_SEAT values('B2',0,3,)
    INTO BLAIRWITCH_SEAT values('B3',1,3,1114)
    INTO BLAIRWITCH_SEAT values('B4',0,3,)
    INTO BLAIRWITCH_SEAT values('B5',0,3,)
    INTO BLAIRWITCH_SEAT values('B6',0,3,)
    INTO BLAIRWITCH_SEAT values('B7',1,3,1120)
    INTO BLAIRWITCH_SEAT values('B8',0,3,)
    INTO BLAIRWITCH_SEAT values('B9',1,3,1115)
    INTO BLAIRWITCH_SEAT values('B10',0,3,)
    INTO BLAIRWITCH_SEAT values('B11',1,3,1116)
    INTO BLAIRWITCH_SEAT values('B12',0,3,)
    INTO BLAIRWITCH_SEAT values('B13',1,3,1118)
    INTO BLAIRWITCH_SEAT values('B14',0,3,)
    INTO BLAIRWITCH_SEAT values('B15',0,3,)
    INTO BLAIRWITCH_SEAT values('B16',1,3,1119)
    INTO BLAIRWITCH_SEAT values('B17',0,3,)
    INTO BLAIRWITCH_SEAT values('B18',1,3,1117)
    INTO BLAIRWITCH_SEAT values('B19',0,3,)
    INTO BLAIRWITCH_SEAT values('B20',1,3,1206)
    INTO BLAIRWITCH_SEAT values('B21',0,3,)
    INTO BLAIRWITCH_SEAT values('B22',0,3,)
    INTO BLAIRWITCH_SEAT values('B23',0,3,)
    INTO BLAIRWITCH_SEAT values('B24',0,3,)
    INTO BLAIRWITCH_SEAT values('B25',1,3,1226)
    INTO BLAIRWITCH_SEAT values('B26',0,3,)
    INTO BLAIRWITCH_SEAT values('B27',0,3,)
    INTO BLAIRWITCH_SEAT values('B28',0,3,)
    INTO BLAIRWITCH_SEAT values('B29',1,3,1176)
    INTO BLAIRWITCH_SEAT values('B30',0,3,)
    INTO BLAIRWITCH_SEAT values('B31',0,3,)
    INTO BLAIRWITCH_SEAT values('B32',0,3,)
    INTO BLAIRWITCH_SEAT values('B33',1,3,1171)
    INTO BLAIRWITCH_SEAT values('B34',0,3,)
    INTO BLAIRWITCH_SEAT values('B35',0,3,)
    INTO BLAIRWITCH_SEAT values('B36',1,3,1181)
    INTO BLAIRWITCH_SEAT values('B37',0,3,)
    INTO BLAIRWITCH_SEAT values('B38',1,3,1186)
    INTO BLAIRWITCH_SEAT values('B39',0,3,)
    INTO BLAIRWITCH_SEAT values('B40',0,3,)
    INTO BLAIRWITCH_SEAT values('B41',0,3,)
    INTO BLAIRWITCH_SEAT values('B42',1,3,1126)
    INTO BLAIRWITCH_SEAT values('B43',0,3,)
    INTO BLAIRWITCH_SEAT values('B44',0,3,)
    INTO BLAIRWITCH_SEAT values('B45',0,3,)
    INTO BLAIRWITCH_SEAT values('B46',1,3,1130)
    INTO BLAIRWITCH_SEAT values('C1',1,3,1131)
    INTO BLAIRWITCH_SEAT values('C2',0,3,)
    INTO BLAIRWITCH_SEAT values('C3',0,3,)
    INTO BLAIRWITCH_SEAT values('C4',1,3,1146)
    INTO BLAIRWITCH_SEAT values('C5',0,3,)
    INTO BLAIRWITCH_SEAT values('C6',0,3,)
    INTO BLAIRWITCH_SEAT values('C7',1,3,1156)
    INTO BLAIRWITCH_SEAT values('C8',0,3,)
    INTO BLAIRWITCH_SEAT values('C9',0,3,)
    INTO BLAIRWITCH_SEAT values('C10',1,3,1141)
    INTO BLAIRWITCH_SEAT values('C11',0,3,)
    INTO BLAIRWITCH_SEAT values('C12',0,3,)
    INTO BLAIRWITCH_SEAT values('C13',1,3,1133)
    INTO BLAIRWITCH_SEAT values('C14',0,3,)
    INTO BLAIRWITCH_SEAT values('C15',0,3,)
    INTO BLAIRWITCH_SEAT values('C16',1,3,1151)
    INTO BLAIRWITCH_SEAT values('C17',0,3,)
    INTO BLAIRWITCH_SEAT values('C18',1,3,1136)
    INTO BLAIRWITCH_SEAT values('C19',0,3,)
    INTO BLAIRWITCH_SEAT values('C20',0,3,)
    INTO BLAIRWITCH_SEAT values('C21',0,3,)
    INTO BLAIRWITCH_SEAT values('C22',0,3,)
    INTO BLAIRWITCH_SEAT values('C23',0,3,)
    INTO BLAIRWITCH_SEAT values('C24',0,3,)
    INTO BLAIRWITCH_SEAT values('C25',0,3,)
    INTO BLAIRWITCH_SEAT values('C26',0,3,)
    INTO BLAIRWITCH_SEAT values('C27',0,3,)
    INTO BLAIRWITCH_SEAT values('C28',0,3,)
    INTO BLAIRWITCH_SEAT values('C29',1,3,1132)
    INTO BLAIRWITCH_SEAT values('C30',0,3,)
    INTO BLAIRWITCH_SEAT values('C31',0,3,)
    INTO BLAIRWITCH_SEAT values('C32',0,3,)
    INTO BLAIRWITCH_SEAT values('C33',0,3,)
    INTO BLAIRWITCH_SEAT values('C34',0,3,)
    INTO BLAIRWITCH_SEAT values('C35',0,3,)
    INTO BLAIRWITCH_SEAT values('C36',0,3,)
    INTO BLAIRWITCH_SEAT values('C37',0,3,)
    INTO BLAIRWITCH_SEAT values('C38',0,3,)
    INTO BLAIRWITCH_SEAT values('C39',0,3,)
    INTO BLAIRWITCH_SEAT values('C40',0,3,)
    INTO BLAIRWITCH_SEAT values('C41',0,3,)
    INTO BLAIRWITCH_SEAT values('C42',0,3,)
    INTO BLAIRWITCH_SEAT values('C43',0,3,)
    INTO BLAIRWITCH_SEAT values('C44',0,3,)
    INTO BLAIRWITCH_SEAT values('C45',0,3,)
    INTO BLAIRWITCH_SEAT values('C46',0,3,)

--SELECT * FROM DUAL;
SELECT * FROM BLAIRWITCH_SEAT;

-- ### MOVIE_REVIEW ###

DROP TABLE MOVIE_REVIEW CASCADE CONSTRAINTS;

CREATE TABLE MOVIE_REVIEW (
    review_num VARCHAR2(10) CONSTRAINT movie_review_reviewnum_pk PRIMARY KEY
    movienum NUMBER(1),
    moviename VARCHAR2(50) NOT NULL,
    star NUMBER(2,1),
    review VARCHAR2(300),
);

ALTER TABLE MOVIE_REVIEW ADD FOREIGN KEY (movienum) REFERENCES MOVIEINFO(movienum);

INSERT ALL
    INTO MOVIE_REVIEW values(1,'해리포터 : 죽음의 성물 2',4.0,'그에게 작별을 고하며, 기나긴 여정에 경의를 표한다. 이건 시리즈에 주는 별점이다.', 1)
    INTO MOVIE_REVIEW values(1,'해리포터 : 죽음의 성물 2',5.0,'10년을 우쭈쭈했던 네빌이 멋진 남자가 되는 것을 보았고, 10년을 미워했던 스네이프를 꼭 안아줄 수 있게 되었다.', 2)
    INTO MOVIE_REVIEW values(1,'해리포터 : 죽음의 성물 2',4.0,'마지막이 가장 뛰어난 시리즈를 대하는 기쁨.', 3)
    INTO MOVIE_REVIEW values(1,'해리포터 : 죽음의 성물 2',5.0,'해리포터라는 대장정을 마무리짓는 마지막. 호그와트에서의 대규모 전쟁씬은 흡사 반지의 제왕을 연상시키는 듯', 4)
    INTO MOVIE_REVIEW values(1,'해리포터 : 죽음의 성물 2',4.0,'엔딩 크레딧이 올라갈 때 나의 어린시절이 막을 내리는 느낌을 받았다. 아직 더 호그와트에 머물고 싶은데.', 5)
    INTO MOVIE_REVIEW values(2,'스파이더맨 : 뉴 유니버스',4.5,'Hey~~~ 끝내준다!!! 스파이더맨 최고!!! 그리고 황석희도 최고!!! Not Only, We are All Spider-Man', 6)
    INTO MOVIE_REVIEW values(2,'스파이더맨 : 뉴 유니버스',4.5,'세상에... 마블 최고작이 이런 형태로 나올줄이야... 마블로고부터 시작해 엔딩롤에 쿠키까지! 세련됨을 넘어 쿨함으로 무장한 인싸 파티극!!!', 7)
    INTO MOVIE_REVIEW values(2,'스파이더맨 : 뉴 유니버스',5.0,'마치 입체적인 코믹북을 보는 느낌, 굉장히 신선하고 더할 나위 없이 즐겁다!', 8)
    INTO MOVIE_REVIEW values(2,'스파이더맨 : 뉴 유니버스',5.0,'영화를 보는동안  지루하단 생각을 자체를 하지 못했다. 애니메이션으로 할 수 있는 모든 장점을 연출로 보여주었다.', 9)
    INTO MOVIE_REVIEW values(2,'스파이더맨 : 뉴 유니버스',4.5,'아...놔...유니버스 이런거였어......???? 마블이..아니지.. 세상에나 끝내주네...', 10)
    INTO MOVIE_REVIEW values(3,'블레어 위치 프로젝트 2',2.6,'재미가 없으면 잠이라도 자게 냅두든가...', 11)
    INTO MOVIE_REVIEW values(3,'블레어 위치 프로젝트 2',2.0,'17년 사이에 휘발된 원작의 장점들', 12)
    INTO MOVIE_REVIEW values(3,'블레어 위치 프로젝트 2',3.0,'우아... 오싹하구만...ㅠㅠ 카메라가 너무 흔들려서 정신 산만했다...', 13)
    INTO MOVIE_REVIEW values(3,'블레어 위치 프로젝트 2',3.0,'쳐다보지 말랬잖아! 왜 쳐다봐 ㅠㅠ', 14)
    INTO MOVIE_REVIEW values(3,'블레어 위치 프로젝트 2',1.0,'원작인줄 알고 봤다 하.... 착각하고 본 건 처음이네', 15)
    INTO MOVIE_REVIEW values(4,'어벤져스 2 : 에이지 오브 울트론',3.5,'아이언맨으로부터 시작된 마블의 오래된 팬으로서, 이 수많은 히어로들을 어느 누구 하나 외면하지 않은 채 교통정리해준 것 만으로도 감격', 16)
    INTO MOVIE_REVIEW values(4,'어벤져스 2 : 에이지 오브 울트론',4.0,'화려하고 웅장한 액션과 스케일, 적절한 유머, 다양한 캐릭터들의 협동플레이와 속편으로 가는 완벽한 떡밥까지...', 17)
    INTO MOVIE_REVIEW values(4,'어벤져스 2 : 에이지 오브 울트론',3.5,'기대에 못미쳐도 다음편을 기대하게 만드는 저력..', 18)
    INTO MOVIE_REVIEW values(4,'어벤져스 2 : 에이지 오브 울트론',5.0,'사실 빠심때문에 객관적인 평가가 불가능합니다', 19)
    INTO MOVIE_REVIEW values(4,'어벤져스 2 : 에이지 오브 울트론',2.5,'딱 예고편만큼 의 스칼렛,퀵실버 너무 포스없는 울트론 각 캐릭터들간의 개연성면에서 부족한 연결고리', 20)
    INTO MOVIE_REVIEW values(5,'닥터 스트레인지',4.0,'주술사가 통치하는 이 시국에 화려한 마법사가 등장했군요! 정말 딱 맞는 영화입니다^^', 21)
    INTO MOVIE_REVIEW values(5,'닥터 스트레인지',4.0,'도르마무 거래를 하러왔다', 22)
    INTO MOVIE_REVIEW values(5,'닥터 스트레인지',4.0,'역동적이고 창의적인 시각 디자인.', 23)
    INTO MOVIE_REVIEW values(5,'닥터 스트레인지',3.0,'건물이 왜곡되어 소서러들이 갈릴 때마다 아.. 저게 시각효과팀의 영혼이구나.', 24)
    INTO MOVIE_REVIEW values(5,'닥터 스트레인지',3.5,'첫 스타트라 감질맛나게 보여줘서 아쉽지만 전작 이미지 탈피하고 캐릭터 완벽적응, 어벤져스 도입도 성공적이다. DOCTOR STRANGE WILL RETRUN.', 25)

--SELECT * FROM DUAL;
SELECT * FROM MOVIE_REVIEW;
