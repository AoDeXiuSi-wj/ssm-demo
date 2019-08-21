package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;

public class InterceptorController extends HandlerInterceptorAdapter {
//    private final Logger log = (Logger) LoggerFactory.getLogger(InterceptorController.class);

    public InterceptorController() {}

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.setCharacterEncoding("UTF-8");
        String wj= (String) request.getSession().getAttribute("name");
        if(wj == null){
            response.setCharacterEncoding("UTF-8");

            System.out.println("\033[32;4m" + "\n"+"未登录"+"\n" + "\033[0m");
            //页面被拦截之后，转发到登入页面去

            request.getRequestDispatcher("/login/goLogin").forward(request, response);
            return false;
        }else {
            System.out.println("\033[32;4m" + "\n"+"已登录"+"\n" + "\033[0m");
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }

    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
}
