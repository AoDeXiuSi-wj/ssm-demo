package com.ssm.demo.util;

import com.ssm.demo.entity.PUser;
import com.ssm.demo.util.PUserInfo;

import javax.servlet.http.HttpServletRequest;

public class InterceptorBasePUserInfo {
    public void setSessionPUser(HttpServletRequest req, PUser pUser){
        req.getSession().setAttribute(PUserInfo.USER_INFO,pUser);
    }
    public PUser getSessionPUser(HttpServletRequest req){
        return (PUser) req.getSession().getAttribute(PUserInfo.USER_INFO);
    }
}
