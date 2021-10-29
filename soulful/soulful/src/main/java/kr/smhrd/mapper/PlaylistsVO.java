package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class PlaylistsVO {
	// 플레이리스트 순번, 플레이리스트 제목, 작성자 아이디, 작성 일자, 곡 순번 리스트
		
		// @Non-null 
		private int pl_seq;
		// 4개 다  @Default-null
		private String pl_title;
		private String user_id;
		private Date reg_date;
		private String song_list;
		
	    public int get_pl_seq() {
	        return pl_seq;
	    }

	    public String get_pl_title() {
	        return pl_title;
	    }

	    public String get_song_list() {
	        return song_list;
	    }



		
}
