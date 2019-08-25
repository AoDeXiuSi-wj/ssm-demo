package com.ssm.demo.util;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.util.InterceptorBaseInfo;

import javax.servlet.http.HttpServletRequest;

public class InterceptorSetSessionInfo {
    public void setSessionPUser(HttpServletRequest req, PUser pUser){
        req.getSession().setAttribute(InterceptorBaseInfo.USER_INFO,pUser);
    }
    public PUser getSessionPUser(HttpServletRequest req){
        return (PUser) req.getSession().getAttribute(InterceptorBaseInfo.USER_INFO);
    }
}
