package com.springapp.mvc.Service.Impl;

import com.springapp.mvc.DAO.WeiboDao;
import com.springapp.mvc.Model.Comment;
import com.springapp.mvc.Model.Weibo;
import com.springapp.mvc.Service.WeiboService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hujiaxuan on 2016/4/25.
 */
@Service
public class WeiboServiceImpl implements WeiboService {
    @Resource
    public WeiboDao weiboDao;
    @Override
    public int weiboPublish(Weibo weibo) {
        int res = weiboDao.weiboPublish(weibo);
        return res;
    }

    @Override
    public List<Weibo> selectAllWeiboByDepartment(String department) {

        return weiboDao.selectAllWeiboByDepartment(department);
    }

    @Override
    public List<Comment> selectAllCommentsByWeiboId(String id) {
        return weiboDao.selectAllCommentByWeiboId(id);
    }

    //    @Override
//    public int weiboThumbOn(Weibo weibo) {
//
//        return weiboDao.weiboThumbOn(weibo);
//    }
    @Override
    public int weiboThumbOn(String weibo_id,int num) {
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("weibo_id",weibo_id);
        map.put("num",num);
        return weiboDao.weiboThumbOn(map);
    }

    @Override
    public Weibo selectWeiboById(String weibo_id) {
        return weiboDao.selectWeiboById(weibo_id);
    }

    @Override
    public int commentPublish(Comment commnet) {
        return weiboDao.insertComment(commnet);
    }
}
