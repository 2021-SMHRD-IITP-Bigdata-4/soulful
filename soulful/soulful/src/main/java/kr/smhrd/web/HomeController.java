package kr.smhrd.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@RequestMapping("/player.do")
	public String player(){ 
		return "player";
	}

    @GetMapping("/artist.do")
	public String artist(){ 
    	return "artist";	
	}
    
    @GetMapping("/browse.do")
	public String browse(){ 
    	return "browse";	
	}
    
    @GetMapping("/chart.do")
	public String chart(){ 
    	return "chart";	
	}
    
    @GetMapping("/playerconsole.do")
	public String playerconsole(){ 
    	return "playerconsole";	
	}
    
    @GetMapping("/profile.do")
	public String profile(){ 
    	return "profile";	
	}
    
    @GetMapping("/signup.do")
	public String signup(){ 
    	return "signup";	
	}
    
    @GetMapping("/signin.do")
   	public String signin(){ 
       	return "signin";	
   	}
    
    @GetMapping("/trackDetail.do")
   	public String trackDetail(){ 
       	return "trackDetail";	
   	}
}
