package com.springapp.mvc.Service;

import com.springapp.mvc.Model.Comment;
import com.springapp.mvc.Model.Weibo;

import java.util.List;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
public interface WeiboService {
    public int weiboPublish(Weibo weibo);
    public List<Weibo> selectAllWeiboByDepartment(String department);
    public int weiboThumbOn(String weibo_id,int num);
//    public int weiboThumbOn(Weibo weibo);
    public Weibo selectWeiboById(String weibo_id);
    public List<Comment> selectAllCommentsByWeiboId(String id);
    public int commentPublish(Comment commnet);
}
