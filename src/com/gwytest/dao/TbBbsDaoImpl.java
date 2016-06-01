package com.gwytest.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gwytest.entity.TbBbs;
@Repository(value = "tbbbsdao")
@Transactional
public class TbBbsDaoImpl extends BaseDaoImpl<TbBbs> implements TbBbsDao{

}
