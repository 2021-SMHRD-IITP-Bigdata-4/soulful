package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class CommentsVO {
	
	// 코멘트 순번, 곡 순번, 코멘트 내용, 회원 아이디, 작성일자
	//@Non-null 
	public int comm_seq;
	//@Non-null 
	public int song_seq;
	// @Default-null
	public String comm_content;
	//@Non-null 
	private String user_id;
	// @Default-null
	private Date reg_date;
	
}
