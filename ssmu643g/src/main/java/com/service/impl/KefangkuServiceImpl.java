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


import com.dao.KefangkuDao;
import com.entity.KefangkuEntity;
import com.service.KefangkuService;
import com.entity.vo.KefangkuVO;
import com.entity.view.KefangkuView;

@Service("kefangkuService")
public class KefangkuServiceImpl extends ServiceImpl<KefangkuDao, KefangkuEntity> implements KefangkuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<KefangkuEntity> page = this.selectPage(
                new Query<KefangkuEntity>(params).getPage(),
                new EntityWrapper<KefangkuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<KefangkuEntity> wrapper) {
		  Page<KefangkuView> page =new Query<KefangkuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<KefangkuVO> selectListVO(Wrapper<KefangkuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public KefangkuVO selectVO(Wrapper<KefangkuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<KefangkuView> selectListView(Wrapper<KefangkuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public KefangkuView selectView(Wrapper<KefangkuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
