package kr.smhrd.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;

public interface Mainmapper {
	
	// comments, playlists, mysongs, myplaylists, lyrics
	
	// comments _ 사용자 코멘트
	public List<CommentsVO> commentsList();
	public void commentsInsert(CommentsVO vo);
	public void commentsUpdate(CommentsVO vo);
	public CommentsVO commentsInfo(int comm_seq);
	
	@Delete("delete from comments where comm_seq=#{comm_seq}")
	public void commentsDelete(int comm_seq);
	@Update("update comments set song_seq=#{song_seq}, comm_content=#{comm_content} where comm_seq=#{comm_seq}")
	public void update(CommentsVO vo);
	
	
	// playlists _ 플레이리스트
	public List<PlaylistsVO> playlists_List();
	public void playlistsInsert(PlaylistsVO vo);
	public void playlistsUpdate(PlaylistsVO vo);
	public PlaylistsVO playlistsInfo(int pl_seq);
	
	@Delete("delete from playlists where pl_seq=#{pl_seq}")
	public void playlistsDelete(int pl_seq);
	@Update("update comments set song_seq=#{song_seq}, comm_content=#{comm_content} where comm_seq=#{comm_seq}")
	public void update(PlaylistsVO vo);
	
	// myplaylist _ 나의 플레이리스트
	public List<MysongsVO> mysongsList();
	public void mysongsInsert(MysongsVO vo);
	public void mysongsUpdate(MysongsVO vo);
	public void mysongsDelete(int msong_seq);
	public MysongsVO mysongsinfo(int msong_seq);
	
	public List<MyplaylistsVO> myplaylists_List();
	public void myplaylistsInsert(MyplaylistsVO vo);
	public void myplaylistsUpdate(MyplaylistsVO vo);
	public void myplaylistsDelete(int mlist_seq);
	public MyplaylistsVO myplaylistsinfo(int mlist_seq);
	
	public List<LyricsVO> lyricsList();
	public void lyricsInsert(LyricsVO vo);
	public void lyricsUpdate(LyricsVO vo);
	public void lyricsDelete(int lyric_seq);
	public LyricsVO lyricsinfo(int lyric_seq);
	
	
}

