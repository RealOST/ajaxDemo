package com.sgu.mapper;

import com.sgu.pojo.Brand;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface BrandMapper {
    //查询所有
    @Select("select * from brand")
    @ResultMap("brandMap")
    List<Brand> selectAll();

    @Insert("insert into brand values(null,#{brandName},#{companyName},#{ordered},#{description},#{status})")
    void add(Brand brand);

    @Select("select * from brand where id=#{id}")
    @ResultMap("brandMap")
    Brand selectById(int id);

    //修改
    @Update("update brand set brand_name = #{brandName},company_name = #{companyName},ordered = #{ordered},description = #{description},status = #{status} where id = #{id}")
    @ResultMap("brandMap")
    void update(Brand brand);

    @Delete("delete from brand where id=#{id}")
    void delete(int id);
}
