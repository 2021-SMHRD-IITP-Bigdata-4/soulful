package kr.smhrd.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.ArrayList;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.mapper.CommentsVO;
import kr.smhrd.mapper.MainMapper;
import kr.smhrd.mapper.SonginfosVO;


@Controller
public class HomeController {

	@Inject
	private MainMapper mapper;
	
	@RequestMapping("/songinfos_ListAjax.do")
	public @ResponseBody List<SonginfosVO> songinfos_ListAjax(){ 
		List<SonginfosVO> songinfos_ListAjax = mapper.songinfos_ListAjax();
		return songinfos_ListAjax;
	}
	   
    @GetMapping("/trackDetail.do")
   	public void songinfos_List(Model model){ 
    	List<SonginfosVO> songlist = mapper.songinfos_List();
    	model.addAttribute("songlist", songlist);	
   	}

}

    

/*    //ㅡㅡㅡㅡ 20일 추가 _ 사용자 코멘트 ㅡㅡㅡㅡ
=======
   /* //ㅡㅡㅡㅡ 20일 추가 _ 사용자 코멘트 ㅡㅡㅡㅡ
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-4/soulful.git
    @GetMapping("/commentList.do")
    public String commentList(Model model) {
    	List<CommentsVO> list = mapper.commentsList();
    	model.addAttribute("list", list);
    	return "commentsList";
    }
    @PostMapping("commentsInsert.do")
	public String boardInsert(CommentsVO vo) { //BoardVO VO = new BoardVO();
		mapper.commentsInsert(vo);
		// ★ 저장 성공 시, 다시 돌아가야하니까 Redirect !
		return "redirect:/commentsList.do"; // /WEB-INF/views/boardList.do.jsp
	}
    @RequestMapping("/commentsInfo.do")
	public void commentsInfo(@RequestParam("comm_seq") int comm_seq, Model model) { // ?idx=9
		CommentsVO vo = mapper.commentsInfo(comm_seq);
		model.addAttribute("vo", vo);
		// 로직을 만들어야 한다. Mapper : interface라 로직을 짤 수 X 
		// return "commentsInfo"; // /WEB-INF/views/boardContent.jsp
	}
    @PostMapping("commentsUpdate.do")
	public String commentsUpdate(CommentsVO vo) {
		mapper.commentsUpdate(vo);
		return "redirect:/commentsList.do";
	}
	@GetMapping("commentsDelete.do")
	public String commentsDelete(int comm_seq) {
		mapper.commentsDelete(comm_seq);
		return "redirect:/commentsList.do";
	}
	//ㅡㅡㅡㅡ 20일 추가 _ 사용자 코멘트 ㅡㅡㅡㅡ
<<<<<<< HEAD
  */  

    
