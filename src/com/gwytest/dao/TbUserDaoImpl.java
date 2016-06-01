package com.gwytest.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gwytest.entity.TbUser;
@Repository(value = "tbuserdao")
@Transactional
public class TbUserDaoImpl extends BaseDaoImpl<TbUser> implements TbUserDao {
}
