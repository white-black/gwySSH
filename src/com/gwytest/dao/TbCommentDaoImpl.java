 package com.gwytest.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gwytest.entity.TbComment;
@Repository(value = "tbcommentdao")
@Transactional
public class TbCommentDaoImpl extends BaseDaoImpl<TbComment> implements TbCommentDao{

}
