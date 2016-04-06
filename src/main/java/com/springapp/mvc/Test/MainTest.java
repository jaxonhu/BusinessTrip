package com.springapp.mvc.Test;
import com.springapp.mvc.DAO.UserDao;
import com.springapp.mvc.Model.UserClient;

import com.springapp.mvc.Service.UserClientService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.annotation.Resource;
import java.io.Reader;

/**
 * Created by hujiaxuan on 2016/3/31.
 */

/*
*  实例化创建sqlSessionFactory，貌似使用bean的方式创建的sqlSessionFactory在main中并不能使用
*  包括注解在main中也不能使用
* */
public class MainTest {

    private static SqlSessionFactory sqlSessionFactory;
    private static String  resource = "com/springapp/mvc/Mybatis/Configuration.xml";
    private static Reader reader;
    @Resource
    public static  UserClientService userService;
    static{
        try{
            reader = Resources.getResourceAsReader(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static SqlSessionFactory getSession(){
        return sqlSessionFactory;
    }

    public static void main(String[] args){

        SqlSession sqlSession =sqlSessionFactory.openSession();
        try{
            UserDao user_op = sqlSession.getMapper(UserDao.class);

            UserClient userClient = user_op.selectUserClientById("20160331152326");
            System.out.println(userClient.toString());
        }finally{
            sqlSession.close();
        }


//        UserClient userClient = userService.selectUserById("20160331152326");
//        System.out.println(userClient.toString());
    }
}
