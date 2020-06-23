-- 테이블 삭제
DROP TABLE guestbook;

-- 시퀀스 삭제
DROP SEQUENCE seq_no; 

-- 테이블 생성
CREATE TABLE guestbook (
    no NUMBER,
    name VARCHAR2(80),
    password VARCHAR2(20),
    content VARCHAR2(2000),
    reg_date DATE,
    PRIMARY KEY(no)
);

-- 시퀀스 생성
CREATE SEQUENCE seq_no
INCREMENT BY 1
START WITH 1;

-- 데이터 입력
INSERT INTO guestbook VALUES(SEQ_NO.nextval, '이정재', '1234', '안녕하세요', sysdate);
INSERT INTO guestbook VALUES(SEQ_NO.nextval, '이정재', '1234', 'hello', sysdate);

-- commit
COMMIT;

-- select
SELECT no,
        name,
        password,
        content,
        reg_date
FROM guestbook;