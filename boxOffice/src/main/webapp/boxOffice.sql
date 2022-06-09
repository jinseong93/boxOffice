-- 영화 DB
drop table member;
create table member(
	id varchar2(20) primary key, --아이디
	password varchar2(20), -- 패스워드
	name varchar2(20), --이름
	textcount number(10), -- 작성글 수
	ticketcount number(10), -- 예매 횟수 
	tel varchar2(100), -- 전화번호
	address varchar2(500), --주소
	reg_date date, --등록일
	score number(10),
	memberDel varchar(2) default 'n' -- 삭제여부
);

select * from member;
insert into member values('test1','123','신현태',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('test2','123','김진성',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('test3','123','김진만',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('test4','123','서정훈',0,0,'010-0000-0000','없음',sysdate,100,'n');
insert into member values('master','master','master',0,0,'010-0000-0000','없음',sysdate,100,'n');

delete from  movie;
drop table movie;

CREATE TABLE movie (
mvCode NUMBER PRIMARY KEY NOT NULL, -- 영화번호
mvTitle varchar2(300), -- 영화제목
mvTag NUMBER, -- 1이면 상영종료, 2- 상영중 3- 상영예정
openDate DATE, -- 개봉일
director VARCHAR2(30), -- 감독
majorActor VARCHAR2(50), -- 주역 배우
runningTime VARCHAR2(20), -- 진행시간
genre VARCHAR2(50), -- 장르
poster VARCHAR2(300), -- 포스터
mvInfo VARCHAR2(2000), -- 영화 정보
mvContent VARCHAR2(4000), --줄거리
mvPrice NUMBER,--영화가격
mvGrade NUMBER, -- 평점
movieStar NUMBER(10), -- 평점(별)
mvAge VARCHAR2(30) -- 관람 연령
);
select * from movie;
 
-- 영화 DB
	INSERT INTO movie
	VALUES( 1, '스파이더맨 노 웨이 홈' , 2 , '2021.12.15' , '존 왓츠' , '톰 홀랜드', '148분', '액션', 'SpiderMan.jpg', '스파이더맨: 노 웨이 홈은 마블 시네마틱 유니버스의 27번째 장편 영화다.
스파이더맨 시리즈의 3번째 작품', '정체가 탄로난 스파이더맨 피터 파커(톰 홀랜드)가 문제를 해결하기 위해
닥터 스트레인지(베네딕트 컴버배치)의 도움을 받던 중 뜻하지 않게 멀티버스가 열리게 되고
이를 통해 닥터 옥토퍼스(알프리드 몰리나) 등 각기 다른 차원의 숙적들이 나타나며 사상 최악의 위기를 맞게 되는데....', 10000 , 9, 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 2, '닥터 스트레인지 : 대혼돈의 멀티버스' , 3 , '2022.5.4' , '샘 레이미' , '베네딕트 컴버배치' , '미정' , '액션' , 'DoctorStrange.jpg' , '마블 시네마틱 유니버스 페이즈 4의 5번째 영화이자
닥터 스트레인지 실사영화 시리즈이며 6년만에 개봉하는 2번째 작품이다.' , '스티븐 스트레인지 박사는 멀티버스의 문을 여는 금기의 주문을 시전하여
다른 차원의 스트레인지와 맞닥뜨린다. 다른 차원의 스트레인지에 대항하고자 힘을 모은다.' , 10000 , 0, 5 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 3, '반지의 제왕: 반지 원정대' , 1 , '2001.5.4' , '피터 잭슨' , '숀 애스틴' , '558분' , '판타지' , 'TheRordOftheRing.jpg' , 'J. R. R. 톨킨이 집필한 판타지 소설 《반지의 제왕》의 실사 영화 3부작.' , '절대 반지를 손에 넣게 된 프로도 베긴스는 반지를 파괴해 중간계를 구하기 위해
반지 원정대와 같이 여정을 떠나는데... ', 10000 , 9, 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 4, '극장판 주술회전 0' , 2 , '2021.12.24' , '박성후' , '오가타 메구미' , '105분' , '에니메이션' , 'GekijoubanJujutsuKaisen0.jpg' , '아쿠타미 게게의 만화 주술회전 0권을 원작으로 하는 극장판이자
제작사 MAPPA의 이 세상의 한구석에 이후 5년만의 2번째 극장 애니메이션이다.' , '주술사만의 낙원을 만들려는 게토는 비술사를 섬멸하겠다면서, 신주쿠와 교토에 천의 저주를 내리는데…
과연 옷코츠는 게토를 막을 수 있을까? 그리고 리카의 저주를 풀 수 있을까?' , 10000 , 8, 5 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 5, '이터널스' , 1 , '2021.11.3' , '클로이 자오' , '마동석' , '156분' , '액션' , 'Eternals.jpg' , '마블 시네마틱 유니버스에 등장하는 외계 종족 집단 이터널스의 이야기' , '외계에서 고대 지구에 도래한 존재들인 이터널스, 고대 인류를 이끌긴 해도
셀레스티얼의 지시로 데비안츠와 관련된 사건 외에는 
인류사에 직접적으로 개입하지는 않았던 이들에게 어느 순간 이변이 일어나는데...', 10000 , 6 , 4 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 6, '더 배트맨' , 2 , '2022.3.1' , '맷 리브스' , '로버트 패틴슨' , '176분' , '스릴러' , 'TheBatman.jpg', '《더 배트맨》은 2022년 개봉한 미국의 슈퍼히어로 영화이며, 맷 리브스가 감독과 공동각본을 맡았다. 영화 《배트맨》 시리즈 리부트 영화이다.', '무장강도에게 부모님을 잃은 브루스 웨인은 배트맨으로서 자경단으로서 활약하고있다.', 10000 , 6 , 4 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 7, '조커' , 1 , '2019.10.2' , '토드 필립스' , '호아킨 피닉스' , '123분' , '범죄' , 'Joker.jpg' , '호아킨 피닉스가 주연을 맡아 DC 코믹스의 캐릭터 조커를 연기하는 토드 필립스 감독의 범죄 스릴러 영화.
DC 필름스에서 제작하지만 DC 확장 유니버스에 속하지 않는 완전히 독립적인 영화다' , '광대 아서는 고담 교외의 한 작은 극장 옆 폐업직전의 뮤직샵에서 노란 광고판을 들고 춤을 추며 땡처리 광고를 하던 도중
10대 양아치들에게 광고판을 빼앗긴다. 한참을 달려 막다른 골목까지 쫓아가지만,
숨어있던 양아치에게 광고판으로 역관광을 당해 쓰러지고 발로 마구잡이 구타를 당한 뒤, 소지품도 싹 다 털려버리고 만다.
바닥에 홀로 널브러진 아서와 부서진 광고판을 뒤로 한 채 <JOKER> 타이틀이 화면을 꽉 채우며 영화가 시작된다.', 10000 , 9, 5 , '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 8, '덩케르트' , 1 , '2017.7.20' , '크리스토퍼 놀란' , '톰 하디' , '106분' , '전쟁' , 'Dunkerque.jpg' , '2017년 7월 20일 개봉한 크리스토퍼 놀란 감독의 전쟁 영화.
제2차 세계 대전 중 일어난 됭케르크 철수작전을 소재로 한다.' , '연합군은 여전히 고립 상황에 직면해 있었고, 영국군 사령부는 육-해-공을 가리지 않는 계속된 독일군의 공격 속에서 됭케르크 철수 계획을 세웠다.
그리하여 1940년 5월 28일부터 6월 4일까지 계속된 작전 끝에 338,226명의 영국군 및 프랑스군 장병들을 잉글랜드로 철수시킬 수 있었다.
당시 영국은 본격적으로 전쟁준비를 끝낸 시점이 아니라 저 40만 병력은 가용가능한 전체 병력을 총 투입한 셈이었고
만약 이들이 포위 섬멸 당했으면 영국은 더 이상 싸울 병력이 없었을 상황이다. 다행히 이들이 철수에 성공하여 영국은 훗날 반격을 할 수 있는 전력을 보존했으며
처칠을 비롯한 영국인들은 전쟁은 이제부터 시작이라는 자세로 반격을 위해 노력한다. 연합군은 이후 4년간 전 세계에서 독일과 싸움을 벌이다가
프랑스령의 노르망디 해안에서 사상 최대의 상륙작전을 감행할 수 있었다. 때문에 이 철수작전은 2차 세계대전에서 가장 극적인 상황 중 하나로 평가된다.' , 10000 , 8 , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 9, '씽2게더' , 2 , '2022.1.5' , '가스 제닝스' , '매튜 맥커너히' , '110분' , '음악' , 'Sing2.jpg' , '일루미네이션 엔터테인먼트의 3D 애니메이션 씽의 속편.' , '대국민 오디션 이후 각자의 자리에서 꿈을 이루고 있는 버스터 문(매튜 맥커너히)과 크루들에게
레드 쇼어 시티에서 전 세계가 주목하는 사상 최고의 쇼가 펼쳐진다는 소식이 들려오고 버스터 문과 크루들은 도전에 나선다.
그러나 최고의 스테이지에 서기 위한 경쟁은 이전과는 비교도 할 수 없을 만큼 치열하고
버스터 문은 완벽한 라이브를 위해 종적을 감춘 레전드 뮤지션 클레이(보노)를 캐스팅하겠다는 파격 선언을 하는데!' , 10000 , 7 , 5 , '전체이용가');
	INSERT INTO movie
	VALUES( 10, '수퍼 소닉 2' , 3 , '2022.4.6' , '제프 파울러' , '짐 캐리' , '110분 ', '액션' , 'Sonic2.jpg' , '2022년 4월 8일 개봉 예정인 원작 소닉 더 헤지혹 시리즈의 2번째 실사 영화이자
수퍼 소닉의 속편이다.' , '도시의 악당들을 쫓아내며 지구를 지키는 히어로 소닉은 소닉에게 쫓겨나 버섯 행성에서 힘을 키우던 
악당 로보트릭을 다시 처치하기 위해 지구를 지배하기 위해 다시 돌아온다.
업그레이드된 로보트닉과 강력한 펀치 파워 너클즈의 공격을 당하던 소닉은 파트너 테일즈의 도움으로
위기를 모면하게 되고 소닉과 테일즈, 로보트닉과 너클즈의 지구를 사수하기 위한 상황이 시작된다.' , 10000 , 9 , 4 , '전체이용가');
	INSERT INTO movie
	VALUES( 11, '잭 스나이더의 저스티스 리그' , 1 , '2021.3.18' , '잭 스나이더' , '벤 에플렉' , '362분' , '액션' , 'Justiceleague.jpg' , 'DC 확장 유니버스의 5번째 영화 저스티스 리그의 감독판이다. 일명 스나이더 컷으로 불린다.
한국시간 기준으로 2021년 3월 18일 오후 6시에 HBO 맥스를 통해 공개되었다. ' , '배트맨 대 슈퍼맨: 저스티스의 시작 후반부 둠스데이와의 전투 장면에서 이어진다.
슈퍼맨이 둠스데이에게 죽임을 당하면서 외치는 비명이 퍼지면서 사이보그의 집에 있던 인간 측의 마더박스에 움직임이 감지된다.
그 시각 제네시스 체임버 또한 슈퍼맨의 비명에 반응해 세 개의 마더박스와 스테픈울프의 형상을 홀로그램으로 재현하고 이를 체임버 안에 있던 렉스 루터가 보게 된다.
비명은 바다속 아틀란티스에 보관되어 있는 아틀란티스 측의 마더박스에도 닿게 되고 메라는 심상치 않음을 직감한다.
그리고 비명은 데미스키라 측의 마더박스가 보관되어 있는 아마존의 마더박스 보관소에도 닿아 마더박스의 균열을 감지한 전사들은 여왕에게 알리라고 한다.
이후 브루스 웨인은 산을 넘어 어느 외딴 항구 마을에 도착한다.', 10000  , 7 , 4 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 12, '토르 : 러브 앤 썬더' , 3 , '2022.7.8' , '타이카 와이티티' , '크리스 헴스워스' , '133분' , '액션' , 'Thor4.jpg' , '마블 시네마틱 유니버스 페이즈 4의 6번째 작품이자 토르 실사영화 시리즈의 4번째 작품이며 5년만에 개봉하는 영화이다.
현재의 토르 시리즈는 이번 편이 마지막 편이다.' , '이 영화는 여성 슈퍼히어로인 또 다른 토르, 제인 포스터가 여주인공이다. 그녀는 토르 대신 무게를 부서진 묠니르를 복구해 휘두른다.
하지만 제인 포스터가 암과 투병하는 모습을 보이며, 토르의 망치를 집어들고 나면 매번 생명력과 힘을 잃게되는데...' , 10000 , 0 , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 13, '모비우스' , 3 , '2022.11.11' , '다니엘 에스피노사' , '자레도 레토' , '104분' , '액션' , 'Morbius.jpg' , '다니엘 에스피노사가 만든 스파이더맨과 세계관을 공유하는 영화' , '희귀혈액병을 앓고 있는 생화학자 ‘모비우스’(자레드 레토)는 동료인 ‘마르틴’(아드리아 아르호나)과 함께 치료제 개발에 몰두한다.
흡혈 박쥐를 연구하던 중 마침내 치료제 개발에 성공한 ‘모비우스’는 새 생명과 강력한 힘을 얻게 되지만
동시에 흡혈을 하지 않고는 생명을 유지할 수 없게 된다.
그러던 중 ‘모비우스’와 같은 병을 앓고 있던 그의 친구 ‘마일로’(맷 스미스)도 ‘모비우스’와 같은 힘을 얻게 되는데…
세상을 구할 능력, 파괴할 본능! 마블 최강의 안티 히어로가 탄생한다!', 10000 , 0 , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 14, '스텔라' , 3 , '2022.04.06' , '권수경' , '손호준' , '98분' , 'SF', 'stellar.jpg' , '권수경 감독의 코미디 추적 드라마 영화' , '막다른 인생 제대로 한 번 달려본 적 없는 차량담보업계 에이스 ‘영배’(손호준). 보스 ‘서사장’(허성태)이 하룻밤 맡긴 슈퍼카가
절친 ‘동식’(이규형)과 함께 감쪽같이 사라지고 영배는 범인으로 몰려 서사장 일당에게 쫓기기 시작한다.
믿을 사람 하나 없고, 도망칠 곳도 없는 그의 앞에 나타난 건 바로 1987년식 오래된 자동차 ‘스텔라’.<
최대 시속 50km, 남은 시간은 3시간… 유일한 희망인 스텔라와 함께 보스의 슈퍼카를 반드시 찾아야만 한다!' , 10000 , 0 , 4 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 15, '어벤져스 : 엔드게임' , 1 , '2019.4.24' , '앤서니 루소, 조 루소' , '로버트 다우니 주니어' , '249분' , '액션', 'avengers.jpg' , '어벤져스 실사영화 시리즈의 4번째 작품이자, 마블 시네마틱 유니버스의 스물 두번째 작품이며
페이즈 3의 10번째 작품이자 지난 2008년
아이언맨을 시작으로 장장 11년간 이어져온 인피니티 사가를 마무리하는 작품.' , '인피니티 워 이후 절반만 살아남은 지구, 마지막 희망이 된 어벤져스.
먼저 떠난 그들을 위해 모든 것을 걸었다! 위대한 어벤져스, 운명을 바꿀 최후의 전쟁이 펼쳐진다!' , 10000 , 8, 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 16, '이상한 나라의 수학자' , 2 , '2022.3.9' , '박동훈' , '최민식' , '117분' , '드라마', 'Mathematician.jpg' , '이상한 나라의 수학자는 최민식의 코미디나 로맨스 비중이 많은 드라마틱한 영화이다.' , '정답만을 찾는 세상에서 방황하던 `한지우`에게 올바른 풀이 과정을 찾아나가는 법을 가르치며
`이학성` 역시 뜻하지 않은 삶의 전환점을 맞게 된다.' , 10000 , 8 , 5 , '12세 이상 관람가');
	INSERT INTO movie
	VALUES( 17, '뜨거운 피' , 3 , '2023.3.23' , '천명관' , '정우' , '119분' , '범죄', 'HotBlooded.jpg' , '천명관 감독의 2022년 3월 23일 개봉 예정인 한국 영화.' , '부산 변두리 작은 포구 구암의 절대적인 주인 손영감(김갑수)
그의 밑에서 수년간 수족으로 일해온 희수(정우)는 무엇 하나 이뤄낸 것 없이
큰돈 한번 만져보지 못한 채 반복되는 건달 짓이 지긋지긋하다.
1993년, 범죄와의 전쟁 이후 새로운 구역을 집어삼키기 위해
물색중인 영도파 건달들은 아무도 관심 갖지 않는 구암에 눈독을 들이고
영도파 에이스이자 희수의 오랜 친구 철진(지승현)이 희수에게 은밀히 접근한다.' , 10000 , 0, 4 ,  '15세 이상 관람가');
	INSERT INTO movie
	VALUES( 18, '문폴' , 2 , '2023.3.16' , '롤랜드 에머리히' , '할리 베리' , '130분' , 'SF', 'MoonFall.jpg' , '2022년 3월 16일에 개봉한 롤랜드 에머리히 감독의 SF, 재난 영화.' , '2011년, 우주왕복선에서 위성 수리 작업중이던 선장 조 파울러와 대원 브라이언 하퍼는
정체를 알수 없는 외계 물질의 습격을 당해 동료 우주비행사를 잃는 사고를 당한다.
이때 브라이언 하퍼는 수수께끼의 외계 물질이 달의 표면인 위난의 바다로 이동하는 것을 목격한다.
하퍼는 나사의 사고 조사 청문회에서 이를 지속적으로 증언하는데
선장 파울러가 사고 당시 의식을 잃어 이 발언을 지지해주지 못했고
이로 인해 나사는 사고원인을 하퍼의 거짓증언 및 인적실수로 결론내리고
하퍼는 우주비행사의 모든 명예를 잃고 나사에서 불명예 퇴직하게 되는데....' , 10000 , 5, 3 , '12세 이상 관람가');

create sequence rv_seq;

delete REVIEW;
drop table review;

create table review( -- 리뷰게시판
 rvNum NUMBER primary Key, --리뷰게시판번호
 rvTitle VARCHAR2(100), --리뷰게시판 제목
 rvContent VARCHAR2(4000), --리뷰게시판 내용
 id VARCHAR2(20), --사용자 id
 mvGrade NUMBER(10), -- 평점
 rvLike NUMBER, -- 좋아요
 rvDate DATE, -- 게시글 작성날짜
 rvDel VARCHAR2(2) default 'n', -- 게시글 삭제
 mvTitle VARCHAR2(500), -- 영화제목
 mvCode NUMBER,-- 영화코드
 rvReadCount NUMBER, -- 리뷰 조회수
 rpCount NUMBER -- 댓글수
);
select * from review;



insert into review values(1, '쏘쏘', 'test', 'test3', 7, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(2, '대 명 작', 'test', 'test3', 10, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(3, '영화 너무 김', 'test', 'test3', 2, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(4, '노잼', 'test', test3, 3, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(5, '나쁘지 않았음', 'test', 'test3', 6, 0, sysdate, 'n', '반지의 제왕: 반지 원정대', 3, 0, 0);
insert into review values(6, '쏘쏘2', 'test', 'test3', 7, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(7, '대 명 작2', 'test', 'test3', 10, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(8, '영화 너무 김2', 'test', 'test3', 2, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(9, '노잼2', 'test', test3, 3, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(10, '나쁘지 않았음2', 'test', 'test3', 6, 0, sysdate, 'n', '이터널스', 5, 0, 0);
insert into review values(11, '쏘쏘3', 'test', 'test3', 7, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(12, '대 명 작3', 'test', 'test3', 10, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(13, '영화 너무 김3', 'test', 'test3', 2, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(14, '노잼3', 'test', 'test3', 3, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(15, '나쁘지 않았음3', 'test', 'test3', 6, 0, sysdate, 'n', '조커', 7, 0, 0);
insert into review values(16, '쏘쏘4', 'test', 'test3', 7, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(17, '대 명 작4', 'test', 'test3', 10, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(18, '영화 너무 김4', 'test', 'test3', 2, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(19, '노잼4', 'test', 'test3', 3, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(20, '나쁘지 않았음4', 'test', 'test3', 6, 0, sysdate, 'n', '덩케르트', 8, 0, 0);
insert into review values(21, '쏘쏘5', 'test', 'test3', 7, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(22, '대 명 작5', 'test', 'test3', 10, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(23, '영화 너무 김5', 'test', 'test3', 2, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(24, '노잼5', 'test', 'test3', 3, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(25, '나쁘지 않았음5', 'test', 'test3', 6, 0, sysdate, 'n', '잭 스나이더의 저스티스 리그', 11, 0, 0);
insert into review values(26, '쏘쏘6', 'test', 'test3', 7, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(27, '대 명 작6', 'test', 'test3', 10, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(28, '영화 너무 김6', 'test', 'test3', 2, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(29, '노잼6', 'test', 'test3', 3, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);
insert into review values(30, '나쁘지 않았음6', 'test', 'test3', 6, 0, sysdate, 'n', '어벤져스 : 엔드게임', 15, 0, 0);

-----------------------------------------------------------------------------------------------------------------------------
create sequence ev_seq;

delete event;

drop table event;

create table event(	-- 이벤트게시판
evNum number(10) primary key,	-- 이벤트 게시판 번호
evTitle varchar2(100),	-- 이벤트 게시판 제목
evContent varchar2(1000),	-- 이벤트 게시판 내용
id varchar2(20),	-- 사용자 id
evTitlePhoto varchar2(100),	-- 이벤트 게시글 제목 사진
evContentPhoto varchar2(100),	-- 이벤트 게시글 내용 사진
evDate date, -- 게시글 작성날짜
evStart varchar2(20),	--이벤트 시작날짜
evEnd varchar2(20),	-- 이벤트 종료날짜
evDel VARCHAR2(2) default 'n', -- 게시글 삭제
evReadCount NUMBER -- 조회수
);

insert into event values(1, '캐시비/티머니', ' ', 'master', 'eventTitle9.jpg', 'eventContent9.jpg', sysdate, '2018-09-03', '2023-08-31', 'n', 0);
insert into event values(2, '마이신한포인트', ' ', 'master', 'eventTitle10.jpg', 'eventContent10.jpg', sysdate, '2019-09-01', '2023-06-30', 'n', 0);
insert into event values(3, '기아레드멤버스', ' ', 'master', 'eventTitle11.jpg', 'eventContent11.jpg', sysdate, '2019-12-27', '2023-12-31', 'n', 0);
insert into event values(4, '현대블루멤버스', ' ', 'master', 'eventTitle12.jpg', 'eventContent12.jpg', sysdate, '2019-12-27', '2023-12-31', 'n', 0);
insert into event values(5, '굿노트다이어리', ' ', 'master', 'eventTitle7.jpg', 'eventContent7.jpg', sysdate, '2021-05-31', '2099-12-31', 'n', 0);
insert into event values(6, '소닉 투명카드 증정', ' ', 'master', 'sonicTitle.jpg', 'sonicContent.jpg', sysdate, '2022-04-06', '2022-04-30', 'n', 0);
insert into event values(7, '소방공무원', ' ', 'master', 'eventTitle4.jpg', 'eventContent4.jpg', sysdate, '2022-01-01', '2022-12-31', 'n', 0);
insert into event values(8, '국군장병', ' ', 'master', 'eventTitle5.jpg', 'eventContent5.jpg', sysdate, '2022-01-01', '2022-12-31', 'n', 0);
insert into event values(9, '경찰-해양경찰', ' ', 'master', 'eventTitle6.jpg', 'eventContent6.jpg', sysdate, '2022-01-01', '2022-12-31', 'n', 0);
insert into event values(10, '카카오뱅크', ' ', 'master', 'eventTitle8.jpg', 'eventContent8.jpg', sysdate, '2022-02-01', '2022-07-31', 'n', 0);
insert into event values(11, '모비우스 아트카드', ' ', 'master', 'mobrbiusTitle.jpg', 'mobrbiusContent.jpg', sysdate, '2022-03-30', '2022-04-30', 'n', 0);
insert into event values(12, '4월 릴레이 관림 이벤트', ' ', 'master', 'eventTitle.jpg', 'eventContent.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(13, '아카데미 수상작 상영전', ' ', 'master', 'eventTitle2.jpg', 'eventContent2.jpg', sysdate, '2022-03-31', '2022-04-12', 'n', 0);
insert into event values(14, '"뜨거운 피" 를 보여주세요', ' ', 'master', 'eventTitle3.jpg', 'eventContent3.jpg', sysdate, '2022-03-30', '2022-04-12', 'n', 0);
insert into event values(15, '소닉 현장 증정 이벤트', ' ', 'master', 'sonicTitle2.jpg', 'sonicContent2.jpg', sysdate, '2022-04-06', '2022-04-30', 'n', 0);
insert into event values(16, '소닉 아트카드', ' ', 'master', 'sonicTitle3.jpg', 'sonicContent3.jpg', sysdate, '2022-04-06', '2022-04-30', 'n', 0);
insert into event values(17, '모비우스 포스터 증정', ' ', 'master', 'mobrbiusTitle2.jpg', 'mobrbiusContent2.jpg', sysdate, '2022-03-30', '2022-04-30', 'n', 0);
insert into event values(18, '소닉 스페셜 경품 이벤트', ' ', 'master', 'sonicTitle4.jpg', 'sonicContent4.jpg', sysdate, '2022-04-01', '2022-04-30', 'n', 0);
insert into event values(19, '개봉 8주차 이벤트', ' ', 'master', '0Title.jpg', 'sonicContent.jpg', sysdate, '2022-04-07', '2022-04-14', 'n', 0);
insert into event values(20, '스텔라 무대인사', ' ', 'master', 'stellarTitle.jpg', 'stellarContent.jpg', sysdate, '2022-04-09', '2022-04-10', 'n', 0);
select * from event;

---------------------------------------------------------------------------------------------------------------
drop table likes;

delete LIKES;
create table likes (
likeNum number primary key, 
rvNum number, 
id VARCHAR2(20) 
);

select * from likes;
---------------------------------------------------------------------------------------------------------------
delete reply;

drop table reply;

create table reply (
rpNum number(10) primary key,
rvNum number(10),
rpContent varchar2(1000),
id varchar2(20),
rpDate Date, 
rpDel varchar2(2) default 'n', 
ref number(10),
ref_level number(10),	-- 깊이
ref_step number(10)		-- 순서
);

select * from reply;

drop table store cascade constraints;
CREATE table STORE
(
pdCode NUMBER PRIMARY KEY NOT NULL,
pdName VARCHAR2(30),
pdPrice NUMBER,
image VARCHAR2(300)

);

select * from store;


delete from store;

INSERT INTO store values(1,'오리지널팝콘' , 5000, 'orPop.jpg');
INSERT INTO store values(2,'카라멜팝콘', 6000,'caPop.jpg');
INSERT INTO store values(3,'치즈팝콘', 6000,'chPop.jpg');
INSERT INTO store values(4,'콜라', 3000,'coke.jpg');
INSERT INTO store values(5,'아이스아메리카노',4000,'Cof.jpg');
INSERT INTO store values(6,'아메리카노',3500,'hCof.jpg');
INSERT INTO store values(7,'즉석구이오징어',4000,'squ.jpg');
INSERT INTO store values(8,'칠리나쵸',4900,'naC.jpg');
INSERT INTO store values(9,'플레인핫도그',3500,'hDog.jpg');



drop table reservation cascade constraints;
CREATE table RESERVATION
(
rsCode NUMBER PRIMARY KEY NOT NULL, -- 예약 코드               					rscode
nsCode NUMBER, 						-- 상영 코드                                  nscode
mvCode NUMBER, 						-- 영화코드										movieCode
seats VARCHAR2(20), 				--좌석										seats
id VARCHAR2(20), 					-- 아이디										id
ticketCode NUMBER, 					-- 티켓코드									ticketCode
finalPrice NUMBER(10), 				-- 최종 영화값									finalPrice
rsCheck VARCHAR2(2) default 'n', 	-- 예약 확인									rsCheck
shCheck VARCHAR2(2) default 'n', 	-- 시청 확인									shCheck
rvCheck VARCHAR2(2) default 'n' 	-- 리뷰 확인									rvCheck
);



delete from RESERVATION;

insert into RESERVATION values(1,02,01,'A1','shyun',1,10000,'y','y','y');
insert into RESERVATION values(2,10,02,'A1','shyun',2,12000,'y','y','y');
insert into RESERVATION values(3,13,03,'A1','shyun',3,9000,'y','y','y');
insert into RESERVATION values(4,18,04,'A1','shyun',4,10000,'y','y','y');
insert into RESERVATION values(5,88,05,'A1','shyun',5,8000,'y','y','y');
insert into RESERVATION values(6,133,06,'A1','shyun',6,9000,'y','y','y');
insert into RESERVATION values(7,02,01,'A2','shyun',7,10000,'y','y','y');
insert into RESERVATION values(8,02,01,'A3','shyun',7,10000,'y','y','y');
insert into RESERVATION values(9,02,01,'A4','shyun',7,10000,'y','y','y');
insert into RESERVATION values(10,10,02,'A2','shyun',8,12000,'y','y','y');
insert into RESERVATION values(11,888,26,'A1','shyun',9,10000,'y','y','y');
insert into RESERVATION values(12,889,27,'A1','shyun',10,10000,'y','y','y');
insert into RESERVATION values(13,878,28,'A1','shyun',11,11000,'y','y','y');
insert into RESERVATION values(14,874,30,'A1','shyun',12,12000,'y','y','y');
insert into RESERVATION values(15,900,21,'A1','shyun',13,15000,'y','y','y');


drop table theater cascade constraints;
CREATE table THEATER
(
ttCode NUMBER PRIMARY KEY NOT NULL, -- 영화관 코드
ttLoc  VARCHAR2(20),				 -- 영화관 위치
ttName VARCHAR2(20) 				 -- 영화관 이름
);


delete from theater;
insert into THEATER values(01,'강남','CGV');
insert into THEATER values(02,'강남','메가박스');
insert into THEATER values(03,'위례','CGV');
insert into THEATER values(04,'위례','메가박스');
insert into THEATER values(05,'의정부','메가박스');
insert into THEATER values(06,'의정부','cgv');
insert into THEATER values(07,'용인','메가박스');
insert into THEATER values(08,'용인','cgv');

select *from theater;


drop table screen cascade constraints;
CREATE table SCREEN
(
screenCode NUMBER PRIMARY KEY NOT NULL, -- 상영관코드
screenTime VARCHAR2(10), 				-- 상영 시간 
screenNum NUMBER 						-- 몇관인지 
);

delete from screen;
insert into SCREEN values(01,'08:00',01);
insert into SCREEN values(02,'11:00',01);
insert into SCREEN values(03,'14:00',01);
insert into SCREEN values(04,'17:00',01);
insert into SCREEN values(05,'20:00',01);
insert into SCREEN values(06,'08:00',02);
insert into SCREEN values(07,'11:00',02);
insert into SCREEN values(08,'14:00',02);
insert into SCREEN values(09,'17:00',02);
insert into SCREEN values(10,'20:00',02);
insert into SCREEN values(11,'08:00',03);
insert into SCREEN values(12,'11:00',03);
insert into SCREEN values(13,'14:00',03);
insert into SCREEN values(14,'17:00',03);
insert into SCREEN values(15,'20:00',03);
insert into SCREEN values(16,'08:00',04);
insert into SCREEN values(17,'11:00',04);
insert into SCREEN values(18,'14:00',04);
insert into SCREEN values(19,'17:00',04);
insert into SCREEN values(20,'20:00',04); --강남cgv

insert into SCREEN values(21,'08:00',01);
insert into SCREEN values(22,'11:00',01);
insert into SCREEN values(23,'14:00',01);
insert into SCREEN values(24,'17:00',01);
insert into SCREEN values(25,'20:00',01);
insert into SCREEN values(26,'08:00',02);
insert into SCREEN values(27,'11:00',02);
insert into SCREEN values(28,'14:00',02);
insert into SCREEN values(29,'17:00',02);
insert into SCREEN values(30,'20:00',02); --강남 메가박스

insert into SCREEN values(31,'08:30',01);
insert into SCREEN values(32,'11:30',01);
insert into SCREEN values(33,'14:30',01);
insert into SCREEN values(34,'17:30',01);
insert into SCREEN values(35,'20:30',01);
insert into SCREEN values(36,'08:30',02);
insert into SCREEN values(37,'11:30',02);
insert into SCREEN values(38,'14:30',02);
insert into SCREEN values(39,'17:30',02);
insert into SCREEN values(40,'20:30',02);
insert into SCREEN values(41,'08:30',03);
insert into SCREEN values(42,'11:30',03);
insert into SCREEN values(43,'14:30',03);
insert into SCREEN values(44,'17:30',03);
insert into SCREEN values(45,'20:30',03); --위례 cgv

insert into SCREEN values(46,'08:15',01);
insert into SCREEN values(47,'11:15',01);
insert into SCREEN values(48,'14:15',01);
insert into SCREEN values(49,'17:15',01);
insert into SCREEN values(50,'20:15',01);
insert into SCREEN values(51,'08:15',02);
insert into SCREEN values(52,'11:15',02);
insert into SCREEN values(53,'14:15',02);
insert into SCREEN values(54,'17:15',02);
insert into SCREEN values(55,'20:15',02); --위례 메가박스

insert into SCREEN values(56,'09:00',01);
insert into SCREEN values(57,'13:00',01);
insert into SCREEN values(58,'17:00',01);
insert into SCREEN values(59,'19:00',01);
insert into SCREEN values(60,'22:00',01);
insert into SCREEN values(61,'09:00',02);
insert into SCREEN values(62,'13:00',02);
insert into SCREEN values(63,'17:00',02);
insert into SCREEN values(64,'19:00',02);
insert into SCREEN values(65,'22:00',02); -- 의정부 cgv

insert into SCREEN values(66,'09:10',01);
insert into SCREEN values(67,'13:10',01);
insert into SCREEN values(68,'17:10',01);
insert into SCREEN values(69,'19:10',01);
insert into SCREEN values(70,'22:10',01);
insert into SCREEN values(71,'09:10',02);
insert into SCREEN values(72,'13:10',02);
insert into SCREEN values(73,'17:10',02);
insert into SCREEN values(74,'19:10',02);
insert into SCREEN values(75,'22:10',02);   -- 의정부 메가박스

insert into SCREEN values(76,'07:15',01);
insert into SCREEN values(77,'10:15',01);
insert into SCREEN values(78,'13:15',01);
insert into SCREEN values(79,'16:15',01);
insert into SCREEN values(80,'19:15',01);
insert into SCREEN values(81,'07:15',02);
insert into SCREEN values(82,'10:15',02);
insert into SCREEN values(83,'13:15',02);
insert into SCREEN values(84,'16:15',02);
insert into SCREEN values(85,'19:15',02);  --용인 cgv 

insert into SCREEN values(86,'08:25',01);
insert into SCREEN values(87,'11:25',01);
insert into SCREEN values(88,'14:25',01);
insert into SCREEN values(89,'17:25',01);
insert into SCREEN values(90,'20:25',01);
insert into SCREEN values(91,'08:25',02);
insert into SCREEN values(92,'11:25',02);
insert into SCREEN values(93,'14:25',02);
insert into SCREEN values(94,'17:25',02);
insert into SCREEN values(95,'20:25',02);   --용인 메가박스

---스파이더맨 의정부 메가박스부터없음
insert into SCREEN values(96,'09:00',01);
insert into SCREEN values(97,'13:00',01);
insert into SCREEN values(98,'17:00',01);
insert into SCREEN values(99,'19:00',01);
insert into SCREEN values(100,'22:00',01);
insert into SCREEN values(101,'09:00',02);
insert into SCREEN values(102,'13:00',02);
insert into SCREEN values(103,'17:00',02);
insert into SCREEN values(104,'19:00',02);
insert into SCREEN values(105,'22:00',02);

--
insert into SCREEN values(106,'11:30',01);
insert into SCREEN values(107,'14:30',01);
insert into SCREEN values(108,'17:30',01);
insert into SCREEN values(109,'19:30',01);
insert into SCREEN values(110,'22:30',01);
insert into SCREEN values(111,'11:50',02);
insert into SCREEN values(112,'13:50',02);
insert into SCREEN values(113,'17:50',02);
insert into SCREEN values(114,'19:50',02);
insert into SCREEN values(115,'23:50',02);

insert into SCREEN values(116,'11:30',01);
insert into SCREEN values(117,'14:30',01);
insert into SCREEN values(118,'17:30',01);
insert into SCREEN values(119,'19:30',01);
insert into SCREEN values(120,'22:30',01);
insert into SCREEN values(121,'11:50',02);
insert into SCREEN values(122,'13:50',02);
insert into SCREEN values(123,'17:50',02);
insert into SCREEN values(124,'19:50',02);
insert into SCREEN values(125,'23:50',02);

insert into SCREEN values(126,'11:30',01);
insert into SCREEN values(127,'14:30',01);
insert into SCREEN values(128,'17:30',01);
insert into SCREEN values(129,'19:30',01);
insert into SCREEN values(130,'22:30',01);
insert into SCREEN values(131,'11:50',02);
insert into SCREEN values(132,'13:50',02);
insert into SCREEN values(133,'17:50',02);
insert into SCREEN values(134,'19:50',02);
insert into SCREEN values(135,'23:50',02);

insert into SCREEN values(136,'11:25',01);
insert into SCREEN values(137,'14:25',01);
insert into SCREEN values(138,'17:25',01);
insert into SCREEN values(139,'19:25',01);
insert into SCREEN values(140,'22:25',01);
insert into SCREEN values(141,'11:25',02);
insert into SCREEN values(142,'13:25',02);
insert into SCREEN values(143,'17:25',02);
insert into SCREEN values(144,'19:25',02);
insert into SCREEN values(145,'23:25',02);

insert into SCREEN values(146,'11:25',01);
insert into SCREEN values(147,'14:25',01);
insert into SCREEN values(148,'17:25',01);
insert into SCREEN values(149,'19:25',01);
insert into SCREEN values(150,'22:25',01);
insert into SCREEN values(151,'11:25',02);
insert into SCREEN values(152,'13:25',02);
insert into SCREEN values(153,'17:25',02);
insert into SCREEN values(154,'19:25',02);
insert into SCREEN values(155,'23:25',02);

insert into SCREEN values(156,'11:25',01);
insert into SCREEN values(157,'14:25',01);
insert into SCREEN values(158,'17:25',01);
insert into SCREEN values(159,'19:25',01);
insert into SCREEN values(160,'22:25',01);
insert into SCREEN values(161,'11:25',02);
insert into SCREEN values(162,'13:25',02);
insert into SCREEN values(163,'17:25',02);
insert into SCREEN values(164,'19:25',02);
insert into SCREEN values(165,'23:25',02);

insert into SCREEN values(166,'11:25',01);
insert into SCREEN values(167,'14:25',01);
insert into SCREEN values(168,'17:25',01);
insert into SCREEN values(169,'19:25',01);
insert into SCREEN values(170,'22:25',01);
insert into SCREEN values(171,'11:25',02);
insert into SCREEN values(172,'13:25',02);
insert into SCREEN values(173,'17:25',02);
insert into SCREEN values(174,'19:25',02);
insert into SCREEN values(175,'23:25',02);


---------


insert into SCREEN values(176,'10:25',01);
insert into SCREEN values(177,'12:25',01);
insert into SCREEN values(178,'14:25',01);
insert into SCREEN values(179,'19:25',01);
insert into SCREEN values(180,'22:25',01);
insert into SCREEN values(181,'10:25',02);
insert into SCREEN values(182,'12:25',02);
insert into SCREEN values(183,'14:25',02);
insert into SCREEN values(184,'19:25',02);
insert into SCREEN values(185,'23:25',02);


insert into SCREEN values(186,'11:25',02);
insert into SCREEN values(187,'14:25',01);
insert into SCREEN values(188,'17:25',02);
insert into SCREEN values(189,'19:25',03);
insert into SCREEN values(190,'22:25',04);
insert into SCREEN values(191,'11:25',05);
insert into SCREEN values(192,'13:25',05);
insert into SCREEN values(193,'17:25',06);
insert into SCREEN values(194,'19:25',05);
insert into SCREEN values(195,'23:25',03);

insert into SCREEN values(196,'11:45',02);
insert into SCREEN values(197,'14:45',01);
insert into SCREEN values(198,'17:45',02);
insert into SCREEN values(199,'19:45',03);
insert into SCREEN values(200,'22:45',04);
insert into SCREEN values(201,'11:45',05);
insert into SCREEN values(202,'13:45',05);
insert into SCREEN values(203,'17:45',06);
insert into SCREEN values(204,'19:45',05);
insert into SCREEN values(205,'23:45',03);

insert into SCREEN values(206,'11:45',02);
insert into SCREEN values(207,'14:45',01);
insert into SCREEN values(208,'17:45',02);
insert into SCREEN values(209,'19:45',03);
insert into SCREEN values(210,'22:45',04);
insert into SCREEN values(211,'11:45',05);
insert into SCREEN values(212,'13:45',05);
insert into SCREEN values(213,'17:45',06);
insert into SCREEN values(214,'19:45',05);
insert into SCREEN values(215,'23:45',03);

insert into SCREEN values(216,'11:45',02);
insert into SCREEN values(217,'14:45',01);
insert into SCREEN values(218,'17:45',02);
insert into SCREEN values(219,'19:45',03);
insert into SCREEN values(220,'22:45',04);
insert into SCREEN values(221,'11:45',05);
insert into SCREEN values(222,'13:45',05);
insert into SCREEN values(223,'17:45',06);
insert into SCREEN values(224,'19:45',05);
insert into SCREEN values(225,'23:45',03);

insert into SCREEN values(226,'11:45',02);
insert into SCREEN values(227,'14:45',01);
insert into SCREEN values(228,'17:45',02);
insert into SCREEN values(229,'19:45',03);
insert into SCREEN values(230,'22:45',04);
insert into SCREEN values(231,'11:45',05);
insert into SCREEN values(232,'13:45',05);
insert into SCREEN values(233,'17:45',06);
insert into SCREEN values(234,'19:45',05);
insert into SCREEN values(235,'23:45',03);

insert into SCREEN values(236,'11:45',02);
insert into SCREEN values(237,'14:45',01);
insert into SCREEN values(238,'17:45',02);
insert into SCREEN values(239,'19:45',03);
insert into SCREEN values(240,'22:45',04);

select * from SCREEN;


drop table NOWSHOWING;
drop table NOWSHOWING cascade constraint;
CREATE TABLE NOWSHOWING(
nsCode NUMBER primary key not null, --상영코드
mvCode NUMBER, 						-- 영화코드
ttCode NUMBER, 						-- 극장코드
screenCode NUMBER, 					-- 스크린코드
showingDay VARCHAR2(100), 			--상영날짜
pchk VARCHAR2(2) default 'n' 		-- 상영코드 시간별제어
);



delete from NOWSHOWING;

insert into NOWSHOWING values(01,01,01,01,'4월 15일','n');
insert into NOWSHOWING values(02,01,01,02,'4월 15일','n');
insert into NOWSHOWING values(03,01,01,03,'4월 15일','n');
insert into NOWSHOWING values(04,01,01,04,'4월 15일','n');
insert into NOWSHOWING values(05,01,01,05,'4월 15일','n'); 
insert into NOWSHOWING values(06,04,01,06,'4월 15일','n');
insert into NOWSHOWING values(07,04,01,07,'4월 15일','n');
insert into NOWSHOWING values(08,04,01,08,'4월 15일','n');
insert into NOWSHOWING values(09,04,01,09,'4월 15일','n');
insert into NOWSHOWING values(10,04,01,10,'4월 15일','n'); 
insert into NOWSHOWING values(11,06,01,11,'4월 15일','n');
insert into NOWSHOWING values(12,06,01,12,'4월 15일','n');
insert into NOWSHOWING values(13,06,01,13,'4월 15일','n');
insert into NOWSHOWING values(14,06,01,14,'4월 15일','n');
insert into NOWSHOWING values(15,06,01,15,'4월 15일','n'); 
insert into NOWSHOWING values(16,09,01,16,'4월 15일','n');
insert into NOWSHOWING values(17,09,01,17,'4월 15일','n');
insert into NOWSHOWING values(18,09,01,18,'4월 15일','n');
insert into NOWSHOWING values(19,09,01,19,'4월 15일','n');
insert into NOWSHOWING values(20,09,01,20,'4월 15일','n');
insert into NOWSHOWING values(21,16,01,21,'4월 15일','n');
insert into NOWSHOWING values(22,16,01,22,'4월 15일','n');
insert into NOWSHOWING values(23,16,01,23,'4월 15일','n');
insert into NOWSHOWING values(24,16,01,24,'4월 15일','n');
insert into NOWSHOWING values(25,16,01,25,'4월 15일','n');
insert into NOWSHOWING values(26,18,01,26,'4월 15일','n');
insert into NOWSHOWING values(27,18,01,27,'4월 15일','n');
insert into NOWSHOWING values(28,18,01,28,'4월 15일','n');
insert into NOWSHOWING values(39,18,01,29,'4월 15일','n');
insert into NOWSHOWING values(30,18,01,30,'4월 15일','n');


------------------------------------------------------------------

insert into NOWSHOWING values(31,01,01,01,'4월 16일','n');
insert into NOWSHOWING values(32,01,01,02,'4월 16일','n');
insert into NOWSHOWING values(33,01,01,03,'4월 16일','n');
insert into NOWSHOWING values(34,01,01,04,'4월 16일','n');
insert into NOWSHOWING values(35,01,01,05,'4월 16일','n'); 
insert into NOWSHOWING values(36,04,01,06,'4월 16일','n');
insert into NOWSHOWING values(37,04,01,07,'4월 16일','n');
insert into NOWSHOWING values(38,04,01,08,'4월 16일','n');
insert into NOWSHOWING values(39,04,01,09,'4월 16일','n');
insert into NOWSHOWING values(40,04,01,10,'4월 16일','n'); 
insert into NOWSHOWING values(41,06,01,11,'4월 16일','n');
insert into NOWSHOWING values(42,06,01,12,'4월 16일','n');
insert into NOWSHOWING values(43,06,01,13,'4월 16일','n');
insert into NOWSHOWING values(44,06,01,14,'4월 16일','n');
insert into NOWSHOWING values(45,06,01,15,'4월 16일','n'); 
insert into NOWSHOWING values(46,09,01,16,'4월 16일','n');
insert into NOWSHOWING values(47,09,01,17,'4월 16일','n');
insert into NOWSHOWING values(48,09,01,18,'4월 16일','n');
insert into NOWSHOWING values(49,09,01,19,'4월 16일','n');
insert into NOWSHOWING values(50,09,01,20,'4월 16일','n');
insert into NOWSHOWING values(51,16,01,21,'4월 16일','n');
insert into NOWSHOWING values(52,16,01,22,'4월 16일','n');
insert into NOWSHOWING values(53,16,01,23,'4월 16일','n');
insert into NOWSHOWING values(54,16,01,24,'4월 16일','n');
insert into NOWSHOWING values(55,16,01,25,'4월 16일','n');
insert into NOWSHOWING values(56,18,01,26,'4월 16일','n');
insert into NOWSHOWING values(57,18,01,27,'4월 16일','n');
insert into NOWSHOWING values(58,18,01,28,'4월 16일','n');
insert into NOWSHOWING values(59,18,01,29,'4월 16일','n');
insert into NOWSHOWING values(60,18,01,30,'4월 16일','n');

insert into NOWSHOWING values(61,01,01,01,'4월 17일','n');
insert into NOWSHOWING values(62,01,01,02,'4월 17일','n');
insert into NOWSHOWING values(63,01,01,03,'4월 17일','n');
insert into NOWSHOWING values(64,01,01,04,'4월 17일','n');
insert into NOWSHOWING values(65,01,01,05,'4월 17일','n'); 
insert into NOWSHOWING values(66,04,01,06,'4월 17일','n');
insert into NOWSHOWING values(67,04,01,07,'4월 17일','n');
insert into NOWSHOWING values(68,04,01,08,'4월 17일','n');
insert into NOWSHOWING values(69,04,01,09,'4월 17일','n');
insert into NOWSHOWING values(70,04,01,10,'4월 17일','n'); 
insert into NOWSHOWING values(71,06,01,11,'4월 17일','n');
insert into NOWSHOWING values(72,06,01,12,'4월 17일','n');
insert into NOWSHOWING values(73,06,01,13,'4월 17일','n');
insert into NOWSHOWING values(74,06,01,14,'4월 17일','n');
insert into NOWSHOWING values(75,06,01,15,'4월 17일','n'); 
insert into NOWSHOWING values(76,09,01,16,'4월 17일','n');
insert into NOWSHOWING values(77,09,01,17,'4월 17일','n');
insert into NOWSHOWING values(78,09,01,18,'4월 17일','n');
insert into NOWSHOWING values(79,09,01,19,'4월 17일','n');
insert into NOWSHOWING values(80,09,01,20,'4월 17일','n');
insert into NOWSHOWING values(81,16,01,21,'4월 17일','n');
insert into NOWSHOWING values(82,16,01,22,'4월 17일','n');
insert into NOWSHOWING values(83,16,01,23,'4월 17일','n');
insert into NOWSHOWING values(84,16,01,24,'4월 17일','n');
insert into NOWSHOWING values(85,16,01,25,'4월 17일','n');
insert into NOWSHOWING values(86,18,01,26,'4월 17일','n');
insert into NOWSHOWING values(87,18,01,27,'4월 17일','n');
insert into NOWSHOWING values(88,18,01,28,'4월 17일','n');
insert into NOWSHOWING values(89,18,01,29,'4월 17일','n');
insert into NOWSHOWING values(90,18,01,30,'4월 17일','n');

insert into NOWSHOWING values(91,01,01,01,'4월 18일','n');
insert into NOWSHOWING values(92,01,01,02,'4월 18일','n');
insert into NOWSHOWING values(93,01,01,03,'4월 18일','n');
insert into NOWSHOWING values(94,01,01,04,'4월 18일','n');
insert into NOWSHOWING values(95,01,01,05,'4월 18일','n'); 
insert into NOWSHOWING values(96,04,01,06,'4월 18일','n');
insert into NOWSHOWING values(97,04,01,07,'4월 18일','n');
insert into NOWSHOWING values(98,04,01,08,'4월 18일','n');
insert into NOWSHOWING values(99,04,01,09,'4월 18일','n');
insert into NOWSHOWING values(100,04,01,10,'4월 18일','n'); 
insert into NOWSHOWING values(101,06,01,11,'4월 18일','n');
insert into NOWSHOWING values(102,06,01,12,'4월 18일','n');
insert into NOWSHOWING values(103,06,01,13,'4월 18일','n');
insert into NOWSHOWING values(104,06,01,14,'4월 18일','n');
insert into NOWSHOWING values(105,06,01,15,'4월 18일','n'); 
insert into NOWSHOWING values(106,09,01,16,'4월 18일','n');
insert into NOWSHOWING values(107,09,01,17,'4월 18일','n');
insert into NOWSHOWING values(108,09,01,18,'4월 18일','n');
insert into NOWSHOWING values(109,09,01,19,'4월 18일','n');
insert into NOWSHOWING values(110,09,01,20,'4월 18일','n');
insert into NOWSHOWING values(111,16,01,21,'4월 18일','n');
insert into NOWSHOWING values(112,16,01,22,'4월 18일','n');
insert into NOWSHOWING values(113,16,01,23,'4월 18일','n');
insert into NOWSHOWING values(114,16,01,24,'4월 18일','n');
insert into NOWSHOWING values(115,16,01,25,'4월 18일','n');
insert into NOWSHOWING values(116,18,01,26,'4월 18일','n');
insert into NOWSHOWING values(117,18,01,27,'4월 18일','n');
insert into NOWSHOWING values(118,18,01,28,'4월 18일','n');
insert into NOWSHOWING values(119,18,01,29,'4월 18일','n');
insert into NOWSHOWING values(120,18,01,30,'4월 18일','n');

-------------------------------------------------------------------


insert into NOWSHOWING values(121,01,02,31,'4월 15일','n');
insert into NOWSHOWING values(122,01,02,32,'4월 15일','n');
insert into NOWSHOWING values(123,01,02,33,'4월 15일','n');
insert into NOWSHOWING values(124,01,02,34,'4월 15일','n');
insert into NOWSHOWING values(125,01,02,35,'4월 15일','n'); 
insert into NOWSHOWING values(126,04,02,36,'4월 15일','n');
insert into NOWSHOWING values(127,04,02,37,'4월 15일','n');
insert into NOWSHOWING values(128,04,02,38,'4월 15일','n');
insert into NOWSHOWING values(129,04,02,39,'4월 15일','n');
insert into NOWSHOWING values(130,04,02,40,'4월 15일','n'); 
insert into NOWSHOWING values(131,06,02,41,'4월 15일','n');
insert into NOWSHOWING values(132,06,02,42,'4월 15일','n');
insert into NOWSHOWING values(133,06,02,43,'4월 15일','n');
insert into NOWSHOWING values(134,06,02,44,'4월 15일','n');
insert into NOWSHOWING values(135,06,02,45,'4월 15일','n'); 
insert into NOWSHOWING values(136,09,02,46,'4월 15일','n');
insert into NOWSHOWING values(137,09,02,47,'4월 15일','n');
insert into NOWSHOWING values(138,09,02,48,'4월 15일','n');
insert into NOWSHOWING values(139,09,02,49,'4월 15일','n');
insert into NOWSHOWING values(140,09,02,50,'4월 15일','n');
insert into NOWSHOWING values(141,16,02,51,'4월 15일','n');
insert into NOWSHOWING values(142,16,02,52,'4월 15일','n');
insert into NOWSHOWING values(143,16,02,53,'4월 15일','n');
insert into NOWSHOWING values(144,16,02,54,'4월 15일','n');
insert into NOWSHOWING values(145,16,02,55,'4월 15일','n');
insert into NOWSHOWING values(146,18,02,56,'4월 15일','n');
insert into NOWSHOWING values(147,18,02,57,'4월 15일','n');
insert into NOWSHOWING values(148,18,02,58,'4월 15일','n');
insert into NOWSHOWING values(149,18,02,59,'4월 15일','n');
insert into NOWSHOWING values(150,18,02,60,'4월 15일','n');



insert into NOWSHOWING values(151,01,02,31,'4월 16일','n');
insert into NOWSHOWING values(152,01,02,32,'4월 16일','n');
insert into NOWSHOWING values(153,01,02,33,'4월 16일','n');
insert into NOWSHOWING values(154,01,02,34,'4월 16일','n');
insert into NOWSHOWING values(155,01,02,35,'4월 16일','n'); 
insert into NOWSHOWING values(156,04,02,36,'4월 16일','n');
insert into NOWSHOWING values(157,04,02,37,'4월 16일','n');
insert into NOWSHOWING values(158,04,02,38,'4월 16일','n');
insert into NOWSHOWING values(159,04,02,39,'4월 16일','n');
insert into NOWSHOWING values(160,04,02,40,'4월 16일','n'); 
insert into NOWSHOWING values(161,06,02,41,'4월 16일','n');
insert into NOWSHOWING values(162,06,02,42,'4월 16일','n');
insert into NOWSHOWING values(163,06,02,43,'4월 16일','n');
insert into NOWSHOWING values(164,06,02,44,'4월 16일','n');
insert into NOWSHOWING values(165,06,02,45,'4월 16일','n'); 
insert into NOWSHOWING values(166,09,02,46,'4월 16일','n');
insert into NOWSHOWING values(167,09,02,47,'4월 16일','n');
insert into NOWSHOWING values(168,09,02,48,'4월 16일','n');
insert into NOWSHOWING values(169,09,02,49,'4월 16일','n');
insert into NOWSHOWING values(170,09,02,50,'4월 16일','n');
insert into NOWSHOWING values(171,16,02,51,'4월 16일','n');
insert into NOWSHOWING values(172,16,02,52,'4월 16일','n');
insert into NOWSHOWING values(173,16,02,53,'4월 16일','n');
insert into NOWSHOWING values(174,16,02,54,'4월 16일','n');
insert into NOWSHOWING values(175,16,02,55,'4월 16일','n');
insert into NOWSHOWING values(176,18,02,56,'4월 16일','n');
insert into NOWSHOWING values(177,18,02,57,'4월 16일','n');
insert into NOWSHOWING values(178,18,02,58,'4월 16일','n');
insert into NOWSHOWING values(179,18,02,59,'4월 16일','n');
insert into NOWSHOWING values(180,18,02,60,'4월 16일','n');


insert into NOWSHOWING values(181,01,02,31,'4월 17일','n');
insert into NOWSHOWING values(182,01,02,32,'4월 17일','n');
insert into NOWSHOWING values(183,01,02,33,'4월 17일','n');
insert into NOWSHOWING values(184,01,02,34,'4월 17일','n');
insert into NOWSHOWING values(185,01,02,35,'4월 17일','n'); 
insert into NOWSHOWING values(186,04,02,36,'4월 17일','n');
insert into NOWSHOWING values(187,04,02,37,'4월 17일','n');
insert into NOWSHOWING values(188,04,02,38,'4월 17일','n');
insert into NOWSHOWING values(189,04,02,39,'4월 17일','n');
insert into NOWSHOWING values(180,04,02,40,'4월 17일','n'); 
insert into NOWSHOWING values(191,06,02,41,'4월 17일','n');
insert into NOWSHOWING values(192,06,02,42,'4월 17일','n');
insert into NOWSHOWING values(193,06,02,43,'4월 17일','n');
insert into NOWSHOWING values(194,06,02,44,'4월 17일','n');
insert into NOWSHOWING values(195,06,02,45,'4월 17일','n'); 
insert into NOWSHOWING values(196,09,02,46,'4월 17일','n');
insert into NOWSHOWING values(197,09,02,47,'4월 17일','n');
insert into NOWSHOWING values(198,09,02,48,'4월 17일','n');
insert into NOWSHOWING values(199,09,02,49,'4월 17일','n');
insert into NOWSHOWING values(200,09,02,50,'4월 17일','n');
insert into NOWSHOWING values(201,16,02,51,'4월 17일','n');
insert into NOWSHOWING values(202,16,02,52,'4월 17일','n');
insert into NOWSHOWING values(203,16,02,53,'4월 17일','n');
insert into NOWSHOWING values(204,16,02,54,'4월 17일','n');
insert into NOWSHOWING values(205,16,02,55,'4월 17일','n');
insert into NOWSHOWING values(206,18,02,56,'4월 17일','n');
insert into NOWSHOWING values(207,18,02,57,'4월 17일','n');
insert into NOWSHOWING values(208,18,02,58,'4월 17일','n');
insert into NOWSHOWING values(209,18,02,59,'4월 17일','n');
insert into NOWSHOWING values(210,18,02,60,'4월 17일','n');

insert into NOWSHOWING values(211,01,02,31,'4월 18일','n');
insert into NOWSHOWING values(212,01,02,32,'4월 18일','n');
insert into NOWSHOWING values(213,01,02,33,'4월 18일','n');
insert into NOWSHOWING values(214,01,02,34,'4월 18일','n');
insert into NOWSHOWING values(215,01,02,35,'4월 18일','n'); 
insert into NOWSHOWING values(216,04,02,36,'4월 18일','n');
insert into NOWSHOWING values(217,04,02,37,'4월 18일','n');
insert into NOWSHOWING values(218,04,02,38,'4월 18일','n');
insert into NOWSHOWING values(219,04,02,39,'4월 18일','n');
insert into NOWSHOWING values(220,04,02,40,'4월 18일','n'); 
insert into NOWSHOWING values(221,06,02,41,'4월 18일','n');
insert into NOWSHOWING values(222,06,02,42,'4월 18일','n');
insert into NOWSHOWING values(223,06,02,43,'4월 18일','n');
insert into NOWSHOWING values(224,06,02,44,'4월 18일','n');
insert into NOWSHOWING values(225,06,02,45,'4월 18일','n'); 
insert into NOWSHOWING values(226,09,02,46,'4월 18일','n');
insert into NOWSHOWING values(227,09,02,47,'4월 18일','n');
insert into NOWSHOWING values(228,09,02,48,'4월 18일','n');
insert into NOWSHOWING values(229,09,02,49,'4월 18일','n');
insert into NOWSHOWING values(230,09,02,50,'4월 18일','n');
insert into NOWSHOWING values(231,16,02,51,'4월 18일','n');
insert into NOWSHOWING values(232,16,02,52,'4월 18일','n');
insert into NOWSHOWING values(233,16,02,53,'4월 18일','n');
insert into NOWSHOWING values(234,16,02,54,'4월 18일','n');
insert into NOWSHOWING values(235,16,02,55,'4월 18일','n');
insert into NOWSHOWING values(236,18,02,56,'4월 18일','n');
insert into NOWSHOWING values(237,18,02,57,'4월 18일','n');
insert into NOWSHOWING values(238,18,02,58,'4월 18일','n');
insert into NOWSHOWING values(239,18,02,59,'4월 18일','n');
insert into NOWSHOWING values(240,18,02,60,'4월 18일','n');


------------------------------------------------------------------  61

insert into NOWSHOWING values(241,01,03,61,'4월 15일','n');
insert into NOWSHOWING values(242,01,03,62,'4월 15일','n');
insert into NOWSHOWING values(243,01,03,63,'4월 15일','n');
insert into NOWSHOWING values(244,01,03,64,'4월 15일','n');
insert into NOWSHOWING values(245,01,03,65,'4월 15일','n'); 
insert into NOWSHOWING values(246,04,03,66,'4월 15일','n');
insert into NOWSHOWING values(247,04,03,67,'4월 15일','n');
insert into NOWSHOWING values(248,04,03,68,'4월 15일','n');
insert into NOWSHOWING values(249,04,03,69,'4월 15일','n');
insert into NOWSHOWING values(250,04,03,70,'4월 15일','n'); 
insert into NOWSHOWING values(251,06,03,71,'4월 15일','n');
insert into NOWSHOWING values(252,06,03,72,'4월 15일','n');
insert into NOWSHOWING values(253,06,03,73,'4월 15일','n');
insert into NOWSHOWING values(254,06,03,74,'4월 15일','n');
insert into NOWSHOWING values(255,06,03,75,'4월 15일','n'); 
insert into NOWSHOWING values(256,09,03,76,'4월 15일','n');
insert into NOWSHOWING values(257,09,03,77,'4월 15일','n');
insert into NOWSHOWING values(258,09,03,78,'4월 15일','n');
insert into NOWSHOWING values(259,09,03,79,'4월 15일','n');
insert into NOWSHOWING values(260,09,03,80,'4월 15일','n');
insert into NOWSHOWING values(261,16,03,81,'4월 15일','n');
insert into NOWSHOWING values(262,16,03,82,'4월 15일','n');
insert into NOWSHOWING values(263,16,03,83,'4월 15일','n');
insert into NOWSHOWING values(264,16,03,84,'4월 15일','n');
insert into NOWSHOWING values(265,16,03,85,'4월 15일','n');
insert into NOWSHOWING values(266,18,03,86,'4월 15일','n');
insert into NOWSHOWING values(267,18,03,87,'4월 15일','n');
insert into NOWSHOWING values(268,18,03,88,'4월 15일','n');
insert into NOWSHOWING values(269,18,03,89,'4월 15일','n');
insert into NOWSHOWING values(270,18,03,90,'4월 15일','n');



insert into NOWSHOWING values(271,01,03,61,'4월 16일','n');
insert into NOWSHOWING values(272,01,03,62,'4월 16일','n');
insert into NOWSHOWING values(273,01,03,63,'4월 16일','n');
insert into NOWSHOWING values(274,01,03,64,'4월 16일','n');
insert into NOWSHOWING values(275,01,03,65,'4월 16일','n'); 
insert into NOWSHOWING values(276,04,03,66,'4월 16일','n');
insert into NOWSHOWING values(277,04,03,67,'4월 16일','n');
insert into NOWSHOWING values(278,04,03,68,'4월 16일','n');
insert into NOWSHOWING values(279,04,03,69,'4월 16일','n');
insert into NOWSHOWING values(280,04,03,70,'4월 16일','n'); 
insert into NOWSHOWING values(281,06,03,71,'4월 16일','n');
insert into NOWSHOWING values(282,06,03,72,'4월 16일','n');
insert into NOWSHOWING values(283,06,03,73,'4월 16일','n');
insert into NOWSHOWING values(284,06,03,74,'4월 16일','n');
insert into NOWSHOWING values(285,06,03,75,'4월 16일','n'); 
insert into NOWSHOWING values(286,09,03,76,'4월 16일','n');
insert into NOWSHOWING values(287,09,03,77,'4월 16일','n');
insert into NOWSHOWING values(288,09,03,78,'4월 16일','n');
insert into NOWSHOWING values(289,09,03,79,'4월 16일','n');
insert into NOWSHOWING values(290,09,03,80,'4월 16일','n');
insert into NOWSHOWING values(291,16,03,81,'4월 16일','n');
insert into NOWSHOWING values(292,16,03,82,'4월 16일','n');
insert into NOWSHOWING values(293,16,03,83,'4월 16일','n');
insert into NOWSHOWING values(294,16,03,84,'4월 16일','n');
insert into NOWSHOWING values(295,16,03,85,'4월 16일','n');
insert into NOWSHOWING values(296,18,03,86,'4월 16일','n');
insert into NOWSHOWING values(297,18,03,87,'4월 16일','n');
insert into NOWSHOWING values(298,18,03,88,'4월 16일','n');
insert into NOWSHOWING values(299,18,03,89,'4월 16일','n');
insert into NOWSHOWING values(300,18,03,90,'4월 16일','n');


insert into NOWSHOWING values(301,01,03,61,'4월 17일','n');
insert into NOWSHOWING values(302,01,03,62,'4월 17일','n');
insert into NOWSHOWING values(303,01,03,63,'4월 17일','n');
insert into NOWSHOWING values(304,01,03,64,'4월 17일','n');
insert into NOWSHOWING values(305,01,03,65,'4월 17일','n'); 
insert into NOWSHOWING values(306,04,03,66,'4월 17일','n');
insert into NOWSHOWING values(307,04,03,67,'4월 17일','n');
insert into NOWSHOWING values(308,04,03,68,'4월 17일','n');
insert into NOWSHOWING values(309,04,03,69,'4월 17일','n');
insert into NOWSHOWING values(310,04,03,70,'4월 17일','n'); 
insert into NOWSHOWING values(311,06,03,71,'4월 17일','n');
insert into NOWSHOWING values(312,06,03,72,'4월 17일','n');
insert into NOWSHOWING values(313,06,03,73,'4월 17일','n');
insert into NOWSHOWING values(314,06,03,74,'4월 17일','n');
insert into NOWSHOWING values(315,06,03,75,'4월 17일','n'); 
insert into NOWSHOWING values(316,09,03,76,'4월 17일','n');
insert into NOWSHOWING values(317,09,03,77,'4월 17일','n');
insert into NOWSHOWING values(138,09,03,78,'4월 17일','n');
insert into NOWSHOWING values(319,09,03,79,'4월 17일','n');
insert into NOWSHOWING values(320,09,03,80,'4월 17일','n');
insert into NOWSHOWING values(321,16,03,81,'4월 17일','n');
insert into NOWSHOWING values(322,16,03,82,'4월 17일','n');
insert into NOWSHOWING values(323,16,03,83,'4월 17일','n');
insert into NOWSHOWING values(324,16,03,84,'4월 17일','n');
insert into NOWSHOWING values(325,16,03,85,'4월 17일','n');
insert into NOWSHOWING values(326,18,03,86,'4월 17일','n');
insert into NOWSHOWING values(327,18,03,87,'4월 17일','n');
insert into NOWSHOWING values(328,18,03,88,'4월 17일','n');
insert into NOWSHOWING values(329,18,03,89,'4월 17일','n');
insert into NOWSHOWING values(330,18,03,90,'4월 17일','n');

insert into NOWSHOWING values(331,01,03,61,'4월 18일','n');
insert into NOWSHOWING values(332,01,03,62,'4월 18일','n');
insert into NOWSHOWING values(333,01,03,63,'4월 18일','n');
insert into NOWSHOWING values(334,01,03,64,'4월 18일','n');
insert into NOWSHOWING values(335,01,03,65,'4월 18일','n'); 
insert into NOWSHOWING values(336,04,03,66,'4월 18일','n');
insert into NOWSHOWING values(337,04,03,67,'4월 18일','n');
insert into NOWSHOWING values(338,04,03,68,'4월 18일','n');
insert into NOWSHOWING values(339,04,03,69,'4월 18일','n');
insert into NOWSHOWING values(340,04,03,70,'4월 18일','n'); 
insert into NOWSHOWING values(341,06,03,71,'4월 18일','n');
insert into NOWSHOWING values(342,06,03,72,'4월 18일','n');
insert into NOWSHOWING values(343,06,03,73,'4월 18일','n');
insert into NOWSHOWING values(344,06,03,74,'4월 18일','n');
insert into NOWSHOWING values(345,06,03,75,'4월 18일','n'); 
insert into NOWSHOWING values(346,09,03,76,'4월 18일','n');
insert into NOWSHOWING values(347,09,03,77,'4월 18일','n');
insert into NOWSHOWING values(348,09,03,78,'4월 18일','n');
insert into NOWSHOWING values(349,09,03,79,'4월 18일','n');
insert into NOWSHOWING values(350,09,03,80,'4월 18일','n');
insert into NOWSHOWING values(351,16,03,81,'4월 18일','n');
insert into NOWSHOWING values(352,16,03,82,'4월 18일','n');
insert into NOWSHOWING values(353,16,03,83,'4월 18일','n');
insert into NOWSHOWING values(354,16,03,84,'4월 18일','n');
insert into NOWSHOWING values(355,16,03,85,'4월 18일','n');
insert into NOWSHOWING values(356,18,03,86,'4월 18일','n');
insert into NOWSHOWING values(357,18,03,87,'4월 18일','n');
insert into NOWSHOWING values(358,18,03,88,'4월 18일','n');
insert into NOWSHOWING values(359,18,03,89,'4월 18일','n');
insert into NOWSHOWING values(360,18,03,90,'4월 18일','n');

------------------------------------------------------------------  91

insert into NOWSHOWING values(361,01,04,91,'4월 15일','n');
insert into NOWSHOWING values(362,01,04,92,'4월 15일','n');
insert into NOWSHOWING values(363,01,04,93,'4월 15일','n');
insert into NOWSHOWING values(364,01,04,94,'4월 15일','n');
insert into NOWSHOWING values(365,01,04,95,'4월 15일','n'); 
insert into NOWSHOWING values(366,04,04,96,'4월 15일','n');
insert into NOWSHOWING values(367,04,04,97,'4월 15일','n');
insert into NOWSHOWING values(368,04,04,98,'4월 15일','n');
insert into NOWSHOWING values(369,04,04,99,'4월 15일','n');
insert into NOWSHOWING values(370,04,04,100,'4월 15일','n'); 
insert into NOWSHOWING values(371,06,04,101,'4월 15일','n');
insert into NOWSHOWING values(372,06,04,102,'4월 15일','n');
insert into NOWSHOWING values(373,06,04,103,'4월 15일','n');
insert into NOWSHOWING values(374,06,04,104,'4월 15일','n');
insert into NOWSHOWING values(375,06,04,105,'4월 15일','n'); 
insert into NOWSHOWING values(376,09,04,106,'4월 15일','n');
insert into NOWSHOWING values(377,09,04,107,'4월 15일','n');
insert into NOWSHOWING values(378,09,04,108,'4월 15일','n');
insert into NOWSHOWING values(379,09,04,109,'4월 15일','n');
insert into NOWSHOWING values(380,09,04,110,'4월 15일','n');
insert into NOWSHOWING values(381,16,04,111,'4월 15일','n');
insert into NOWSHOWING values(382,16,04,112,'4월 15일','n');
insert into NOWSHOWING values(383,16,04,113,'4월 15일','n');
insert into NOWSHOWING values(384,16,04,114,'4월 15일','n');
insert into NOWSHOWING values(385,16,04,115,'4월 15일','n');
insert into NOWSHOWING values(386,18,04,116,'4월 15일','n');
insert into NOWSHOWING values(387,18,04,117,'4월 15일','n');
insert into NOWSHOWING values(388,18,04,118,'4월 15일','n');
insert into NOWSHOWING values(389,18,04,119,'4월 15일','n');
insert into NOWSHOWING values(390,18,04,120,'4월 15일','n');



insert into NOWSHOWING values(391,01,04,91,'4월 16일','n');
insert into NOWSHOWING values(392,01,04,92,'4월 16일','n');
insert into NOWSHOWING values(393,01,04,93,'4월 16일','n');
insert into NOWSHOWING values(394,01,04,94,'4월 16일','n');
insert into NOWSHOWING values(395,01,04,95,'4월 16일','n'); 
insert into NOWSHOWING values(396,04,04,96,'4월 16일','n');
insert into NOWSHOWING values(397,04,04,97,'4월 16일','n');
insert into NOWSHOWING values(398,04,04,98,'4월 16일','n');
insert into NOWSHOWING values(399,04,04,99,'4월 16일','n');
insert into NOWSHOWING values(400,04,04,100,'4월 16일','n'); 
insert into NOWSHOWING values(401,06,04,101,'4월 16일','n');
insert into NOWSHOWING values(402,06,04,102,'4월 16일','n');
insert into NOWSHOWING values(403,06,04,103,'4월 16일','n');
insert into NOWSHOWING values(404,06,04,104,'4월 16일','n');
insert into NOWSHOWING values(405,06,04,105,'4월 16일','n'); 
insert into NOWSHOWING values(406,09,04,106,'4월 16일','n');
insert into NOWSHOWING values(407,09,04,107,'4월 16일','n');
insert into NOWSHOWING values(408,09,04,108,'4월 16일','n');
insert into NOWSHOWING values(409,09,04,109,'4월 16일','n');
insert into NOWSHOWING values(410,09,04,110,'4월 16일','n');
insert into NOWSHOWING values(411,16,04,111,'4월 16일','n');
insert into NOWSHOWING values(412,16,04,112,'4월 16일','n');
insert into NOWSHOWING values(413,16,04,113,'4월 16일','n');
insert into NOWSHOWING values(414,16,04,114,'4월 16일','n');
insert into NOWSHOWING values(415,16,04,115,'4월 16일','n');
insert into NOWSHOWING values(416,18,04,116,'4월 16일','n');
insert into NOWSHOWING values(417,18,04,117,'4월 16일','n');
insert into NOWSHOWING values(418,18,04,118,'4월 16일','n');
insert into NOWSHOWING values(419,18,04,119,'4월 16일','n');
insert into NOWSHOWING values(420,18,04,120,'4월 16일','n');

insert into NOWSHOWING values(421,01,04,91,'4월 17일','n');
insert into NOWSHOWING values(422,01,04,92,'4월 17일','n');
insert into NOWSHOWING values(423,01,04,93,'4월 17일','n');
insert into NOWSHOWING values(424,01,04,94,'4월 17일','n');
insert into NOWSHOWING values(425,01,04,95,'4월 17일','n'); 
insert into NOWSHOWING values(426,04,04,96,'4월 17일','n');
insert into NOWSHOWING values(427,04,04,97,'4월 17일','n');
insert into NOWSHOWING values(428,04,04,98,'4월 17일','n');
insert into NOWSHOWING values(429,04,04,99,'4월 17일','n');
insert into NOWSHOWING values(430,04,04,100,'4월 17일','n'); 
insert into NOWSHOWING values(431,06,04,101,'4월 17일','n');
insert into NOWSHOWING values(432,06,04,102,'4월 17일','n');
insert into NOWSHOWING values(433,06,04,103,'4월 17일','n');
insert into NOWSHOWING values(434,06,04,104,'4월 17일','n');
insert into NOWSHOWING values(435,06,04,105,'4월 17일','n'); 
insert into NOWSHOWING values(436,09,04,106,'4월 17일','n');
insert into NOWSHOWING values(437,09,04,107,'4월 17일','n');
insert into NOWSHOWING values(438,09,04,108,'4월 17일','n');
insert into NOWSHOWING values(439,09,04,109,'4월 17일','n');
insert into NOWSHOWING values(440,09,04,110'4월 17일','n');
insert into NOWSHOWING values(441,16,04,111,'4월 17일','n');
insert into NOWSHOWING values(442,16,04,112,'4월 17일','n');
insert into NOWSHOWING values(443,16,04,113,'4월 17일','n');
insert into NOWSHOWING values(444,16,04,114,'4월 17일','n');
insert into NOWSHOWING values(445,16,04,115,'4월 17일','n');
insert into NOWSHOWING values(446,18,04,116,'4월 17일','n');
insert into NOWSHOWING values(447,18,04,117,'4월 17일','n');
insert into NOWSHOWING values(448,18,04,118,'4월 17일','n');
insert into NOWSHOWING values(449,18,04,119,'4월 17일','n');
insert into NOWSHOWING values(450,18,04,120,'4월 17일','n');

insert into NOWSHOWING values(451,01,04,91,'4월 18일','n');
insert into NOWSHOWING values(452,01,04,92,'4월 18일','n');
insert into NOWSHOWING values(453,01,04,93,'4월 18일','n');
insert into NOWSHOWING values(454,01,04,94,'4월 18일','n');
insert into NOWSHOWING values(455,01,04,95,'4월 18일','n'); 
insert into NOWSHOWING values(456,04,04,96,'4월 18일','n');
insert into NOWSHOWING values(457,04,04,97,'4월 18일','n');
insert into NOWSHOWING values(458,04,04,98,'4월 18일','n');
insert into NOWSHOWING values(459,04,04,99,'4월 18일','n');
insert into NOWSHOWING values(460,04,04,100,'4월 18일','n'); 
insert into NOWSHOWING values(461,06,04,101,'4월 18일','n');
insert into NOWSHOWING values(462,06,04,102,'4월 18일','n');
insert into NOWSHOWING values(463,06,04,103,'4월 18일','n');
insert into NOWSHOWING values(464,06,04,104,'4월 18일','n');
insert into NOWSHOWING values(465,06,04,105,'4월 18일','n'); 
insert into NOWSHOWING values(466,09,04,106,'4월 18일','n');
insert into NOWSHOWING values(467,09,04,107,'4월 18일','n');
insert into NOWSHOWING values(468,09,04,108,'4월 18일','n');
insert into NOWSHOWING values(469,09,04,109,'4월 18일','n');
insert into NOWSHOWING values(470,09,04,110,'4월 18일','n');
insert into NOWSHOWING values(471,16,04,111,'4월 18일','n');
insert into NOWSHOWING values(472,16,04,112,'4월 18일','n');
insert into NOWSHOWING values(473,16,04,113,'4월 18일','n');
insert into NOWSHOWING values(474,16,04,114,'4월 18일','n');
insert into NOWSHOWING values(475,16,04,115,'4월 18일','n');
insert into NOWSHOWING values(476,18,04,116,'4월 18일','n');
insert into NOWSHOWING values(477,18,04,117,'4월 18일','n');
insert into NOWSHOWING values(478,18,04,118,'4월 18일','n');
insert into NOWSHOWING values(479,18,04,119,'4월 18일','n');
insert into NOWSHOWING values(480,18,04,120,'4월 18일','n');
------------------------------------------------------------121

insert into NOWSHOWING values(481,01,05,121,'4월 15일','n');
insert into NOWSHOWING values(482,01,05,122,'4월 15일','n');
insert into NOWSHOWING values(483,01,05,123,'4월 15일','n');
insert into NOWSHOWING values(484,01,05,124,'4월 15일','n');
insert into NOWSHOWING values(485,01,05,125,'4월 15일','n'); 
insert into NOWSHOWING values(486,04,05,126,'4월 15일','n');
insert into NOWSHOWING values(487,04,05,127,'4월 15일','n');
insert into NOWSHOWING values(488,04,05,128,'4월 15일','n');
insert into NOWSHOWING values(489,04,05,129,'4월 15일','n');
insert into NOWSHOWING values(490,04,05,130,'4월 15일','n'); 
insert into NOWSHOWING values(491,06,05,131,'4월 15일','n');
insert into NOWSHOWING values(492,06,05,132,'4월 15일','n');
insert into NOWSHOWING values(493,06,05,133,'4월 15일','n');
insert into NOWSHOWING values(494,06,05,134,'4월 15일','n');
insert into NOWSHOWING values(495,06,05,135,'4월 15일','n'); 
insert into NOWSHOWING values(496,09,05,136,'4월 15일','n');
insert into NOWSHOWING values(497,09,05,137,'4월 15일','n');
insert into NOWSHOWING values(498,09,05,138,'4월 15일','n');
insert into NOWSHOWING values(499,09,05,149,'4월 15일','n');
insert into NOWSHOWING values(500,09,05,140,'4월 15일','n');
insert into NOWSHOWING values(501,16,05,141,'4월 15일','n');
insert into NOWSHOWING values(502,16,05,142,'4월 15일','n');
insert into NOWSHOWING values(503,16,05,143,'4월 15일','n');
insert into NOWSHOWING values(504,16,05,144,'4월 15일','n');
insert into NOWSHOWING values(505,16,05,145,'4월 15일','n');
insert into NOWSHOWING values(506,18,05,146,'4월 15일','n');
insert into NOWSHOWING values(507,18,05,147,'4월 15일','n');
insert into NOWSHOWING values(508,18,05,148,'4월 15일','n');
insert into NOWSHOWING values(509,18,05,149,'4월 15일','n');
insert into NOWSHOWING values(510,18,05,150,'4월 15일','n');


insert into NOWSHOWING values(511,01,05,121,'4월 16일','n');
insert into NOWSHOWING values(512,01,05,122,'4월 16일','n');
insert into NOWSHOWING values(513,01,05,123,'4월 16일','n');
insert into NOWSHOWING values(514,01,05,124,'4월 16일','n');
insert into NOWSHOWING values(515,01,05,125,'4월 16일','n'); 
insert into NOWSHOWING values(516,04,05,126,'4월 16일','n');
insert into NOWSHOWING values(517,04,05,127,'4월 16일','n');
insert into NOWSHOWING values(518,04,05,128,'4월 16일','n');
insert into NOWSHOWING values(519,04,05,129,'4월 16일','n');
insert into NOWSHOWING values(520,04,05,130,'4월 16일','n'); 
insert into NOWSHOWING values(521,06,05,131,'4월 16일','n');
insert into NOWSHOWING values(522,06,05,132,'4월 16일','n');
insert into NOWSHOWING values(523,06,05,133,'4월 16일','n');
insert into NOWSHOWING values(524,06,05,134,'4월 16일','n');
insert into NOWSHOWING values(525,06,05,135,'4월 16일','n'); 
insert into NOWSHOWING values(526,09,05,136,'4월 16일','n');
insert into NOWSHOWING values(527,09,05,137,'4월 16일','n');
insert into NOWSHOWING values(528,09,05,138,'4월 16일','n');
insert into NOWSHOWING values(529,09,05,139,'4월 16일','n');
insert into NOWSHOWING values(530,09,05,140,'4월 16일','n');
insert into NOWSHOWING values(531,16,05,141,'4월 16일','n');
insert into NOWSHOWING values(532,16,05,142,'4월 16일','n');
insert into NOWSHOWING values(533,16,05,143,'4월 16일','n');
insert into NOWSHOWING values(534,16,05,144,'4월 16일','n');
insert into NOWSHOWING values(535,16,05,145,'4월 16일','n');
insert into NOWSHOWING values(536,18,05,146,'4월 16일','n');
insert into NOWSHOWING values(537,18,05,147,'4월 16일','n');
insert into NOWSHOWING values(538,18,05,148,'4월 16일','n');
insert into NOWSHOWING values(539,18,05,149,'4월 16일','n');
insert into NOWSHOWING values(540,18,05,150,'4월 16일','n');

insert into NOWSHOWING values(541,01,05,121,'4월 17일','n');
insert into NOWSHOWING values(542,01,05,122,'4월 17일','n');
insert into NOWSHOWING values(543,01,05,123,'4월 17일','n');
insert into NOWSHOWING values(544,01,05,124,'4월 17일','n');
insert into NOWSHOWING values(545,01,05,125,'4월 17일','n'); 
insert into NOWSHOWING values(546,04,05,126,'4월 17일','n');
insert into NOWSHOWING values(547,04,05,127,'4월 17일','n');
insert into NOWSHOWING values(548,04,05,128,'4월 17일','n');
insert into NOWSHOWING values(549,04,05,129,'4월 17일','n');
insert into NOWSHOWING values(550,04,05,130,'4월 17일','n'); 
insert into NOWSHOWING values(551,06,05,131,'4월 17일','n');
insert into NOWSHOWING values(552,06,05,132,'4월 17일','n');
insert into NOWSHOWING values(553,06,05,133,'4월 17일','n');
insert into NOWSHOWING values(554,06,05,134,'4월 17일','n');
insert into NOWSHOWING values(555,06,05,135,'4월 17일','n'); 
insert into NOWSHOWING values(556,09,05,136,'4월 17일','n');
insert into NOWSHOWING values(557,09,05,137,'4월 17일','n');
insert into NOWSHOWING values(558,09,05,138,'4월 17일','n');
insert into NOWSHOWING values(559,09,05,139,'4월 17일','n');
insert into NOWSHOWING values(560,09,05,140,'4월 17일','n');
insert into NOWSHOWING values(561,16,05,141,'4월 17일','n');
insert into NOWSHOWING values(562,16,05,142,'4월 17일','n');
insert into NOWSHOWING values(563,16,05,143,'4월 17일','n');
insert into NOWSHOWING values(564,16,05,144,'4월 17일','n');
insert into NOWSHOWING values(565,16,05,145,'4월 17일','n');
insert into NOWSHOWING values(566,18,05,146,'4월 17일','n');
insert into NOWSHOWING values(567,18,05,147,'4월 17일','n');
insert into NOWSHOWING values(568,18,05,148,'4월 17일','n');
insert into NOWSHOWING values(569,18,05,149,'4월 17일','n');
insert into NOWSHOWING values(570,18,05,150,'4월 17일','n');

insert into NOWSHOWING values(571,01,05,121,'4월 18일','n');
insert into NOWSHOWING values(572,01,05,122,'4월 18일','n');
insert into NOWSHOWING values(573,01,05,123,'4월 18일','n');
insert into NOWSHOWING values(574,01,05,124,'4월 18일','n');
insert into NOWSHOWING values(575,01,05,125,'4월 18일','n'); 
insert into NOWSHOWING values(576,04,05,126,'4월 18일','n');
insert into NOWSHOWING values(577,04,05,127,'4월 18일','n');
insert into NOWSHOWING values(578,04,05,128,'4월 18일','n');
insert into NOWSHOWING values(579,04,05,129,'4월 18일','n');
insert into NOWSHOWING values(580,04,05,130,'4월 18일','n'); 
insert into NOWSHOWING values(581,06,05,131,'4월 18일','n');
insert into NOWSHOWING values(582,06,05,132,'4월 18일','n');
insert into NOWSHOWING values(583,06,05,133,'4월 18일','n');
insert into NOWSHOWING values(584,06,05,134,'4월 18일','n');
insert into NOWSHOWING values(585,06,05,135,'4월 18일','n'); 
insert into NOWSHOWING values(586,09,05,136,'4월 18일','n');
insert into NOWSHOWING values(587,09,05,137,'4월 18일','n');
insert into NOWSHOWING values(588,09,05,138,'4월 18일','n');
insert into NOWSHOWING values(589,09,05,139,'4월 18일','n');
insert into NOWSHOWING values(590,09,05,140,'4월 18일','n');
insert into NOWSHOWING values(591,16,05,141,'4월 18일','n');
insert into NOWSHOWING values(592,16,05,142,'4월 18일','n');
insert into NOWSHOWING values(593,16,05,143,'4월 18일','n');
insert into NOWSHOWING values(594,16,05,144,'4월 18일','n');
insert into NOWSHOWING values(595,16,05,145,'4월 18일','n');
insert into NOWSHOWING values(596,18,05,146,'4월 18일','n');
insert into NOWSHOWING values(597,18,05,147,'4월 18일','n');
insert into NOWSHOWING values(598,18,05,148,'4월 18일','n');
insert into NOWSHOWING values(599,18,05,149,'4월 18일','n');
insert into NOWSHOWING values(600,18,05,150,'4월 18일','n');
------------------------------------------------------------

------------------------------------------------------------150

insert into NOWSHOWING values(601,01,06,151,'4월 15일','n');
insert into NOWSHOWING values(602,01,06,152,'4월 15일','n');
insert into NOWSHOWING values(603,01,06,153,'4월 15일','n');
insert into NOWSHOWING values(604,01,06,154,'4월 15일','n');
insert into NOWSHOWING values(605,01,06,155,'4월 15일','n'); 
insert into NOWSHOWING values(606,04,06,156,'4월 15일','n');
insert into NOWSHOWING values(607,04,06,157,'4월 15일','n');
insert into NOWSHOWING values(608,04,06,158,'4월 15일','n');
insert into NOWSHOWING values(609,04,06,159,'4월 15일','n');
insert into NOWSHOWING values(610,04,06,160,'4월 15일','n'); 
insert into NOWSHOWING values(611,06,06,161,'4월 15일','n');
insert into NOWSHOWING values(612,06,06,162,'4월 15일','n');
insert into NOWSHOWING values(613,06,06,163,'4월 15일','n');
insert into NOWSHOWING values(614,06,06,164,'4월 15일','n');
insert into NOWSHOWING values(615,06,06,165,'4월 15일','n'); 
insert into NOWSHOWING values(616,09,06,166,'4월 15일','n');
insert into NOWSHOWING values(617,09,06,167,'4월 15일','n');
insert into NOWSHOWING values(618,09,06,168,'4월 15일','n');
insert into NOWSHOWING values(619,09,06,169,'4월 15일','n');
insert into NOWSHOWING values(620,09,06,170,'4월 15일','n');
insert into NOWSHOWING values(621,16,06,171,'4월 15일','n');
insert into NOWSHOWING values(622,16,06,172,'4월 15일','n');
insert into NOWSHOWING values(623,16,06,173,'4월 15일','n');
insert into NOWSHOWING values(624,16,06,174,'4월 15일','n');
insert into NOWSHOWING values(625,16,06,175,'4월 15일','n');
insert into NOWSHOWING values(626,18,06,176,'4월 15일','n');
insert into NOWSHOWING values(627,18,06,177,'4월 15일','n');
insert into NOWSHOWING values(628,18,06,178,'4월 15일','n');
insert into NOWSHOWING values(629,18,06,179,'4월 15일','n');
insert into NOWSHOWING values(630,18,06,180,'4월 15일','n');3


insert into NOWSHOWING values(631,01,06,151,'4월 16일','n');
insert into NOWSHOWING values(632,01,06,152,'4월 16일','n');
insert into NOWSHOWING values(633,01,06,153,'4월 16일','n');
insert into NOWSHOWING values(634,01,06,154,'4월 16일','n');
insert into NOWSHOWING values(635,01,06,155,'4월 16일','n'); 
insert into NOWSHOWING values(636,04,06,156,'4월 16일','n');
insert into NOWSHOWING values(637,04,06,157,'4월 16일','n');
insert into NOWSHOWING values(638,04,06,158,'4월 16일','n');
insert into NOWSHOWING values(639,04,06,159,'4월 16일','n');
insert into NOWSHOWING values(640,04,06,160,'4월 16일','n'); 
insert into NOWSHOWING values(641,06,06,161,'4월 16일','n');
insert into NOWSHOWING values(642,06,06,162,'4월 16일','n');
insert into NOWSHOWING values(643,06,06,163,'4월 16일','n');
insert into NOWSHOWING values(644,06,06,164,'4월 16일','n');
insert into NOWSHOWING values(645,06,06,165,'4월 16일','n'); 
insert into NOWSHOWING values(646,09,06,166,'4월 16일','n');
insert into NOWSHOWING values(647,09,06,167,'4월 16일','n');
insert into NOWSHOWING values(648,09,06,168,'4월 16일','n');
insert into NOWSHOWING values(649,09,06,169,'4월 16일','n');
insert into NOWSHOWING values(650,09,06,170,'4월 16일','n');
insert into NOWSHOWING values(651,16,06,171,'4월 16일','n');
insert into NOWSHOWING values(652,16,06,172,'4월 16일','n');
insert into NOWSHOWING values(653,16,06,173,'4월 16일','n');
insert into NOWSHOWING values(654,16,06,174,'4월 16일','n');
insert into NOWSHOWING values(655,16,06,175,'4월 16일','n');
insert into NOWSHOWING values(656,18,06,176,'4월 16일','n');
insert into NOWSHOWING values(657,18,06,177,'4월 16일','n');
insert into NOWSHOWING values(658,18,06,178,'4월 16일','n');
insert into NOWSHOWING values(659,18,06,179,'4월 16일','n');
insert into NOWSHOWING values(660,18,06,180,'4월 16일','n');

insert into NOWSHOWING values(661,01,06,151,'4월 17일','n');
insert into NOWSHOWING values(662,01,06,152,'4월 17일','n');
insert into NOWSHOWING values(663,01,06,153,'4월 17일','n');
insert into NOWSHOWING values(664,01,06,154,'4월 17일','n');
insert into NOWSHOWING values(665,01,06,155,'4월 17일','n'); 
insert into NOWSHOWING values(666,04,06,156,'4월 17일','n');
insert into NOWSHOWING values(667,04,06,157,'4월 17일','n');
insert into NOWSHOWING values(668,04,06,158,'4월 17일','n');
insert into NOWSHOWING values(669,04,06,159,'4월 17일','n');
insert into NOWSHOWING values(670,04,06,160,'4월 17일','n'); 
insert into NOWSHOWING values(671,06,06,161,'4월 17일','n');
insert into NOWSHOWING values(672,06,06,162,'4월 17일','n');
insert into NOWSHOWING values(673,06,06,163,'4월 17일','n');
insert into NOWSHOWING values(674,06,06,164,'4월 17일','n');
insert into NOWSHOWING values(675,06,06,165,'4월 17일','n'); 
insert into NOWSHOWING values(676,09,06,166,'4월 17일','n');
insert into NOWSHOWING values(677,09,06,167,'4월 17일','n');
insert into NOWSHOWING values(678,09,06,168,'4월 17일','n');
insert into NOWSHOWING values(679,09,06,169,'4월 17일','n');
insert into NOWSHOWING values(680,09,06,170,'4월 17일','n');
insert into NOWSHOWING values(681,16,06,171,'4월 17일','n');
insert into NOWSHOWING values(682,16,06,172,'4월 17일','n');
insert into NOWSHOWING values(683,16,06,173,'4월 17일','n');
insert into NOWSHOWING values(684,16,06,174,'4월 17일','n');
insert into NOWSHOWING values(685,16,06,175,'4월 17일','n');
insert into NOWSHOWING values(686,18,06,176,'4월 17일','n');
insert into NOWSHOWING values(687,18,06,177,'4월 17일','n');
insert into NOWSHOWING values(688,18,06,178,'4월 17일','n');
insert into NOWSHOWING values(689,18,06,179,'4월 17일','n');
insert into NOWSHOWING values(690,18,06,180,'4월 17일','n');

insert into NOWSHOWING values(691,01,06,151,'4월 18일','n');
insert into NOWSHOWING values(692,01,06,152,'4월 18일','n');
insert into NOWSHOWING values(693,01,06,153,'4월 18일','n');
insert into NOWSHOWING values(694,01,06,154,'4월 18일','n');
insert into NOWSHOWING values(695,01,06,155,'4월 18일','n'); 
insert into NOWSHOWING values(696,04,06,156,'4월 18일','n');
insert into NOWSHOWING values(697,04,06,157,'4월 18일','n');
insert into NOWSHOWING values(698,04,06,158,'4월 18일','n');
insert into NOWSHOWING values(699,04,06,159,'4월 18일','n');
insert into NOWSHOWING values(700,04,06,160,'4월 18일','n'); 
insert into NOWSHOWING values(701,06,06,161,'4월 18일','n');
insert into NOWSHOWING values(702,06,06,162,'4월 18일','n');
insert into NOWSHOWING values(703,06,06,163,'4월 18일','n');
insert into NOWSHOWING values(704,06,06,164,'4월 18일','n');
insert into NOWSHOWING values(705,06,06,165,'4월 18일','n'); 
insert into NOWSHOWING values(706,09,06,166,'4월 18일','n');
insert into NOWSHOWING values(707,09,06,167,'4월 18일','n');
insert into NOWSHOWING values(708,09,06,168,'4월 18일','n');
insert into NOWSHOWING values(709,09,06,179,'4월 18일','n');
insert into NOWSHOWING values(710,09,06,170,'4월 18일','n');
insert into NOWSHOWING values(711,16,06,171,'4월 18일','n');
insert into NOWSHOWING values(712,16,06,172,'4월 18일','n');
insert into NOWSHOWING values(713,16,06,173,'4월 18일','n');
insert into NOWSHOWING values(714,16,06,174,'4월 18일','n');
insert into NOWSHOWING values(715,16,06,175,'4월 18일','n');
insert into NOWSHOWING values(716,18,06,176,'4월 18일','n');
insert into NOWSHOWING values(717,18,06,177,'4월 18일','n');
insert into NOWSHOWING values(718,18,06,178,'4월 18일','n');
insert into NOWSHOWING values(719,18,06,179,'4월 18일','n');
insert into NOWSHOWING values(720,18,06,180,'4월 18일','n');

----------------------------------------------------------

-----------------------------------------------------------180

insert into NOWSHOWING values(721,01,07,181,'4월 15일','n');
insert into NOWSHOWING values(722,01,07,182,'4월 15일','n');
insert into NOWSHOWING values(723,01,07,183,'4월 15일','n');
insert into NOWSHOWING values(724,01,07,184,'4월 15일','n');
insert into NOWSHOWING values(725,01,07,185,'4월 15일','n'); 
insert into NOWSHOWING values(726,04,07,186,'4월 15일','n');
insert into NOWSHOWING values(727,04,07,187,'4월 15일','n');
insert into NOWSHOWING values(728,04,07,188,'4월 15일','n');
insert into NOWSHOWING values(729,04,07,189,'4월 15일','n');
insert into NOWSHOWING values(730,04,07,190,'4월 15일','n'); 
insert into NOWSHOWING values(731,06,07,191,'4월 15일','n');
insert into NOWSHOWING values(732,06,07,192,'4월 15일','n');
insert into NOWSHOWING values(733,06,07,193,'4월 15일','n');
insert into NOWSHOWING values(734,06,07,194,'4월 15일','n');
insert into NOWSHOWING values(735,06,07,195,'4월 15일','n'); 
insert into NOWSHOWING values(736,09,07,196,'4월 15일','n');
insert into NOWSHOWING values(737,09,07,197,'4월 15일','n');
insert into NOWSHOWING values(738,09,07,198,'4월 15일','n');
insert into NOWSHOWING values(739,09,07,199,'4월 15일','n');
insert into NOWSHOWING values(740,09,07,200,'4월 15일','n');
insert into NOWSHOWING values(741,16,07,201,'4월 15일','n');
insert into NOWSHOWING values(742,16,07,202,'4월 15일','n');
insert into NOWSHOWING values(743,16,07,203,'4월 15일','n');
insert into NOWSHOWING values(744,16,07,204,'4월 15일','n');
insert into NOWSHOWING values(745,16,07,205,'4월 15일','n');
insert into NOWSHOWING values(746,18,07,206,'4월 15일','n');
insert into NOWSHOWING values(747,18,07,207,'4월 15일','n');
insert into NOWSHOWING values(748,18,07,208,'4월 15일','n');
insert into NOWSHOWING values(749,18,07,209,'4월 15일','n');
insert into NOWSHOWING values(750,18,07,210,'4월 15일','n');

insert into NOWSHOWING values(751,01,07,181,'4월 16일','n');
insert into NOWSHOWING values(752,01,07,182,'4월 16일','n');
insert into NOWSHOWING values(753,01,07,183,'4월 16일','n');
insert into NOWSHOWING values(754,01,07,184,'4월 16일','n');
insert into NOWSHOWING values(755,01,07,185,'4월 16일','n'); 
insert into NOWSHOWING values(756,04,07,186,'4월 16일','n');
insert into NOWSHOWING values(757,04,07,187,'4월 16일','n');
insert into NOWSHOWING values(758,04,07,188,'4월 16일','n');
insert into NOWSHOWING values(759,04,07,189,'4월 16일','n');
insert into NOWSHOWING values(760,04,07,190,'4월 16일','n'); 
insert into NOWSHOWING values(761,06,07,191,'4월 16일','n');
insert into NOWSHOWING values(762,06,07,192,'4월 16일','n');
insert into NOWSHOWING values(763,06,07,193,'4월 16일','n');
insert into NOWSHOWING values(764,06,07,194,'4월 16일','n');
insert into NOWSHOWING values(765,06,07,195,'4월 16일','n'); 
insert into NOWSHOWING values(766,09,07,196,'4월 16일','n');
insert into NOWSHOWING values(767,09,07,197,'4월 16일','n');
insert into NOWSHOWING values(768,09,07,198,'4월 16일','n');
insert into NOWSHOWING values(769,09,07,199,'4월 16일','n');
insert into NOWSHOWING values(770,09,07,200,'4월 16일','n');
insert into NOWSHOWING values(771,16,07,201,'4월 16일','n');
insert into NOWSHOWING values(772,16,07,202,'4월 16일','n');
insert into NOWSHOWING values(773,16,07,203,'4월 16일','n');
insert into NOWSHOWING values(774,16,07,204,'4월 16일','n');
insert into NOWSHOWING values(775,16,07,205,'4월 16일','n');
insert into NOWSHOWING values(776,18,07,206,'4월 16일','n');
insert into NOWSHOWING values(777,18,07,207,'4월 16일','n');
insert into NOWSHOWING values(778,18,07,208,'4월 16일','n');
insert into NOWSHOWING values(779,18,07,209,'4월 16일','n');
insert into NOWSHOWING values(780,18,07,210,'4월 16일','n');

insert into NOWSHOWING values(781,01,07,181,'4월 17일','n');
insert into NOWSHOWING values(782,01,07,182,'4월 17일','n');
insert into NOWSHOWING values(783,01,07,183,'4월 17일','n');
insert into NOWSHOWING values(784,01,07,184,'4월 17일','n');
insert into NOWSHOWING values(785,01,07,185,'4월 17일','n'); 
insert into NOWSHOWING values(786,04,07,186,'4월 17일','n');
insert into NOWSHOWING values(787,04,07,187,'4월 17일','n');
insert into NOWSHOWING values(788,04,07,188,'4월 17일','n');
insert into NOWSHOWING values(789,04,07,189,'4월 17일','n');
insert into NOWSHOWING values(790,04,07,190,'4월 17일','n'); 
insert into NOWSHOWING values(791,06,07,191,'4월 17일','n');
insert into NOWSHOWING values(792,06,07,192,'4월 17일','n');
insert into NOWSHOWING values(793,06,07,193,'4월 17일','n');
insert into NOWSHOWING values(794,06,07,194,'4월 17일','n');
insert into NOWSHOWING values(795,06,07,195,'4월 17일','n'); 
insert into NOWSHOWING values(796,09,07,196,'4월 17일','n');
insert into NOWSHOWING values(797,09,07,197,'4월 17일','n');
insert into NOWSHOWING values(798,09,07,198,'4월 17일','n');
insert into NOWSHOWING values(799,09,07,199,'4월 17일','n');
insert into NOWSHOWING values(800,09,07,200,'4월 17일','n');
insert into NOWSHOWING values(801,16,07,201,'4월 17일','n');
insert into NOWSHOWING values(802,16,07,202,'4월 17일','n');
insert into NOWSHOWING values(803,16,07,203,'4월 17일','n');
insert into NOWSHOWING values(804,16,07,204,'4월 17일','n');
insert into NOWSHOWING values(805,16,07,205,'4월 17일','n');
insert into NOWSHOWING values(806,18,07,206,'4월 17일','n');
insert into NOWSHOWING values(807,18,07,207,'4월 17일','n');
insert into NOWSHOWING values(808,18,07,208,'4월 17일','n');
insert into NOWSHOWING values(809,18,07,209,'4월 17일','n');
insert into NOWSHOWING values(810,18,07,210,'4월 17일','n');

insert into NOWSHOWING values(811,01,07,181,'4월 18일','n');
insert into NOWSHOWING values(812,01,07,182,'4월 18일','n');
insert into NOWSHOWING values(813,01,07,183,'4월 18일','n');
insert into NOWSHOWING values(814,01,07,184,'4월 18일','n');
insert into NOWSHOWING values(815,01,07,185,'4월 18일','n'); 
insert into NOWSHOWING values(816,04,07,186,'4월 18일','n');
insert into NOWSHOWING values(817,04,07,187,'4월 18일','n');
insert into NOWSHOWING values(818,04,07,188,'4월 18일','n');
insert into NOWSHOWING values(819,04,07,189,'4월 18일','n');
insert into NOWSHOWING values(820,04,07,190,'4월 18일','n'); 
insert into NOWSHOWING values(821,06,07,191,'4월 18일','n');
insert into NOWSHOWING values(822,06,07,192,'4월 18일','n');
insert into NOWSHOWING values(823,06,07,193,'4월 18일','n');
insert into NOWSHOWING values(824,06,07,194,'4월 18일','n');
insert into NOWSHOWING values(825,06,07,195,'4월 18일','n'); 
insert into NOWSHOWING values(826,09,07,196,'4월 18일','n');
insert into NOWSHOWING values(827,09,07,197,'4월 18일','n');
insert into NOWSHOWING values(828,09,07,198,'4월 18일','n');
insert into NOWSHOWING values(829,09,07,199,'4월 18일','n');
insert into NOWSHOWING values(830,09,07,200,'4월 18일','n');
insert into NOWSHOWING values(831,16,07,201,'4월 18일','n');
insert into NOWSHOWING values(832,16,07,202,'4월 18일','n');
insert into NOWSHOWING values(833,16,07,203,'4월 18일','n');
insert into NOWSHOWING values(834,16,07,204,'4월 18일','n');
insert into NOWSHOWING values(835,16,07,205,'4월 18일','n');
insert into NOWSHOWING values(836,18,07,206,'4월 18일','n');
insert into NOWSHOWING values(837,18,07,207,'4월 18일','n');
insert into NOWSHOWING values(838,18,07,208,'4월 18일','n');
insert into NOWSHOWING values(839,18,07,209,'4월 18일','n');
insert into NOWSHOWING values(840,18,07,210,'4월 18일','n');
----------------------------------------------------------

-----------------------------------------------------------210

insert into NOWSHOWING values(721,01,07,181,'4월 15일','n');
insert into NOWSHOWING values(722,01,07,182,'4월 15일','n');
insert into NOWSHOWING values(723,01,07,183,'4월 15일','n');
insert into NOWSHOWING values(724,01,07,184,'4월 15일','n');
insert into NOWSHOWING values(725,01,07,185,'4월 15일','n'); 
insert into NOWSHOWING values(726,04,07,186,'4월 15일','n');
insert into NOWSHOWING values(727,04,07,187,'4월 15일','n');
insert into NOWSHOWING values(728,04,07,188,'4월 15일','n');
insert into NOWSHOWING values(729,04,07,189,'4월 15일','n');
insert into NOWSHOWING values(730,04,07,190,'4월 15일','n'); 
insert into NOWSHOWING values(731,06,07,191,'4월 15일','n');
insert into NOWSHOWING values(732,06,07,192,'4월 15일','n');
insert into NOWSHOWING values(733,06,07,193,'4월 15일','n');
insert into NOWSHOWING values(734,06,07,194,'4월 15일','n');
insert into NOWSHOWING values(735,06,07,195,'4월 15일','n'); 
insert into NOWSHOWING values(736,09,07,196,'4월 15일','n');
insert into NOWSHOWING values(737,09,07,197,'4월 15일','n');
insert into NOWSHOWING values(738,09,07,198,'4월 15일','n');
insert into NOWSHOWING values(739,09,07,199,'4월 15일','n');
insert into NOWSHOWING values(740,09,07,200,'4월 15일','n');
insert into NOWSHOWING values(741,16,07,201,'4월 15일','n');
insert into NOWSHOWING values(742,16,07,202,'4월 15일','n');
insert into NOWSHOWING values(743,16,07,203,'4월 15일','n');
insert into NOWSHOWING values(744,16,07,204,'4월 15일','n');
insert into NOWSHOWING values(745,16,07,205,'4월 15일','n');
insert into NOWSHOWING values(746,18,07,206,'4월 15일','n');
insert into NOWSHOWING values(747,18,07,207,'4월 15일','n');
insert into NOWSHOWING values(748,18,07,208,'4월 15일','n');
insert into NOWSHOWING values(749,18,07,209,'4월 15일','n');
insert into NOWSHOWING values(750,18,07,210,'4월 15일','n');

insert into NOWSHOWING values(751,01,07,181,'4월 16일','n');
insert into NOWSHOWING values(752,01,07,182,'4월 16일','n');
insert into NOWSHOWING values(753,01,07,183,'4월 16일','n');
insert into NOWSHOWING values(754,01,07,184,'4월 16일','n');
insert into NOWSHOWING values(755,01,07,185,'4월 16일','n'); 
insert into NOWSHOWING values(756,04,07,186,'4월 16일','n');
insert into NOWSHOWING values(757,04,07,187,'4월 16일','n');
insert into NOWSHOWING values(758,04,07,188,'4월 16일','n');
insert into NOWSHOWING values(759,04,07,189,'4월 16일','n');
insert into NOWSHOWING values(760,04,07,190,'4월 16일','n'); 
insert into NOWSHOWING values(761,06,07,191,'4월 16일','n');
insert into NOWSHOWING values(762,06,07,192,'4월 16일','n');
insert into NOWSHOWING values(763,06,07,193,'4월 16일','n');
insert into NOWSHOWING values(764,06,07,194,'4월 16일','n');
insert into NOWSHOWING values(765,06,07,195,'4월 16일','n'); 
insert into NOWSHOWING values(766,09,07,196,'4월 16일','n');
insert into NOWSHOWING values(767,09,07,197,'4월 16일','n');
insert into NOWSHOWING values(768,09,07,198,'4월 16일','n');
insert into NOWSHOWING values(769,09,07,199,'4월 16일','n');
insert into NOWSHOWING values(770,09,07,200,'4월 16일','n');
insert into NOWSHOWING values(771,16,07,201,'4월 16일','n');
insert into NOWSHOWING values(772,16,07,202,'4월 16일','n');
insert into NOWSHOWING values(773,16,07,203,'4월 16일','n');
insert into NOWSHOWING values(774,16,07,204,'4월 16일','n');
insert into NOWSHOWING values(775,16,07,205,'4월 16일','n');
insert into NOWSHOWING values(776,18,07,206,'4월 16일','n');
insert into NOWSHOWING values(777,18,07,207,'4월 16일','n');
insert into NOWSHOWING values(778,18,07,208,'4월 16일','n');
insert into NOWSHOWING values(779,18,07,209,'4월 16일','n');
insert into NOWSHOWING values(780,18,07,210,'4월 16일','n');

insert into NOWSHOWING values(781,01,07,181,'4월 17일','n');
insert into NOWSHOWING values(782,01,07,182,'4월 17일','n');
insert into NOWSHOWING values(783,01,07,183,'4월 17일','n');
insert into NOWSHOWING values(784,01,07,184,'4월 17일','n');
insert into NOWSHOWING values(785,01,07,185,'4월 17일','n'); 
insert into NOWSHOWING values(786,04,07,186,'4월 17일','n');
insert into NOWSHOWING values(787,04,07,187,'4월 17일','n');
insert into NOWSHOWING values(788,04,07,188,'4월 17일','n');
insert into NOWSHOWING values(789,04,07,189,'4월 17일','n');
insert into NOWSHOWING values(790,04,07,190,'4월 17일','n'); 
insert into NOWSHOWING values(791,06,07,191,'4월 17일','n');
insert into NOWSHOWING values(792,06,07,192,'4월 17일','n');
insert into NOWSHOWING values(793,06,07,193,'4월 17일','n');
insert into NOWSHOWING values(794,06,07,194,'4월 17일','n');
insert into NOWSHOWING values(795,06,07,195,'4월 17일','n'); 
insert into NOWSHOWING values(796,09,07,196,'4월 17일','n');
insert into NOWSHOWING values(797,09,07,197,'4월 17일','n');
insert into NOWSHOWING values(798,09,07,198,'4월 17일','n');
insert into NOWSHOWING values(799,09,07,199,'4월 17일','n');
insert into NOWSHOWING values(800,09,07,200,'4월 17일','n');
insert into NOWSHOWING values(801,16,07,201,'4월 17일','n');
insert into NOWSHOWING values(802,16,07,202,'4월 17일','n');
insert into NOWSHOWING values(803,16,07,203,'4월 17일','n');
insert into NOWSHOWING values(804,16,07,204,'4월 17일','n');
insert into NOWSHOWING values(805,16,07,205,'4월 17일','n');
insert into NOWSHOWING values(806,18,07,206,'4월 17일','n');
insert into NOWSHOWING values(807,18,07,207,'4월 17일','n');
insert into NOWSHOWING values(808,18,07,208,'4월 17일','n');
insert into NOWSHOWING values(809,18,07,209,'4월 17일','n');
insert into NOWSHOWING values(810,18,07,210,'4월 17일','n');

insert into NOWSHOWING values(811,01,07,181,'4월 18일','n');
insert into NOWSHOWING values(812,01,07,182,'4월 18일','n');
insert into NOWSHOWING values(813,01,07,183,'4월 18일','n');
insert into NOWSHOWING values(814,01,07,184,'4월 18일','n');
insert into NOWSHOWING values(815,01,07,185,'4월 18일','n'); 
insert into NOWSHOWING values(816,04,07,186,'4월 18일','n');
insert into NOWSHOWING values(817,04,07,187,'4월 18일','n');
insert into NOWSHOWING values(818,04,07,188,'4월 18일','n');
insert into NOWSHOWING values(819,04,07,189,'4월 18일','n');
insert into NOWSHOWING values(820,04,07,190,'4월 18일','n'); 
insert into NOWSHOWING values(821,06,07,191,'4월 18일','n');
insert into NOWSHOWING values(822,06,07,192,'4월 18일','n');
insert into NOWSHOWING values(823,06,07,193,'4월 18일','n');
insert into NOWSHOWING values(824,06,07,194,'4월 18일','n');
insert into NOWSHOWING values(825,06,07,195,'4월 18일','n'); 
insert into NOWSHOWING values(826,09,07,196,'4월 18일','n');
insert into NOWSHOWING values(827,09,07,197,'4월 18일','n');
insert into NOWSHOWING values(828,09,07,198,'4월 18일','n');
insert into NOWSHOWING values(829,09,07,199,'4월 18일','n');
insert into NOWSHOWING values(830,09,07,200,'4월 18일','n');
insert into NOWSHOWING values(831,16,07,201,'4월 18일','n');
insert into NOWSHOWING values(832,16,07,202,'4월 18일','n');
insert into NOWSHOWING values(833,16,07,203,'4월 18일','n');
insert into NOWSHOWING values(834,16,07,204,'4월 18일','n');
insert into NOWSHOWING values(835,16,07,205,'4월 18일','n');
insert into NOWSHOWING values(836,18,07,206,'4월 18일','n');
insert into NOWSHOWING values(837,18,07,207,'4월 18일','n');
insert into NOWSHOWING values(838,18,07,208,'4월 18일','n');
insert into NOWSHOWING values(839,18,07,209,'4월 18일','n');
insert into NOWSHOWING values(840,18,07,210,'4월 18일','n');
----------------------------------------------------------

----------------------------------------------------------240

insert into NOWSHOWING values(841,01,08,211,'4월 15일','n');
insert into NOWSHOWING values(842,01,08,212,'4월 15일','n');
insert into NOWSHOWING values(843,01,08,213,'4월 15일','n');
insert into NOWSHOWING values(844,01,08,214,'4월 15일','n');
insert into NOWSHOWING values(845,01,08,215,'4월 15일','n'); 
insert into NOWSHOWING values(846,04,08,216,'4월 15일','n');
insert into NOWSHOWING values(847,04,08,217,'4월 15일','n');
insert into NOWSHOWING values(848,04,08,218,'4월 15일','n');
insert into NOWSHOWING values(849,04,08,219,'4월 15일','n');
insert into NOWSHOWING values(850,04,08,220,'4월 15일','n'); 
insert into NOWSHOWING values(851,06,08,221,'4월 15일','n');
insert into NOWSHOWING values(852,06,08,222,'4월 15일','n');
insert into NOWSHOWING values(853,06,08,223,'4월 15일','n');
insert into NOWSHOWING values(854,06,08,224,'4월 15일','n');
insert into NOWSHOWING values(855,06,08,225,'4월 15일','n'); 
insert into NOWSHOWING values(856,09,08,226,'4월 15일','n');
insert into NOWSHOWING values(857,09,08,227,'4월 15일','n');
insert into NOWSHOWING values(858,09,08,228,'4월 15일','n');
insert into NOWSHOWING values(859,09,08,229,'4월 15일','n');
insert into NOWSHOWING values(860,09,08,230,'4월 15일','n');
insert into NOWSHOWING values(861,16,08,231,'4월 15일','n');
insert into NOWSHOWING values(862,16,08,232,'4월 15일','n');
insert into NOWSHOWING values(863,16,08,233,'4월 15일','n');
insert into NOWSHOWING values(864,16,08,234,'4월 15일','n');
insert into NOWSHOWING values(865,16,08,235,'4월 15일','n');
insert into NOWSHOWING values(866,18,08,236,'4월 15일','n');
insert into NOWSHOWING values(867,18,08,237,'4월 15일','n');
insert into NOWSHOWING values(868,18,08,238,'4월 15일','n');
insert into NOWSHOWING values(869,18,08,239,'4월 15일','n');
insert into NOWSHOWING values(870,18,08,240,'4월 15일','n');

insert into NOWSHOWING values(871,01,08,211,'4월 16일','n');
insert into NOWSHOWING values(872,01,08,212,'4월 16일','n');
insert into NOWSHOWING values(873,01,08,213,'4월 16일','n');
insert into NOWSHOWING values(874,01,08,214,'4월 16일','n');
insert into NOWSHOWING values(875,01,08,215,'4월 16일','n'); 
insert into NOWSHOWING values(876,04,08,216,'4월 16일','n');
insert into NOWSHOWING values(877,04,08,217,'4월 16일','n');
insert into NOWSHOWING values(878,04,08,218,'4월 16일','n');
insert into NOWSHOWING values(879,04,08,219,'4월 16일','n');
insert into NOWSHOWING values(880,04,08,220,'4월 16일','n'); 
insert into NOWSHOWING values(881,06,08,221,'4월 16일','n');
insert into NOWSHOWING values(882,06,08,222,'4월 16일','n');
insert into NOWSHOWING values(883,06,08,223,'4월 16일','n');
insert into NOWSHOWING values(884,06,08,224,'4월 16일','n');
insert into NOWSHOWING values(885,06,08,225,'4월 16일','n'); 
insert into NOWSHOWING values(886,09,08,226,'4월 16일','n');
insert into NOWSHOWING values(887,09,08,227,'4월 16일','n');
insert into NOWSHOWING values(888,09,08,228,'4월 16일','n');
insert into NOWSHOWING values(889,09,08,229,'4월 16일','n');
insert into NOWSHOWING values(890,09,08,230,'4월 16일','n');
insert into NOWSHOWING values(891,16,08,231,'4월 16일','n');
insert into NOWSHOWING values(892,16,08,232,'4월 16일','n');
insert into NOWSHOWING values(893,16,08,233,'4월 16일','n');
insert into NOWSHOWING values(894,16,08,234,'4월 16일','n');
insert into NOWSHOWING values(895,16,08,235,'4월 16일','n');
insert into NOWSHOWING values(896,18,08,236,'4월 16일','n');
insert into NOWSHOWING values(897,18,08,237,'4월 16일','n');
insert into NOWSHOWING values(898,18,08,238,'4월 16일','n');
insert into NOWSHOWING values(899,18,08,239,'4월 16일','n');
insert into NOWSHOWING values(900,18,08,240,'4월 16일','n');

insert into NOWSHOWING values(901,01,08,211,'4월 17일','n');
insert into NOWSHOWING values(902,01,08,212,'4월 17일','n');
insert into NOWSHOWING values(903,01,08,213,'4월 17일','n');
insert into NOWSHOWING values(904,01,08,214,'4월 17일','n');
insert into NOWSHOWING values(905,01,08,215,'4월 17일','n'); 
insert into NOWSHOWING values(906,04,08,216,'4월 17일','n');
insert into NOWSHOWING values(907,04,08,217,'4월 17일','n');
insert into NOWSHOWING values(908,04,08,218,'4월 17일','n');
insert into NOWSHOWING values(909,04,08,219,'4월 17일','n');
insert into NOWSHOWING values(910,04,08,220,'4월 17일','n'); 
insert into NOWSHOWING values(911,06,08,221,'4월 17일','n');
insert into NOWSHOWING values(912,06,08,222,'4월 17일','n');
insert into NOWSHOWING values(913,06,08,223,'4월 17일','n');
insert into NOWSHOWING values(914,06,08,224,'4월 17일','n');
insert into NOWSHOWING values(915,06,08,225,'4월 17일','n'); 
insert into NOWSHOWING values(916,09,08,226,'4월 17일','n');
insert into NOWSHOWING values(917,09,08,227,'4월 17일','n');
insert into NOWSHOWING values(918,09,08,228,'4월 17일','n');
insert into NOWSHOWING values(919,09,08,229,'4월 17일','n');
insert into NOWSHOWING values(920,09,08,230,'4월 17일','n');
insert into NOWSHOWING values(921,16,08,231,'4월 17일','n');
insert into NOWSHOWING values(922,16,08,232,'4월 17일','n');
insert into NOWSHOWING values(923,16,08,233,'4월 17일','n');
insert into NOWSHOWING values(924,16,08,234,'4월 17일','n');
insert into NOWSHOWING values(925,16,08,235,'4월 17일','n');
insert into NOWSHOWING values(926,18,08,236,'4월 17일','n');
insert into NOWSHOWING values(927,18,08,237,'4월 17일','n');
insert into NOWSHOWING values(928,18,08,238,'4월 17일','n');
insert into NOWSHOWING values(929,18,08,239,'4월 17일','n');
insert into NOWSHOWING values(930,18,08,240,'4월 17일','n');

insert into NOWSHOWING values(931,01,08,211,'4월 18일','n');
insert into NOWSHOWING values(932,01,08,212,'4월 18일','n');
insert into NOWSHOWING values(933,01,08,213,'4월 18일','n');
insert into NOWSHOWING values(934,01,08,214,'4월 18일','n');
insert into NOWSHOWING values(935,01,08,215,'4월 18일','n'); 
insert into NOWSHOWING values(936,04,08,216,'4월 18일','n');
insert into NOWSHOWING values(937,04,08,217,'4월 18일','n');
insert into NOWSHOWING values(938,04,08,218,'4월 18일','n');
insert into NOWSHOWING values(939,04,08,219,'4월 18일','n');
insert into NOWSHOWING values(940,04,08,220,'4월 18일','n'); 
insert into NOWSHOWING values(941,06,08,221,'4월 18일','n');
insert into NOWSHOWING values(942,06,08,222,'4월 18일','n');
insert into NOWSHOWING values(943,06,08,223,'4월 18일','n');
insert into NOWSHOWING values(944,06,08,224,'4월 18일','n');
insert into NOWSHOWING values(945,06,08,225,'4월 18일','n'); 
insert into NOWSHOWING values(946,09,08,226,'4월 18일','n');
insert into NOWSHOWING values(947,09,08,227,'4월 18일','n');
insert into NOWSHOWING values(948,09,08,228,'4월 18일','n');
insert into NOWSHOWING values(949,09,08,229,'4월 18일','n');
insert into NOWSHOWING values(950,09,08,230,'4월 18일','n');
insert into NOWSHOWING values(951,16,08,231,'4월 18일','n');
insert into NOWSHOWING values(952,16,08,232,'4월 18일','n');
insert into NOWSHOWING values(953,16,08,233,'4월 18일','n');
insert into NOWSHOWING values(954,16,08,234,'4월 18일','n');
insert into NOWSHOWING values(955,16,08,235,'4월 18일','n');
insert into NOWSHOWING values(956,18,08,236,'4월 18일','n');
insert into NOWSHOWING values(957,18,08,237,'4월 18일','n');
insert into NOWSHOWING values(958,18,08,238,'4월 18일','n');
insert into NOWSHOWING values(959,18,08,239,'4월 18일','n');
insert into NOWSHOWING values(960,18,08,240,'4월 18일','n');


select * from NOWSHOWING;
