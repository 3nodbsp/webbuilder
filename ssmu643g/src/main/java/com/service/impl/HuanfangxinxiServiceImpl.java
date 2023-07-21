package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.HuanfangxinxiDao;
import com.entity.HuanfangxinxiEntity;
import com.service.HuanfangxinxiService;
import com.entity.vo.HuanfangxinxiVO;
import com.entity.view.HuanfangxinxiView;

@Service("huanfangxinxiService")
public class HuanfangxinxiServiceImpl extends ServiceImpl<HuanfangxinxiDao, HuanfangxinxiEntity> implements HuanfangxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuanfangxinxiEntity> page = this.selectPage(
                new Query<HuanfangxinxiEntity>(params).getPage(),
                new EntityWrapper<HuanfangxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuanfangxinxiEntity> wrapper) {
		  Page<HuanfangxinxiView> page =new Query<HuanfangxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuanfangxinxiVO> selectListVO(Wrapper<HuanfangxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuanfangxinxiVO selectVO(Wrapper<HuanfangxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuanfangxinxiView> selectListView(Wrapper<HuanfangxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuanfangxinxiView selectView(Wrapper<HuanfangxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
