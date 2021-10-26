package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class MyplaylistsVO {
		// 나의 플레이리스트 순번, 추천 플레이리스트 순번, 작성 일자, 회원 아이디, 플레이 구분
	
		// @Non-null 
		private int mlist_seq;
		// 4개 다  @Default-null
		private int pl_seq;			
		private Date reg_date;
		private String user_id;
		private String play_ing;
	
}
