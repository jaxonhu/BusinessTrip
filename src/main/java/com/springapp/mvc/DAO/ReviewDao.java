package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Review;
import org.springframework.stereotype.Repository;

import java.sql.Date;

/**
 * Created by hujiaxuan on 2016/4/21.
 */
@Repository
public interface ReviewDao {
    public int makeReview(Review review);

}
