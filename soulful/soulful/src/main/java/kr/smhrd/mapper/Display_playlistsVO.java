package kr.smhrd.mapper;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Display_playlistsVO {

	 private int pl_seq;
     private String pl_title;
     private String user_id;
     private Date reg_date;
     private String song_list;
     private String song_seq;
     private String playlist_img;
     private int song_code1;
     private int song_code2;
     private int song_code3;
     private int song_code4;
     private int song_code5;
     private int song_code6;
     private int song_code7;
     private int song_code8;
     private int song_code9;
     private double ly_happy; 
     private double ly_sad; 
     private double ly_rest; 
     private double ly_sexy; 
     private double tr_acou; 
     private double tr_dance; 
     private double tr_ener; 
     private double tr_loud; 
     
	
}
