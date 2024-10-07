USE commodity;

DROP TABLE COMMODITY;
DROP TABLE REPAIR_HISTORY;
DROP TABLE COMMODITY_SALE;
DROP TABLE CORPORATE;
DROP TABLE CUSTOMER;
DROP TABLE COMMODITY_TYPE;



CREATE TABLE COMMODITY
(
    COMMODITY_CODE   CHAR(3) NOT NULL COMMENT '상품번호',
    COMMODITY_TITLE    VARCHAR(100) NOT NULL COMMENT '상품명',
    SALE_DATE    DATE NOT NULL COMMENT '판매일자',
    SALE_PRICE    INT NOT NULL COMMENT '판매가격',
    COMMODITY_TYPE_CODE INT NOT NULL COMMENT '상품타입코드',
    CONSTRAINT pk_COMMODITY_CODE PRIMARY KEY (COMMODITY_CODE)
)
    ENGINE=INNODB COMMENT = '상품';

INSERT INTO COMMODITY (COMMODITY_CODE,COMMODITY_TITLE,COMMODITY_TYPE_CODE,SALE_DATE,SALE_PRICE) VALUES
                                                                                                    ('A1', '하트목걸이', '1', STR_TO_DATE('24/02/06','%y/%m/%d'), 15000),
                                                                                                    ('A2', '곰돌이목걸이', '1', STR_TO_DATE('24/02/07','%y/%m/%d'), 21000),
                                                                                                    ('A3', '강아지목걸이', '1', STR_TO_DATE('24/02/08','%y/%m/%d'), 23000),
                                                                                                    ('A4', '토끼목걸이', '1', STR_TO_DATE('24/02/09','%y/%m/%d'), 24000),
                                                                                                    ('A5', '키위귀걸이', '2', STR_TO_DATE('24/02/10','%y/%m/%d'), 24000),
                                                                                                    ('A6', '체리귀걸이', '2', STR_TO_DATE('24/02/11','%y/%m/%d'), 24000),
                                                                                                    ('A7', '애플귀걸이', '2', STR_TO_DATE('24/02/12','%y/%m/%d'), 24000),
                                                                                                    ('A8', '파인애플귀걸이', '2', STR_TO_DATE('24/02/13','%y/%m/%d'), 24000),
                                                                                                    ('A9', '양자리반지', '3', STR_TO_DATE('24/03/24','%y/%m/%d'), 24000),
                                                                                                    ('A10', '처녀자리반지', '3', STR_TO_DATE('24/02/15','%y/%m/%d'), 24000),
                                                                                                    ('A11', '천징자리반지', '3', STR_TO_DATE('24/02/16','%y/%m/%d'), 24000),
                                                                                                    ('A12', '게자리반지', '3', STR_TO_DATE('24/05/17','%y/%m/%d'), 24000),
                                                                                                    ('A13', '염소자리반지', '3', STR_TO_DATE('24/02/20','%y/%m/%d'), 24000),
                                                                                                    ('A14', '물병자리반지', '3', STR_TO_DATE('24/02/25','%y/%m/%d'), 24000),
                                                                                                    ('A15', '물고기자리반지', '3', STR_TO_DATE('24/03/08','%y/%m/%d'), 24000),
                                                                                                    ('A16', '사수자리반지', '3', STR_TO_DATE('24/02/06','%y/%m/%d'), 24000),
                                                                                                    ('A17', '전갈자리반지', '3', STR_TO_DATE('24/05/07','%y/%m/%d'), 24000),
                                                                                                    ('A18', '사자자리반지', '3', STR_TO_DATE('24/06/09','%y/%m/%d'), 24000),
                                                                                                    ('A19', ' 태그호잉어시계', '4', STR_TO_DATE('24/02/06','%y/%m/%d'), 6550000),
                                                                                                    ('A20', '시띠즌시계', '4', STR_TO_DATE('24/09/06','%y/%m/%d'), 1650000),
                                                                                                    ('A21', '꾸찌시계', '4', STR_TO_DATE('24/07/06','%y/%m/%d'), 1550000),
                                                                                                    ('A22', '세이시계', '4', STR_TO_DATE('24/08/06','%y/%m/%d'), 4250000),
                                                                                                    ('A23', '가넷팔찌', '5', STR_TO_DATE('24/04/06','%y/%m/%d'), 5500000),
                                                                                                    ('A24', '자수정팔찌', '5', STR_TO_DATE('24/08/15','%y/%m/%d'), 4500000),
                                                                                                    ('A25', '아투아마린팔찌', '5', STR_TO_DATE('24/10/15','%y/%m/%d'), 600000),
                                                                                                    ('A26', '다이아몬드팔찌', '5', STR_TO_DATE('24/09/15','%y/%m/%d'), 500000),
                                                                                                    ('A27', '에메랄드드팔찌', '5', STR_TO_DATE('24/08/01','%y/%m/%d'), 4600000),
                                                                                                    ('A28', '진주팔찌', '5', STR_TO_DATE('24/08/08','%y/%m/%d'), 4600000),
                                                                                                    ('A29', '진주팔찌', '5', STR_TO_DATE('24/08/20','%y/%m/%d'), 4900000),
                                                                                                    ('A30', '루비팔찌', '5', STR_TO_DATE('24/08/20','%y/%m/%d'), 4800000);

