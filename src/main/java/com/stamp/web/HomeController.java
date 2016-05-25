package com.stamp.web;

import java.text.DateFormat;
import java.util.*;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.stamp.member.LoginVo;
import com.stamp.member.LoginService;
import com.stamp.stamp.StampVo;
import com.stamp.stamp.StampService;
import com.stamp.data.FestivalVo;
import com.stamp.data.CultureVo;
import com.stamp.data.DataService;

@Controller
public class HomeController {
	@Autowired
	@Qualifier("loginService")
	LoginService lService;
	
	@Autowired
	@Qualifier("stampService")
	StampService sService;
	
	@Autowired
	@Qualifier("dataService")
	DataService dService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "login";
	}
	
	//login
			@RequestMapping(value="/home", method=RequestMethod.POST)
			public ModelAndView selectId(LoginVo vo){
				
				ModelAndView mv = new ModelAndView();
				LoginVo checkaccount = lService.SearchAccount(vo.getId());

				if(checkaccount != null && vo.getId() !="")
				{
					if(vo.getId().equals(checkaccount.getId()) && vo.getPassword().equals(checkaccount.getPassword())){
						mv.setViewName("home");
						return mv;
					}
					else {
						mv.setViewName("loginFail");
						return mv;
					}
				}
				else
				{
					mv.setViewName("loginFail");
					return mv;
				}
			}
			
			//이동페이지
			@RequestMapping(value="/registerPage")
			public String register(){
				return "registerPage";
			}
			
			@RequestMapping(value="/insertaccount", method=RequestMethod.POST)
			public String insertaccount(){
				return "insertaccount";
			}
			
			@RequestMapping(value="/history")
			public String history(){
				return "history";
			}
			
			@RequestMapping(value="/festival" , method=RequestMethod.GET)
			public ModelAndView festival(FestivalVo fv){
				Calendar cal = Calendar.getInstance();
				String month = String.valueOf(cal.get(Calendar.MONTH)+1);
				String culturemonth = "0"+month;
				List<FestivalVo> LFV = dService.SearchFestival(month);
				List<CultureVo> CFV = dService.SearchCulture(culturemonth);
				//System.out.println(LFV.get(0).getTitle());
				ModelAndView mv = new ModelAndView();
				mv.addObject("fv", LFV);
				mv.addObject("cv", CFV);
				mv.setViewName("festival");
				return mv;
			}
			
			@RequestMapping(value="/board")
			public String board(){
				return "board";
			}
			
			@RequestMapping(value="/home")
			public String home(){
				return "home";
			}
	
			@RequestMapping(value="/stamp" , method=RequestMethod.GET)
			public ModelAndView stamp(){
				StampVo sv = sService.SearchStamp("admin"); //Strign Sid : session id 쓸것 
				ModelAndView mv = new ModelAndView();
				mv.addObject("sv", sv);
				mv.setViewName("stamp");
				return mv;
			} 
			
			//파싱페이지
			@RequestMapping(value="/totreasure")
			public String totreasure(){
				return "totreasure";
			}
			@RequestMapping(value="/tofestival")
			public String tofestival(){
				return "tofestival";
			}
			@RequestMapping(value="/toculture")
			public String toculture(){
				return "toculture";
			}
}