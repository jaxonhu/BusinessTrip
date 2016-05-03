package com.springapp.mvc.DAO;

import com.springapp.mvc.Model.Notification;
import org.springframework.stereotype.Repository;

/**
 * Created by hujiaxuan on 2016/5/3.
 */
@Repository
public interface NotificationDao {
    public int insertNotification(Notification notification);
}
