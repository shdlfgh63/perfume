package com.mapper;

import com.model.PerfumeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CrudMapper {

   public void regGoods(PerfumeVO perfumeVO);

   public void deleteGoods(PerfumeVO perfumeVO);

   public void updateGoods(PerfumeVO perfumeVO);



}
