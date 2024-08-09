package com.sgu.controller;

import com.alibaba.fastjson.JSON;
import com.sgu.pojo.Brand;
import com.sgu.service.BrandService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/selAll")
public class SelectAllServlet extends HttpServlet {
    private BrandService brandService = new BrandService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        //跨域
        response.setHeader("Access-Control-Allow-Origin", "*");
        //1. 调用Service查询
        List<Brand> brands = brandService.selectAll();
        System.out.println(brands + "1111");
        //2. 将集合转换为JSON数据   序列化
        String jsonString = JSON.toJSONString(brands);
        //3. 响应数据  application/json   text/json
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}