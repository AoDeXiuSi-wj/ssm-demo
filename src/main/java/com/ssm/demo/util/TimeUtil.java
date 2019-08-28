package com.ssm.demo.util;

import org.junit.jupiter.api.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
    public static String getDateStr(String reg, Date date){
        SimpleDateFormat sf=new SimpleDateFormat(reg);
        return sf.format(date);
    }

    @Test
    public void test(){
        String ss=getDateStr("yyyy-mm-dd-HH-MM-ss",new Date());
        System.out.println("\033[32;4m" + "\n" + "时间："+ss + "\n" + "\033[0m");
    }
}
