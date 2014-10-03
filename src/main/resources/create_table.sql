CREATE SEQUENCE seq_timetable;

CREATE TABLE IF NOT EXISTS tb_inu4u_2015_1 (
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

INSERT INTO tb_inu4u_2015_1 ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( '0001701002', '전선', '문헌정보학과',  '저작권', 4, 3, '이문학', '월7,화3~4', '1301330', '제물포', '' );

INSERT INTO tb_inu4u_2015_1 ( code, section, major, title, classyear, credit, professor, classhour, classroom, campussort, etc )
VALUES ( 'YAA9011001', '교직', '교직',  '교육심리', 2, 2, '양태연', '화5~6', 'SN204', '송도', '' );