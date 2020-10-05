package com.kgc.tcmp077.service;

import com.kgc.tcmp077.pojo.StudentInfo;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-05 21:36
 */
public interface StudentInfoService {
    List<StudentInfo> stuList();
    void updStu(StudentInfo studentInfo);
}
