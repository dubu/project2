package com.dubu;

import jpabook.jpashop.WebUiApplication;
import jpabook.jpashop.domain.Member;
import jpabook.jpashop.repository.MemberRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

/**
 * Created by rigel on 1/11/16.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(WebUiApplication.class)
//@WebAppConfiguration
@ActiveProfiles("dev")
public class dubuTest {


    @Autowired
    MemberRepository memberRepository;

    @Test
    public void testHello() {

//        System.out.println("Sdfsdf");

        final List<Member> all = memberRepository.findAll();

        System.out.println(all);


    }


}
