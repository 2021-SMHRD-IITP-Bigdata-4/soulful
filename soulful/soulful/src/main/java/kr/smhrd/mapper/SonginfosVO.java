package kr.smhrd.mapper;

import java.sql.Date;
import com.mysql.jdbc.Blob;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class SonginfosVO {
	// private : 외부에서 접근 불가 -> jsp : 접근가능하게 Getter/Setter 생성
	// Spring은 자동으로  getter,setter를 만들 수 O -> API사용 해야함
	// 위의 @ : lombok(롬복)
	
	// 곡 순번, 분류코드, 곡 명, 장르명, 아티스트 명, 앨범명, 앨범 출시일,
	// 가사, 곡 재생일자, 곡 재생횟수, 곡 평가점수, 음원 분위기,
	// 가사감정1, 가사감정2, 가사감정 리스트, 이미지
	
	//모두 @Non-null 
	private int song_seq;
	private String song_code;
	private String song_title;
	private String song_genre;
	private String artist;
	private String track_emotion;
	private String track_acousticness;
	private String track_danceability;
	private String track_energy;
	private String track_loudness;
	private String lyric_emotion;
	private String lyric_happy;
	private String lyric_sad;
	private String lyric_rest;
	private String lyric_sexy;
	
	
}
