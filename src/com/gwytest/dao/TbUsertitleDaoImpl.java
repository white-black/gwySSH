package com.gwytest.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gwytest.entity.TbUsertitle;
@Repository(value = "tbusertitledao")
@Transactional
public class TbUsertitleDaoImpl extends BaseDaoImpl<TbUsertitle> implements TbUsertitleDao{

}
