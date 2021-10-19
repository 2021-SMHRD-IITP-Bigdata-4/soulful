package com.sample.mybatis;

import javax.inject.Inject;

import java.sql.Connection;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:soulful/**/*.xml"})
public class MyBatisTest {
 
    @Inject
    private SqlSessionFactory sqlFactory;
    
    @Test
    public void testFactory() {
        System.out.println(sqlFactory);
    }
    @Test
    public void testSession() {
        try (SqlSession session = sqlFactory.openSession()){
            System.out.println(session);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
}