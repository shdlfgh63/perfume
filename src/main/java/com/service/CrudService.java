package com.service;

import com.model.PerfumeVO;

public interface CrudService {


    public void regGoods(PerfumeVO perfumeVO) throws Exception;

    public void deleteGoods(PerfumeVO perfumeVO) throws Exception;

    public void updateGoods(PerfumeVO perfumeVO) throws Exception;
}
