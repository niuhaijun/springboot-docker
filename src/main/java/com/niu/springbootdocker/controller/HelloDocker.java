package com.niu.springbootdocker.controller;

import java.util.HashMap;
import java.util.Map;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: niuhaijun
 * @Date: 2019-10-04 19:54
 * @Version 1.0
 */
@RestController
public class HelloDocker {

  @RequestMapping("hello")
  public Map<String, Object> hello() {

    return new HashMap<String, Object>(2) {
      {
        put("code", 2000);
        put("message", "success");
        put("data", "springboot应用docker容器化");
      }
    };
  }

}
