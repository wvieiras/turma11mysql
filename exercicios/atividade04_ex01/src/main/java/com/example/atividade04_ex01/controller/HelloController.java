package com.example.atividade04_ex01.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {
	
	@GetMapping("/habilidades")
	public String Hello1() {
		return "Comunicação, Responsabilidade Pessoal, Atenção aos detalhes, Persitência";
	}
	
	@GetMapping("/mentalidades")
	public String Hello2() {
		return "Mentalidade de Crescimento, Trabalho em Equipe, Orientação ao Futuro, Proatividade ";
	}
}