package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Apply;
import org.springframework.stereotype.Repository;

/**
 * Created by hujiaxuan on 2016/4/10.
 */
@Repository
public interface ApplyDao {
    public boolean insertApply(Apply apply);
}
