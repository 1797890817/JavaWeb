package com.sanqing.dao;

import com.sanqing.bean.Criticism;

public interface CriticismDAO {
	public void addCriticism(Criticism criticism);			//�������
	public Criticism findCriticismByMsgID(int messageID);	//������ID��������
}
