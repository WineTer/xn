package com.xiaonei.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;







import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.xiaonei.entity.User;
import com.xiaonei.service.UserService;


@Controller   //��ʶ����һ����������
@RequestMapping("/") //
public class Controllers {

	//����ҵ���Ĵ��롣����ҳ�洫�����Ĳ���β���ת�����ҳ
	@Autowired
	private UserService service;
	
	
	@RequestMapping("public/login")
	public ModelAndView login(HttpServletRequest request,String email, String pwd){
		ModelAndView modelView = new ModelAndView();
		User user = service.queryUserList(email, pwd);
		if(user==null){
			modelView.setViewName("/index.jsp");
		}else{
			request.getSession().setAttribute("user", user);
			modelView.addObject("user", service.queryUserList(email, pwd));
			modelView.setViewName("/self/homePage.jsp");
		}
		
		return modelView;
	}
	
	@RequestMapping("public/register")
	public 	ModelAndView addUser(HttpServletRequest request,HttpServletResponse response,
			String name,String email,String pwd,String level,String loginDate,
			String sex,String visited,String photo){
			
		service.addUsers( name, email, pwd, level, loginDate,  sex, visited,photo);
		ModelAndView m=new ModelAndView("/self/homePage.jsp");
	
		return m;
		
		
		
		}
	@RequestMapping("public/AddBlog")
	public 	ModelAndView addBlog(HttpServletRequest request,HttpServletResponse response,
			String name,String email,String pwd,String level,String loginDate,
			String sex,String visited,String photo){
			
		service.addUsers( name, email, pwd, level, loginDate,  sex, visited,photo);
		ModelAndView m=new ModelAndView("/self/homePage.jsp");
	
		return m;
		
		
		
		}
	
	@RequestMapping("public/exit")
	public ModelAndView exit(HttpServletRequest request){
		ModelAndView modelView = new ModelAndView();
		request.getSession().removeAttribute("user");
		modelView.setViewName("/index.jsp");
		return modelView;
	}

	
}
