package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainMapper {

	public List<SonginfosVO> songinfos_List();
	public List<SonginfosVO> songinfos_ListAjax();
}
