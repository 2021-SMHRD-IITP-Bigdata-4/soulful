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
import kr.smhrd.mapper.PlaylistsVO;
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

    @RequestMapping("/playlist_ListAjax.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax(){
       List<PlaylistsVO> playlist_ListAjax = mapper.playlist_ListAjax();
       return playlist_ListAjax;
    }
    // 여기서부터가 고객선택 8개 감정
    @RequestMapping("/playlist_ListAjax_happy.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_happy(){
       List<PlaylistsVO> playlist_ListAjax_happy = mapper.playlist_ListAjax_happy();
       return playlist_ListAjax_happy;
    }
    @RequestMapping("/playlist_ListAjax_sad.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_sad(){
       List<PlaylistsVO> playlist_ListAjax_sad = mapper.playlist_ListAjax_sad();
       return playlist_ListAjax_sad;
    }
    @RequestMapping("/playlist_ListAjax_rest.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_rest(){
       List<PlaylistsVO> playlist_ListAjax_rest = mapper.playlist_ListAjax_rest();
       return playlist_ListAjax_rest;
    }
    @RequestMapping("/playlist_ListAjax_cent.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_cent(){
       List<PlaylistsVO> playlist_ListAjax_cent = mapper.playlist_ListAjax_cent();
       return playlist_ListAjax_cent;
    }
    @RequestMapping("/playlist_ListAjax_shout.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_shout(){
       List<PlaylistsVO> playlist_ListAjax_shout = mapper.playlist_ListAjax_shout();
       return playlist_ListAjax_shout;
    }
    @RequestMapping("/playlist_ListAjax_stress.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_stress(){
       List<PlaylistsVO> playlist_ListAjax_stress = mapper.playlist_ListAjax_stress();
       return playlist_ListAjax_stress;
    }
    @RequestMapping("/playlist_ListAjax_gidae.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_gidae(){
       List<PlaylistsVO> playlist_ListAjax_gidae = mapper.playlist_ListAjax_gidae();
       return playlist_ListAjax_gidae;
    }
    @RequestMapping("/playlist_ListAjax_dap.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_dap(){
       List<PlaylistsVO> playlist_ListAjax_dap = mapper.playlist_ListAjax_dap();
       return playlist_ListAjax_dap;
    }
    
    @RequestMapping("/playlist_ListAjax_clear.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_clear(){
       List<PlaylistsVO> playlist_ListAjax_clear = mapper.playlist_ListAjax_clear();
       return playlist_ListAjax_clear;
    }
    @RequestMapping("/playlist_ListAjax_rain.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_rain(){
       List<PlaylistsVO> playlist_ListAjax_rain = mapper.playlist_ListAjax_rain();
       return playlist_ListAjax_rain;
    }
    @RequestMapping("/playlist_ListAjax_cloud.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_cloud(){
       List<PlaylistsVO> playlist_ListAjax_cloud = mapper.playlist_ListAjax_cloud();
       return playlist_ListAjax_cloud;
    }
    @RequestMapping("/playlist_ListAjax_snow.do")
    public @ResponseBody List<PlaylistsVO> playlist_ListAjax_snow(){
       List<PlaylistsVO> playlist_ListAjax_snow = mapper.playlist_ListAjax_snow();
       return playlist_ListAjax_snow;
    }
    
    
    
    @GetMapping("/player.do")
    public void playlist_List(Model model) {
       List<PlaylistsVO> playlist = mapper.playlist_List();
       model.addAttribute("playlist", playlist);
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

