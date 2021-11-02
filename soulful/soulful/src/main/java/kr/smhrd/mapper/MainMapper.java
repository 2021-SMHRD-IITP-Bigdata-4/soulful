package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {

   public List<SonginfosVO> songinfos_List();
   public List<SonginfosVO> songinfos_ListAjax();
   public List<PlaylistsVO> playlist_List();
   public List<PlaylistsVO> playlist_ListAjax();
   public List<PlaylistsVO> playlist_ListAjax_happy();
   public List<PlaylistsVO> playlist_ListAjax_sad();
   public List<PlaylistsVO> playlist_ListAjax_rest();
   public List<PlaylistsVO> playlist_ListAjax_cent();
   public List<PlaylistsVO> playlist_ListAjax_shout();
   public List<PlaylistsVO> playlist_ListAjax_stress();
   public List<PlaylistsVO> playlist_ListAjax_gidae();
   public List<PlaylistsVO> playlist_ListAjax_dap();
   public List<PlaylistsVO> playlist_ListAjax_clear();
   public List<PlaylistsVO> playlist_ListAjax_rain();
   public List<PlaylistsVO> playlist_ListAjax_cloud();
   public List<PlaylistsVO> playlist_ListAjax_snow();

   
   
}