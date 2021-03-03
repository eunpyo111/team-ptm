-- 트레이너회원
CREATE TABLE `trainer` (
	`t_no`           INT          NOT NULL auto_increment, 			  -- 트레이너번호
	`t_name`         VARCHAR(20)  NOT NULL, 						  -- 트레이너이름
	`t_id`           VARCHAR(20)  NOT NULL unique, 					  -- 아이디
	`t_pw`           VARCHAR(200) NOT NULL, 						  -- 비밀번호
	`t_email`        VARCHAR(100) NOT NULL unique, 					  -- 이메일
	`t_emailhash`    VARCHAR(64)  NULL,     						  -- 이메일해시
	`t_emailchecked` BOOLEAN      NULL,     					 	  -- 이메일확인
	`t_phone`        VARCHAR(20)  NOT NULL unique, 					  -- 휴대폰번호
	`t_joindate`     DATETIME     NOT NULL default CURRENT_TIMESTAMP, -- 가입일
	`t_addr1`        VARCHAR(255) NOT NULL, 						  -- 주소
	`t_addr2`        VARCHAR(255) NOT NULL, 						  -- 상세주소
	`t_originP`      VARCHAR(200) NULL,     						  -- 원본파일
	`t_realP`        VARCHAR(200) NULL,     						  -- 실제파일
	`t_etc`          TEXT         NULL,     						  -- 자기소개
	`t_state`        VARCHAR(2)   NOT NULL default 'Y', 			  -- 가입상태여부
	`t_admin`        VARCHAR(2)   NOT NULL default 'N',   			  -- 관리자여부
	primary key (t_no)
);

-- 일반회원
CREATE TABLE `members` (
	`m_qr`           VARCHAR(50)  NOT NULL unique,  -- QR코드번호
	`m_name`         VARCHAR(50)  NOT NULL, 		-- 이름
	`m_email`        VARCHAR(100) NOT NULL unique,  -- 이메일
	`m_emailhash`    VARCHAR(64)  NULL,     		-- 이메일해시
	`m_emailchecked` BOOLEAN      NULL,     		-- 이메일확인
	`m_phone`        VARCHAR(20)  NOT NULL unique,  -- 휴대폰번호
	`m_originP`      VARCHAR(200) NULL,     		-- 원본파일
	`m_realP`        VARCHAR(200) NULL,     		-- 실제파일
	`m_kg`           DOUBLE       NULL,     		-- 체중
	`m_bone`         DOUBLE       NULL,     		-- 근골격량
	`m_fat`          DOUBLE       NULL,     		-- 체지방
	`m_joindate`     DATE         NOT NULL, 		-- 가입일
	`m_state`        VARCHAR(2)   NULL,     		-- 서비스사용여부
	primary key (m_qr)
);

-- 트레이너의 회원
CREATE TABLE `pt` (
	`p_no`      INT         NOT NULL auto_increment, -- 회원관리번호
	`t_no`      INT         NOT NULL, 				 -- 트레이너번호
	`m_qr`      VARCHAR(50) NOT NULL, 				 -- QR코드번호
	`p_state`   CHAR        NOT NULL,				 -- 회원관리상태
	`p_ok`      DATE        NULL,    				 -- PT등록일
	`p_comment` TEXT        NULL,   				 -- 기타사항
	primary key (p_no),
	foreign key (t_no) references trainer(t_no),
	foreign key (m_qr) references members(m_qr)
);

-- PT회차
CREATE TABLE `round` (
	`r_no`   INT         NOT NULL auto_increment, -- 회차관리번호
	`t_no`   INT         NOT NULL, 				  -- 트레이너번호
	`m_qr`   VARCHAR(50) NOT NULL, 				  -- QR코드번호
	`p_no`   INT         NOT NULL, 				  -- 회원관리번호
	`r_ct`   INT         NOT NULL, 				  -- 회차번호
	`r_date` DATE        NOT NULL,				  -- PT날짜
	primary key (r_no),
	foreign key (t_no) references trainer(t_no),
	foreign key (m_qr) references members(m_qr),
	foreign key (p_no) references pt(p_no)
);