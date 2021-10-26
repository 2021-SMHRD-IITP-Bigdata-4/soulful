package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class LyricsVO {
	// 가사 순번, 곡 순번, 회원 아이디, 가사 요약
	// @Non-null
	private int lyric_seq;
	// @Non-null
	public int song_seq;
	// @Non-null
	private String user_id;
	// @Default-null
	private String lyric_mini;
}
