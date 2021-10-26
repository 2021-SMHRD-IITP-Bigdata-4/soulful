package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor


public class MembersVO {
	// 회원 아이디, 회원 암호, 회원 이름, 회원 휴대폰, 가입 일자, 관리자여부
		// @Non-null 
		private String user_id;
		// 5개 다  @Default-null
		private String user_pwd;
		private String user_name;
		private String user_phone;
		private Date user_joindate;
		private String admin_yn;
		
}
