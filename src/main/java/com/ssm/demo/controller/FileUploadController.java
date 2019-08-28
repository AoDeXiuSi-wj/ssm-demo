package com.ssm.demo.controller;

import com.ssm.demo.util.TimeUtil;
import org.aspectj.util.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/file")
public class FileUploadController {
    @RequestMapping("/up")
    public void insert(HttpServletRequest request, HttpServletResponse response
            , @RequestParam("file") MultipartFile[] file) throws Exception{
        if(file!=null&&file.length>0){
            //组合image名称，“;隔开”
            List<String> fileName =new ArrayList<String>();
            String savePath="F:\\IdeaIU\\WorkPlace\\demo\\src\\main\\webapp\\static\\upload-files";
            try {
                for (int i = 0; i < file.length; i++) {
                    if (!file[i].isEmpty()) {
                        //上传文件，随机名称，";"分号隔开
                        fileName.add(fileUpload(request,savePath,new Date(),file[i], true));
                    }
                }

                //上传成功
                if(fileName!=null&&fileName.size()>0){
                    System.out.println("\033[32;4m" + "\n" + "上传成功！" + "\n" + "\033[0m");
                }else {
                    System.out.println("\033[32;4m" + "\n" + "上传失败！" + "\n" + "\033[0m");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else {
            System.out.println("\033[32;4m" + "\n" + "未检测到文件！" + "\n" + "\033[0m");
        }
    }

    /**
     * 上传图片
     * @param isRandomName 是否随机名称
     * @param request 请求
     * @param path_deposit 存放位置(路径)
     * @param date
     *@param file 文件  @return 完整文件路径
     */

    @ResponseBody
    public static String fileUpload(HttpServletRequest request, String path_deposit, Date date, MultipartFile file, boolean isRename) {
        //上传
        try {
            String[] typeImg = {"gif", "png", "jpg"};
            if (file != null) {
                String origName = file.getOriginalFilename();// 文件原名称
                System.out.println("\033[32;4m" + "\n" + "上传的文件原名称：" +origName +"\n" + "\033[0m");
                // 判断文件类型
                String type = origName.indexOf(".") != -1 ? origName.substring(origName.lastIndexOf(".") + 1, origName.length()) : null;
                if (type != null) {
                    boolean booIsType = false;
                    for (int i = 0; i < typeImg.length; i++) {
                        if (typeImg[i].equals(type.toLowerCase())) {
                            booIsType = true;
                        }
                    }
                    //类型正确
                    if (booIsType) {
                        //存放图片文件的路径
                        //String path = request.getSession().getServletContext().getRealPath(path_deposit);
                        String path=path_deposit;
                        System.out.println("\033[32;4m" + "\n" + "图片保存位置："+path + "\n" + "\033[0m");
                        //组合名称
                        String fileSrc = "";
                        //是否重命名名称
                        if (isRename) {
                            origName = TimeUtil.getDateStr("yyyymmdd-HH-MM-ss",new Date()) + origName.substring(origName.lastIndexOf("."));
                            System.out.println("\033[32;4m" + "\n" + "文件新名称："+origName + "\n" + "\033[0m");
                        }
                        //判断是否存在目录
                        File targetFile = new File(path, origName);
                        if (!targetFile.exists()) {
                            targetFile.mkdirs();//创建目录
                        }
                        //上传
                        file.transferTo(targetFile);
                        //完整路径
                        fileSrc = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/"+ path_deposit + origName;
                        System.out.println("\033[32;4m" + "\n" + "图片上传成功:"+fileSrc + "\n" + "\033[0m");
                        return fileSrc;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
