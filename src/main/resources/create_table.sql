CREATE SEQUENCE seq_personaltt;

CREATE TABLE IF NOT EXISTS tt_subject (
    code varchar(10) not null primary key,
    section varchar(10),
    major varchar(30) not null,
    title varchar(100) not null,
    classyear int,
    credit int not null, 
    professor varchar(50),
    classhour varchar(70),
    classroom varchar(100),
    campussort varchar(3),
    etc varchar(100)
);

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0001701002', '전공선택', '문헌정보학과',  '저작권', 4, 3, '이문학', '월7,화3~4', '1301330', '제물포', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( 'YAA9011001', '교직', '교직',  '교육심리', 2, 2, '양태연', '화5~6', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12345678', '교양필수', '교양',  '인간과우주', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12374568', '교양선택', '교양',  '인간과우주', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12745678', '전공기초', '컴퓨터공학부',  '컴퓨터네트워크보안', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12397578', '전공필수', '컴퓨터공학부',  '컴퓨터네트워크', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X6345678', '전공선택', '컴퓨터공학부',  '데이터베이스', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X123nnm78', '일반선택', '군사학',  '인터넷특론', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X1123678', '군사학', '군사학',  '군사학(2)', 2, 3, '정연철', '화1~3', 'SN204', '송도', '' );


CREATE TABLE IF NOT EXISTS tt_personal (
    idx_no int not null primary key,
    member_srl int not null,
    semester varchar(10) not null,
    tt_no int not null,
    subject_list varchar(255),
    insertdate datetime not null,
    updatedate datetime
);

INSERT INTO tt_personal( idx_no, member_srl, semester, tt_no, subject_list, insertdate )
VALUES ( 1, 3465, '2014_2', 1, 'XAA2031001,0001250001,0001248001', '2012-02-12 11:22:10' );

CREATE TABLE IF NOT EXISTS tt_departinfo (
    ind_no int not null primary key,
    colleage varchar(50) not null,
    major varchar(100) not null,
    sort int not null
);


INSERT INTO tt_departinfo (ind_no, colleage, major, sort)
VALUES (1, '교양', '교양', 0);
INSERT INTO tt_departinfo (ind_no, colleage, major, sort)
VALUES (2, '교직', '교직', 0);
INSERT INTO tt_departinfo (ind_no, colleage, major, sort)
VALUES (3, '일선', '일선', 0);
INSERT INTO tt_departinfo (ind_no, colleage, major, sort)
VALUES (4, '군사학','군사학', 0);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (5,'인문대학', '국어국문학과',1);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (6,'인문대학', '불어불문학과',1);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (7,'인문대학', '영어영문학과',1);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (8,'인문대학', '일어일문학과',1);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (9,'인문대학', '독어독문학과',1);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (10,'인문대학', '중어중국학과',1);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (11,'자연과학대학', '수학과',2);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (12,'자연과학대학', '물리학과',2);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (13,'자연과학대학', '화학과',2);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (14,'자연과학대학', '소비자아동학과',2);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (15,'자연과학대학', '패션산업학과',2);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (16,'자연과학대학', '해양학과',2);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (17,'사회과학대학', '행정학과',3);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (18,'사회과학대학', '사회복지학과',3);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (19,'사회과학대학', '정치외교학과',3);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (20,'사회과학대학', '신문방송학과',3);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (21,'사회과학대학', '문헌정보학과',3);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (22,'사회과학대학', '창의인재개발학과',3);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (23,'법과대학', '법학과',4);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (24,'공과대학', '기계시스템공학부',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (25,'공과대학', '기계시스템공학부(야)',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (26,'공과대학', '기계로봇공학전공',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (27,'공과대학', '기계로봇공학전공(야)',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (28,'공과대학', '자동차공학전공',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (29,'공과대학', '전기공학과',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (30,'공과대학', '전자공학과',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (31,'공과대학', '전자공학과(야)',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (32,'공과대학', '산업경영공학과',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (33,'공과대학', '산업경영공학과(야)',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (34,'공과대학', '신소재공학과',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (35,'공과대학', '안전공학과',5);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (36,'공과대학', '에너지화학공학과',5);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (37,'정보기술대학', '컴퓨터공학부',6);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (38,'정보기술대학', '컴퓨터공학부(야)',6);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (39,'정보기술대학', '정보통신공학과',6);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (40,'정보기술대학', '임베디드시스템공학과',6);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (41,'경영대학', '경영학부',7);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (42,'경영대학', '세무회계학과',7);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (43,'동북아경제통상대학', '동북아국제통상학부',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (44,'동북아경제통상대학', '중국통상전공',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (45,'동북아경제통상대학', '일분통상전공',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (46,'동북아경제통상대학', '러시아통상전공',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (47,'동북아경제통상대학', '미국통상전공',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (48,'동북아경제통상대학', '무역학부',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (49,'동북아경제통상대학', '무역학부(야)',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (50,'동북아경제통상대학', '경제학과',8);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (51,'동북아경제통상대학', '경제학과(야)',8);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (52,'예술체육대학', '디자인학부',9);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (53,'예술체육대학', '한국화전공',9);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (54,'예술체육대학', '서양화전공',9);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (55,'예술체육대학', '공연예술학과',9);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (56,'예술체육대학', '체육학부',9);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (57,'예술체육대학', '운동건강과학부',9);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (58,'사범대학', '국어교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (59,'사범대학', '영어교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (60,'사범대학', '일어교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (61,'사범대학', '수학교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (62,'사범대학', '체육교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (63,'사범대학', '유아교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (64,'사범대학', '역사교육과',10);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (65,'사범대학', '윤리교육과',10);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (66,'도시과학대학', '도시행정학과',11);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (67,'도시과학대학', '건설환경공학전공',11);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (68,'도시과학대학', '환경공학전공',11);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (69,'도시과학대학', '도시건설공학전공',11);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (70,'도시과학대학', '건축학전공',11);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (71,'도시과학대학', '건축공학전공',11);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (72,'도시과학대학', '도시설계전공',11);

INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (73,'생명과학기술대학', '생명공학부',12);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (74,'생명과학기술대학', '생명과학부',12);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (75,'생명과학기술대학', '생명과학전공',12);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (76,'생명과학기술대학', '분자의생명전공',12);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (77,'생명과학기술대학', '생명공학전공',12);
INSERT INTO tt_departinfo ( ind_no, colleage, major, sort)
VALUES (78,'생명과학기술대학', '나노바이오전공',12);


CREATE TABLE IF NOT EXISTS xe_member (  
	member_srl int NOT NULL PRIMARY KEY,
	user_id varchar(80) NOT NULL
);

INSERT INTO xe_member (member_srl, user_id)
VALUES (3894, 'zakarose');

CREATE TABLE  IF NOT EXISTS tt_line_evaulation(
	le_no int not null primary key,
	subject_code varchar(10) not null, 
	member_srl int not null,
	comment varchar(100),
	star_score float not null,
	insertdate datetime not null
);

INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 1, '0001701002', 3894, '이거좋아용', 9.1, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 2, '0001701002', 3894, '이거싫어용', 9.2, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 3, '0001701002', 3894, '이거그거그래요', 9.3, '2012-02-12 11:22:10' );