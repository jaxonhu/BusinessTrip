package com.springapp.mvc.Service.Impl;

import com.springapp.mvc.DAO.ReviewDao;
import com.springapp.mvc.Model.Review;
import com.springapp.mvc.Service.ReviewService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/4/21.
 */
@Service
public class ReviewServiceImpl implements ReviewService{
    @Resource
    private ReviewDao reviewDao;
    @Override
    public int makeReview(Review review) {

        return reviewDao.makeReview(review);
    }
}
