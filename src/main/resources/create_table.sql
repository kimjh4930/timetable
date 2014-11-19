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
VALUES ( '0001701002', '전공선택', '문헌정보학과',  '저작권', 4, 3, '이문학', '월7,화1~2', '1301330', '제물포', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( 'YAA9011001', '교직', '교직',  '교육심리', 2, 2, '양태연', '월', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12345678', '교양필수', '교양',  '인간과우주', 2, 3, '정연철', '화', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12374568', '교양선택', '교양',  '인간과우주', 2, 3, '정연철', '수1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12745678', '전공기초', '컴퓨터공학부',  '컴퓨터네트워크보안', 1, 3, '정연철', '수1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X12397578', '전공필수', '컴퓨터공학부',  '컴퓨터네트워크', 2, 3, '정연철', '목1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X6345678', '전공선택', '컴퓨터공학부',  '데이터베이스', 3, 3, '정연철', '목1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X123nnm78', '일반선택', '군사학',  '인터넷특론', 2, 3, '정연철', '금1~3', 'SN204', '송도', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0X1123678', '군사학', '군사학',  '군사학(2)', 2, 3, '정연철', '금1~3', 'SN204', '송도', '' );


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
VALUES ( 1, '0001701002', 3894, '이거좋아용1-첫번째', 1, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 2, '0001701002', 3894, '이거싫어용2', 3, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 3, '0001701002', 3894, '이거그거그래요3', 5, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 4, '0001701002', 3894, '이거좋아용', 1, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 5, '0001701002', 3894, '이거싫어용', 3, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 6, '0001701002', 3894, '이거그거그래요', 5, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 7, '0001701002', 3894, '이거좋아용', 1, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 8, '0001701002', 3894, '이거싫어용', 3, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 9, '0001701002', 3894, '이거그거그래요', 5, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 10, '0001701002', 3894, '이거좋아용9', 1, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 11, '0001701002', 3894, '이거싫어용10', 3, '2012-02-12 11:22:10' );
INSERT INTO tt_line_evaulation( le_no, subject_code, member_srl, comment, star_score, insertdate)
VALUES ( 12, '0001701002', 3894, '이거그거그래요11-마지막', 5, '2012-02-12 11:22:10' );