CREATE TABLE COMMODITY_TYPE
(
    COMMODITY_TYPE_CODE    INT NOT NULL COMMENT '상품타입코드',
    COMMODITY_TYPE    VARCHAR(100) NOT NULL COMMENT '상품종류',
    CONSTRAINT pk_COMMODITY_TYPE_CODE  PRIMARY KEY (COMMODITY_TYPE_CODE)
)
    ENGINE=INNODB COMMENT = '상품종류';

INSERT INTO COMMODITY_TYPE (COMMODITY_TYPE_CODE,COMMODITY_TYPE) VALUES
                                                                    ('1', '목걸이'),
                                                                    ('2', '귀걸이'),
                                                                    ('3', '반지'),
                                                                    ('4', '시계'),
                                                                    ('5', '팔찌');

CREATE TABLE REPAIR_HISTORY
(
    REPAIR_CODE    CHAR(3) NOT NULL COMMENT '수리코드',
    REPAIR_REQUESTDATE    DATE NOT NULL COMMENT '수리요청일자',
    REPAIR_DUEDATE    DATE NOT NULL COMMENT '수리완료일자',
    CONSTRAINT pk_REPAIR_CODE PRIMARY KEY (REPAIR_CODE)
)
    ENGINE=INNODB COMMENT = '수리이력';

CREATE TABLE COMMODITY_SALE
(
    SAEL_CODE    CHAR(3) NOT NULL COMMENT '판매코드',
    SELLER     VARCHAR(20) NOT NULL COMMENT '판매처',
    SALE_DATE    DATE NOT NULL COMMENT '판매일자',
    CONSTRAINT pk_SAEL_CODE PRIMARY KEY (SAEL_CODE)
)
    ENGINE=INNODB COMMENT = '상품판매';

CREATE TABLE CORPORATE
(
    CORPORATE_CODE    CHAR(4) NOT NULL COMMENT '회사코드',
    CORPORATE_NAME    VARCHAR(20) NOT NULL COMMENT '회사명',
    CORPORATE_PHONE    VARCHAR(20) NOT NULL COMMENT '회사연락처',
    CONSTRAINT pk_CORPORATE_CODE PRIMARY KEY (CORPORATE_CODE)
)
    ENGINE=INNODB COMMENT = '회사';

INSERT INTO CORPORATE (CORPORATE_CODE,CORPORATE_NAME,CORPORATE_PHONE) VALUES
                                                                          ('G1','ㄱ회사','0231245689'),
                                                                          ('G2','ㄴ회사','0233568974'),
                                                                          ('G3','ㄷ회사','0236589427'),
                                                                          ('G4','ㄹ회사','0235965871'),
                                                                          ('G5','ㅁ회사','0245617891'),
                                                                          ('G6','ㅂ회사','0212365891'),
                                                                          ('G7','ㅅ회사','0212345661'),
                                                                          ('G8','ㅇ회사','0223456781'),
                                                                          ('G9','ㅈ회사','0234567891'),
                                                                          ('G10','ㅊ회사','0245678911'),
                                                                          ('G12','ㅋ회사','0278946581'),
                                                                          ('G14','ㅌ회사','0274568991'),
                                                                          ('G15','ㅍ회사','0275487562'),
                                                                          ('G16','ㅎ회사','0276897451');

CREATE TABLE CUSTOMER
(
    CUSTOMER_CODE    CHAR(4) NOT NULL COMMENT '고객코드',
    CUSTOMER_NAME    VARCHAR(20) NOT NULL COMMENT '고객명',
    CUSTOMER_PHONE    VARCHAR(20) NOT NULL COMMENT '고객연락처',
    CONSTRAINT pk_CUSTOMER_CODE PRIMARY KEY (CUSTOMER_CODE)
)
    ENGINE=INNODB COMMENT = '고객';

INSERT INTO CUSTOMER (CUSTOMER_CODE, CUSTOMER_NAME, CUSTOMER_PHONE) VALUES
                                                                        ('E1','선동일','01012345678'),
                                                                        ('E2','유재식','01099541358'),
                                                                        ('E3','아이요','01078946227'),
                                                                        ('E4','임시환','01065493277'),
                                                                        ('E5','박호검','01094761827'),
                                                                        ('E6','지창욱','01035524793'),
                                                                        ('E7','공유진','01098871456'),
                                                                        ('E8','유해짐','01096558137'),
                                                                        ('E9','김종꾹','01044795681'),
                                                                        ('E10','송지요','01015687942'),
                                                                        ('E12','하동후','01035428976'),
                                                                        ('E14','양세차','01033247899'),
                                                                        ('E15','지석지','01066452278'),
                                                                        ('E16','이동욱','01055443789'),
                                                                        ('E17','이중석','01065984478'),
                                                                        ('E18','정해인','01023568947'),
                                                                        ('E19','김우빈','01078984567'),
                                                                        ('E20','방명수','01026541123'),
                                                                        ('E21','윤은해','01098568421'),
                                                                        ('E22','김수형','01081547653'),
                                                                        ('E23','이미노','01078956102');

COMMIT;




































