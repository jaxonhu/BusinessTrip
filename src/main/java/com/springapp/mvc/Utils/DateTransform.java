package com.springapp.mvc.Utils;

import java.util.Date;

/**
 * Created by hujiaxuan on 2016/4/11.
 */
/*
*  @params: pre_date 之前的时间格式 如04/23/2016
*
*  @return: 转换后的格式 2016-04-23
*
* */
public class DateTransform {
    public String date_transform(String pre_date){
        String[] dateString = pre_date.split("/");
        String res = dateString[2]+"-"+dateString[0]+"-"+dateString[1];
        return res;
    }
}
