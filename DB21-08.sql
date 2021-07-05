/* 期末課題準備用 SQLファイル */
CREATE DATABASE study DEFAULT CHARACTER SET utf8;
use study;

/* ---------------------------------------- */
/* account 【口座テーブル】  */
DROP TABLE IF EXISTS account;
CREATE TABLE account
 ( accountno CHAR(7),
   accname VARCHAR(40),
   type CHAR(1),
   balance INTEGER,
   moddate DATE
 );
/* accountno 口座番号  */
/* accname 名義  */
/* type 種別  */
/* balance 残高 */
/* moddate 更新日  */

/* ---------------------------------------- */
/* closed  【廃止口座テーブル】  */
DROP TABLE IF EXISTS closed;
CREATE TABLE closed
 ( accountno CHAR(7),
   accname VARCHAR(40),
   type CHAR(1),
   clsdbalance INTEGER,
   clsddate DATE
 );
/* accountno 口座番号 */
/* accname 名義  */
/* type 種別  */
/* clsdbalance 解約時残高  */
/* clsddate 解約日  */

/* ---------------------------------------- */
/* transaction 【取引テーブル】  */
DROP TABLE IF EXISTS transaction;
CREATE TABLE transaction
 ( tranno INTEGER,
   reasonid INTEGER,
   date DATE,
   accountno CHAR(7),
   deposit INTEGER,
   withdraw INTEGER
);
/*  tranno 取引番号  */
/*  reasonid 取引事由ID  */
/*  date 日付   */
/*  accountno 口座番号   */
/*  deposit 入金額  */
/*  withdraw 出金額  */

/* ---------------------------------------- */
/* event   【取引事由テーブル】  */
DROP TABLE IF EXISTS event;
CREATE TABLE event
 ( reasonid INTEGER,
   reasonname VARCHAR(20)
 );
/*  reasonid  取引事由ID */
/*  reasonname  取引事由名 */

/* データ投入 */
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0037651','キタムラ　ユウコ',1,1341107,'2020-01-03' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0100807','アキタ　サトル',3,10000,'2018-11-30' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0311240','キムラ　タエ',1,63409,'2020-03-20' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0351333','アイダ　ミユ',1,367911,'2020-01-06' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0671412','タムラ　タカシ',1,678044,NULL );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0887132','スギノ　ノリヨ',1,3491000,'2020-03-11' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '0976410','タムラ　タカシ',1,9803,'2018-08-30' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1016840','オカダ　トシロウ',2,0,'2019-11-13' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1017119','ソネ　タツヤ',1,265000,'2019-11-26' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1046990','ツヅキ　ジュンヤ',1,378911,'2018-03-01' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1106405','センカワ　シゲル',2,5310840,'2020-03-24' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1115600','カガ　アキヨ',1,500000,'2019-12-28' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1170894','タムラ　タカシ',2,100000,'2018-04-01' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1193442','ツキシマ　ワタル',1,5325,'2019-01-22' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1217756','ハマダ　サトシ',1,1399805,'2019-03-24' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1234161','クボデラ　ヨウイチ',1,941670,'2020-03-23' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1316990','モリモト　ハシヤ',1,450980,'2019-12-30' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1566705','スエナガ　アキコ',1,234164,'2020-01-31' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1804479','マツモト　ミワコ',1,53154,'2019-03-03' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '1840675','サイトウ　モモコ',1,0,'2020-01-10' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2004456','カワムラ　タツヤ',1,500000,'2019-12-27' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2086041','セキグチ　ショウイチロウ',1,4397010,'2020-01-15' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2094113','ハシモト　リョウジ',1,3110990,'2020-02-25' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2177301','エガワ　サトコ',1,5325,'2019-02-19' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2226460','ホリ　ミツル',1,904620,'2020-02-02' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2234108','サカタ　リョウヘイ',1,1147913,'2019-02-14' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2316474','セキ　ショウタロウ',3,1064497,'2019-12-02' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '2750902','コイズミ　マチコ',1,714166,'2020-03-24' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( 2761055,'ワダ　アキヒコ',1,14190,'2020-01-21' );
INSERT INTO account ( accountno,accname,type,balance,moddate ) VALUES ( '3104451','ナカジョウ　ヨシヒコ',2,8136406,'2020-03-13' );

INSERT INTO closed ( accountno,accname,type,clsdbalance,clsddate ) VALUES ( '0051432','オダ　シンタロウ',1,41310,'2019-12-24' );
INSERT INTO closed ( accountno,accname,type,clsdbalance,clsddate ) VALUES ( '0097310','サイトウ　モモコ',1,130040,'2018-06-25' );
INSERT INTO closed ( accountno,accname,type,clsdbalance,clsddate ) VALUES ( '0945671','モリシタ　カズミ',1,0,'2018-12-18' );

INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 1,19,'2018-01-05','0051432',NULL,41310 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 2,1,'2018-03-01',1017119,65000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 3,2,'2018-03-01',1046990,NULL,19000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 4,5,'2018-03-01','0945671',NULL,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 5,1,'2018-09-03','0887132',1000000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 6,1,'2018-12-10','0887132',1000000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 7,3,'2019-06-10','0887132',1000000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 8,2,'2019-11-26',1017119,NULL,200000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 9,1,'2019-12-10',2086041,1164047,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 10,3,'2019-12-10','0887132',491000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 11,1,'2019-12-25','0037651',30000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 12,2,'2019-12-28',1115600,NULL,100000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 13,3,'2019-12-28',1115600,NULL,120000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 14,6,'2019-12-28',1115600,NULL,256 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 15,3,'2019-12-28',1115600,31500,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 16,1,'2020-01-05','0311240',100000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 17,1,'2020-01-11','0351333',50000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 18,3,'2020-01-11','0351333',NULL,12600 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 19,6,'2020-01-11','0351333',NULL,128 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 20,3,'2020-01-21',1106405,1714930,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 21,1,'2020-02-01',3104451,100000,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 22,2,'2020-02-25',3104451,NULL,60000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 23,4,'2020-02-28',2750902,NULL,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 24,3,'2020-03-13',3104451,807310,NULL );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 25,2,'2020-03-13',3104451,NULL,55000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 26,3,'2020-03-13',3104451,NULL,15100 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 27,2,'2020-03-20','0311240',NULL,36591 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 28,2,'2020-03-23',1234161,NULL,30000 );
INSERT INTO transaction ( tranno,reasonid,date,accountno,deposit,withdraw ) VALUES ( 29,1,'2020-03-23',2750902,50000,NULL );

INSERT INTO event ( reasonid,reasonname ) VALUES ( 1,'預入' );
INSERT INTO event ( reasonid,reasonname ) VALUES ( 2,'引出' );
INSERT INTO event ( reasonid,reasonname ) VALUES ( 3,'振込' );
INSERT INTO event ( reasonid,reasonname ) VALUES ( 4,'通帳記入' );
INSERT INTO event ( reasonid,reasonname ) VALUES ( 5,'残高照会' );
INSERT INTO event ( reasonid,reasonname ) VALUES ( 6,'手数料引落' );
INSERT INTO event ( reasonid,reasonname ) VALUES ( 9,'その他' );
