package com.ssm.demo.controller;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.util.PUserInfo;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.logging.Logger;

public class InterceptorLoginController extends HandlerInterceptorAdapter {
    /**

     * 登录拦截器，只有登录之后才能访问

     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.setCharacterEncoding("UTF-8");
//        PUser pUser= (PUser) request.getSession().getAttribute("user_info");
//
//        if(request.getRequestURI().indexOf("login/in")>0) {
//            System.out.println("\033[32;4m" + "\n" + "index>0" + "\n" + "\033[0m");
//            return true;
//        }
//        System.out.println("\033[32;4m" + "\n" + request.getSession().getAttribute(PUserInfo.USER_INFO)+"<<<<<<<<" + "\n" + "\033[0m");
//        if(request.getSession().getAttribute(PUserInfo.USER_INFO)!=null) {
//            return true;
//        }
//        response.sendRedirect("/ssm/login/page");
//        return false;

        request.setCharacterEncoding("utf-8");

        response.setCharacterEncoding("UTF-8");

        response.setContentType("text/html;charset=UTF-8");

        String url = request.getRequestURI().toString();

        System.out.println("\033[32;4m" + "\n" + "url:"+url + "\n" + "\033[0m");

        boolean flag = false;

        /*for (String s : IGNORE_URI) {

            if (url.contains(s)) { // 如果是登陆页面的请求 则放过

                flag = true;

                break;

            }
        }*/

        if(!flag){

            PUser pUser= (PUser) request.getSession().getAttribute("user_info");

            System.out.println("\033[32;4m" + "\n" + "拦截器得到的用户信息："+pUser + "\n" + "\033[0m");

            if(pUser == null){ // 检查是否登陆，否则跳回登陆页面

                PrintWriter out = response.getWriter();

                StringBuilder builder = new StringBuilder();

                builder.append("<script type=\"text/javascript\" charset=\"UTF-8\">");

                builder.append("alert(\"您还未登录，请先登录.\");");

                builder.append("window.top.location.href=\"");

                builder.append("/ssm/login/page\";</script>");

                out.print(builder.toString());

                out.close();

                return false;

            }}
        return true;
    }

    @Override

    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response,
                                Object handler, Exception ex)throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }

    @Override

    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);

    }
}
