package com.springapp.mvc.Controller;

import com.springapp.mvc.Model.UserClient;
import com.springapp.mvc.Service.UserClientService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by hujiaxuan on 2016/5/3.
 */
@Controller
public class UploadController {

    @Resource
    public UserClientService userService;

    @RequestMapping(value = "upload", method = RequestMethod.POST)
    public @ResponseBody
    String upload(HttpServletRequest request,
                  HttpServletResponse response, ModelMap model,HttpSession session) throws IOException {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        MultipartFile mFile = multipartRequest.getFile("file");
        String user_id = (String)session.getAttribute("user_id");
        //String path = request.getSession().getServletContext().getRealPath("/");
        String path = request.getSession().getServletContext().getRealPath("/resources/upload");
        String filename = mFile.getOriginalFilename();
        InputStream inputStream = mFile.getInputStream();
        UserClient uc = userService.selectUserById(user_id);
        byte[] b = new byte[1048576];
        int length = inputStream.read(b);
        Date date = new Date();
        SimpleDateFormat F = new SimpleDateFormat("yyyyMMddHHmmss");
        String prefix=filename.substring(filename.lastIndexOf("."));
        filename = "123" + F.format(date) + prefix;
        String url =path +"/"+ filename;
        System.out.println(url);
        FileOutputStream outputStream = new FileOutputStream(url);
        outputStream.write(b, 0, length);
        inputStream.close();
        outputStream.close();
        String url2 = "/BusinessTrip/resources/upload/"+filename;
        boolean res = userService.userFaceUrlUpload(user_id,url2,uc.user_account);
        return "success";
    }
}
