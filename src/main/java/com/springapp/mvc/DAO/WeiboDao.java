package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Comment;
import com.springapp.mvc.Model.Weibo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
@Repository
public interface WeiboDao {
    public int weiboPublish(Weibo weibo);
    public List<Weibo> selectAllWeiboByDepartment(String department);
//    public int weiboThumbOn(@Param("weibo_id")String weibo_id,@Param("num")int num);
    public int weiboThumbOn(Map<String,Object> map);
//    public int weiboThumbOn(Weibo weibo);
    public Weibo selectWeiboById(String weibo_id);
    public List<Comment> selectAllCommentByWeiboId(String weibo_id);
    public int insertComment(Comment comment);
}
