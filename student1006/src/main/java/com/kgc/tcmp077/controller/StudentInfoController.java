package com.kgc.tcmp077.controller;

import com.kgc.tcmp077.pojo.StudentInfo;
import com.kgc.tcmp077.service.StudentInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author shkstart
 * @create 2020-10-05 21:40
 */
@Controller
public class StudentInfoController {
    @Resource
    StudentInfoService studentInfoService;
    @RequestMapping("/")
    public String index(Model model){
        List<StudentInfo> studentInfos = studentInfoService.stuList();
        model.addAttribute("studentInfos",studentInfos);
        return "index";
    }
//    @RequestMapping("/index")
//    public Map<String,Object>
//
//    }
    @RequestMapping("/toUpd")
    @ResponseBody
    public Map<String,Object> toUpd(String sid, String sname, String sgender, String sage, String saddress, String semail,HttpSession session){
        Map<String,Object> map=new HashMap<>();
        if(sid!=null&&sname!=null&&sgender!=null&&sage!=null&&saddress!=null&&semail!=null) {
            map.put("status","true");
            session.setAttribute("sid", sid);
            session.setAttribute("sname", sname);
            session.setAttribute("sgender", sgender);
            session.setAttribute("sage", sage);
            session.setAttribute("saddress", saddress);
            session.setAttribute("semail", semail);
            System.out.println(sid);
            return map;
        }else{
            map.put("status","false");
        }
        return map;
    }
    @RequestMapping("/doUpd")
    public String doUpd(StudentInfo studentInfo){
        studentInfoService.updStu(studentInfo);
        return "redirect:/";
    }
}
