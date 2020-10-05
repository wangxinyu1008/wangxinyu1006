package com.kgc.tcmp077.service.impl;

import com.kgc.tcmp077.mapper.StudentInfoMapper;
import com.kgc.tcmp077.pojo.StudentInfo;
import com.kgc.tcmp077.service.StudentInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-05 21:37
 */
@Service("studentInfoService")
public class StudentInfoServiceImpl implements StudentInfoService {
    @Resource
    StudentInfoMapper studentInfoMapper;
    @Override
    public List<StudentInfo> stuList() {
        return studentInfoMapper.selectByExample(null);
    }

    @Override
    public void updStu(StudentInfo studentInfo) {
        studentInfoMapper.updateByPrimaryKeySelective(studentInfo);
    }
}
