package com.example.service;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.crypto.SecureUtil;
import com.example.common.Constants;
import com.example.common.enums.ResultCodeEnum;
import com.example.common.enums.RoleEnum;
import com.example.entity.Account;
import com.example.entity.Admin;
import com.example.entity.Customer;
import com.example.exception.CustomException;
import com.example.mapper.CustomerMapper;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

/**
 * 客户表业务处理
 **/
@Service
public class CustomerService {

    @Resource
    private CustomerMapper customerMapper;




    //md5加密
    private  String securePass(String password) throws UnsupportedEncodingException{
        String pwd = URLEncoder.encode(password,"utf-8");
        return SecureUtil.md5(pwd);
    }

    /**
     * 新增
     */
    public void add(Customer customer) throws UnsupportedEncodingException {
        //md5
        if (ObjectUtil.isEmpty(customer.getPassword())) {
            customer.setPassword(Constants.USER_DEFAULT_PASSWORD);//默认密码
            customer.setPassword(securePass(customer.getPassword()));//默认密码加密
        }

        customerMapper.insert(customer);
    }

    /**
     * 删除
     */
    public void deleteById(Integer id) {
        customerMapper.deleteById(id);
    }

    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            customerMapper.deleteById(id);
        }
    }

    /**
     * 修改
     */
    public void updateById(Customer customer) {
        customerMapper.updateById(customer);
    }

    /**
     * 根据ID查询
     */
    public Customer selectById(Integer id) {
        return customerMapper.selectById(id);
    }

    /**
     * 查询所有
     */
    public List<Customer> selectAll(Customer customer) {

        return customerMapper.selectAll(customer);
    }

    /**
     * 分页查询
     */
    public PageInfo<Customer> selectPage(Customer customer, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Customer> list = customerMapper.selectAll(customer);
        return PageInfo.of(list);
    }

    //登录
    public Account login(Account account) throws UnsupportedEncodingException {
        Account dbAdmin = customerMapper.selectByPhone(account.getUsername());
        if (ObjectUtil.isNull(dbAdmin)) {
            throw new CustomException(ResultCodeEnum.USER_NOT_EXIST_ERROR);
        }
//        未修改
//        if (!account.getPassword().equals(dbAdmin.getPassword())) {
//            throw new CustomException(ResultCodeEnum.USER_ACCOUNT_ERROR);
//        }


//
//        //md5
//        if (!securePass(account.getPassword()).equals(dbAdmin.getPassword()))
//        {
//            throw new CustomException(ResultCodeEnum.USER_ACCOUNT_ERROR);
//        }

        if (!securePass(account.getPassword()).equals(dbAdmin.getPassword()))
        {
            System.out.println(dbAdmin.getPassword());
            System.out.println(securePass(account.getPassword()));
            System.out.println(account.getPassword());
            System.out.println(securePass(dbAdmin.getPassword()).equals(account.getPassword()));
            throw new CustomException(ResultCodeEnum.USER_ACCOUNT_ERROR);
        }


        // 生成token
        String tokenData = dbAdmin.getId() + "-" + RoleEnum.CUSTOMER.name();
        String token = TokenUtils.createToken(tokenData, dbAdmin.getPassword());
        dbAdmin.setToken(token);
        return dbAdmin;


//        String tokenData = dbAdmin.getId() + "-" + RoleEnum.CUSTOMER.name();
//        String token = TokenUtils.createToken(tokenData, SecureUtil.md5(account.getPassword()));
//        dbAdmin.setToken(token);
//        return dbAdmin;
    }


    public void register(Account account) throws UnsupportedEncodingException {
        Customer customer = new Customer();
        BeanUtils.copyProperties(account, customer);
        //md5加密
        customer.setPassword(securePass(account.getPassword()));
        //
        add(customer);
    }

    public void updatePassword(Account account) throws UnsupportedEncodingException {
        Customer dbCustomer = customerMapper.selectByPhone(account.getUsername());
        if (ObjectUtil.isNull(dbCustomer)) {
            throw new CustomException(ResultCodeEnum.USER_NOT_EXIST_ERROR);
        }
        //未修改
//        if (!account.getPassword().equals(dbCustomer.getPassword())) {
//            throw new CustomException(ResultCodeEnum.PARAM_PASSWORD_ERROR);
//        }


        //md5
        if (!securePass(account.getPassword()).equals(dbCustomer.getPassword())) {
            throw new CustomException(ResultCodeEnum.PARAM_PASSWORD_ERROR);
        }

        dbCustomer.setPassword(securePass(account.getNewPassword()));



        customerMapper.updateById(dbCustomer);
    }

}