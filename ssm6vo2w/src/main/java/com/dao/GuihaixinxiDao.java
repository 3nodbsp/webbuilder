package com.dao;

import com.entity.GuihaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.GuihaixinxiVO;
import com.entity.view.GuihaixinxiView;


/**
 * 归还信息
 * 
 * @author 
 * @email 
 * @date 2020-12-01 09:50:59
 */
public interface GuihaixinxiDao extends BaseMapper<GuihaixinxiEntity> {
	
	List<GuihaixinxiVO> selectListVO(@Param("ew") Wrapper<GuihaixinxiEntity> wrapper);
	
	GuihaixinxiVO selectVO(@Param("ew") Wrapper<GuihaixinxiEntity> wrapper);
	
	List<GuihaixinxiView> selectListView(@Param("ew") Wrapper<GuihaixinxiEntity> wrapper);

	List<GuihaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<GuihaixinxiEntity> wrapper);
	
	GuihaixinxiView selectView(@Param("ew") Wrapper<GuihaixinxiEntity> wrapper);
	
}
