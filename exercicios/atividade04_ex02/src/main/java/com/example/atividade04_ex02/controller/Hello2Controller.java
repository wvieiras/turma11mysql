package com.example.atividade04_ex02.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("hello")
public class Hello2Controller {
	
	@GetMapping("/objetivo")
	public String Hello() {
		return "O Objetivo da semana é aprender Spring Boot para desenvolvimento Web";
	}
}
