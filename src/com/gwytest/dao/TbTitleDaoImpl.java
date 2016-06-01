package com.gwytest.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gwytest.entity.TbTitle;
@Repository(value = "tbtitledao")
@Transactional
public class TbTitleDaoImpl extends BaseDaoImpl<TbTitle> implements TbTitleDao{
	
}
