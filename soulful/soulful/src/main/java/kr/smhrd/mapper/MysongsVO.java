package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class MysongsVO {
	
		// 내 음악 순번, 곡 순번, 회원 아이디, 작성일자
		//@Non-null
		private int msong_seq;
		//@Default-null
		private int song_seq;
		//@Non-null
		private String user_id;
		//@Default-null
		private Date reg_date;
		
}
