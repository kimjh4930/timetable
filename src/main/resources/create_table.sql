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
VALUES ( '0001701002', '전선', '문헌정보학과',  '저작권', 4, 3, '이문학', '월7,화3~4', '1301330', '제물포', '' );

INSERT INTO tt_subject ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( 'YAA9011001', '교직', '교직',  '교육심리', 2, 2, '양태연', '화5~6', 'SN204', '송도', '' );

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


