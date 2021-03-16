package com.helloworld.Hello.controler;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hallo")
public class HelloControler {
	
		@GetMapping
		public String hello() {
			return "Hallo Generation!!!";
			
			
		}
		

}
