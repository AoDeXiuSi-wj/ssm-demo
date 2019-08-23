package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.util.PUserInfo;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;

public class InterceptorLoginController extends HandlerInterceptorAdapter {
    private final Logger log = (Logger) LoggerFactory.getLogger(InterceptorLoginController.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.setCharacterEncoding("UTF-8");
        PUser pUser= (PUser) request.getSession().getAttribute("pUser");

        if(request.getRequestURI().indexOf("login/in")>0) {
            System.out.println("\033[32;4m" + "\n" + "index>0" + "\n" + "\033[0m");
            return true;
        }
        System.out.println("\033[32;4m" + "\n" + request.getSession().getAttribute(PUserInfo.USER_INFO)+"<<<<<<<<" + "\n" + "\033[0m");
        if(request.getSession().getAttribute(PUserInfo.USER_INFO)!=null) {
            return true;
        }
        response.sendRedirect("/index.jsp");
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    }

    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    }

}
