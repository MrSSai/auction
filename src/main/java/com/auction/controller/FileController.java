package com.auction.controller;

import com.auction.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
@RequestMapping("/file")
public class FileController {


    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody
    String uploadImg(@RequestParam("file") MultipartFile file,
                     HttpServletRequest request) {
        String contentType = file.getContentType();
        String fileName = file.getOriginalFilename();
        String filePath = "images/";
        String filePathPer = "src/main/resources/static/";
        try {
            FileUtil.uploadFile(file.getBytes(), filePathPer + filePath, fileName);
        } catch (Exception e) {
            // TODO: handle exception
        }
        //返回json
        return filePath + fileName;
    }

}
