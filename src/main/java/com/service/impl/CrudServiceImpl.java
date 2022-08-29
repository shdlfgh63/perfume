package com.service.impl;

import com.mapper.CrudMapper;
import com.model.PerfumeVO;
import com.service.CrudService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CrudServiceImpl implements CrudService {

    @Autowired
    private CrudMapper crudDAO;


    @Override
    public void regGoods(PerfumeVO perfumeVO) throws Exception {
        crudDAO.regGoods(perfumeVO);
    }

    @Override
    public void deleteGoods(PerfumeVO perfumeVO) throws Exception{
        crudDAO.deleteGoods(perfumeVO);
    }

    @Override
    public void updateGoods(PerfumeVO perfumeVO) throws Exception{
        crudDAO.updateGoods(perfumeVO);
    }
}
