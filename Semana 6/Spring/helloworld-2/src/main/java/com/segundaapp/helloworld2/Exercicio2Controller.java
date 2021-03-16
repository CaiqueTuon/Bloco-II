package com.segundaapp.helloworld2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Aprendizado")
	
public class Exercicio2Controller {
			
		@GetMapping
		public String Aprendizado() {
				return "Eu quero continuar sendo viciado na Vitoria";
		}

}
