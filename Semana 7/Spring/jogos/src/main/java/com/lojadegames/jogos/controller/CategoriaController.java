package com.lojadegames.jogos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lojadegames.jogos.model.Categoria;
import com.lojadegames.jogos.repository.CategoriaRepository;
import com.lojadegames.jogos.services.CategoriaServices;


@RestController
@CrossOrigin("*")
@RequestMapping("/categoria")
public class CategoriaController {
	
	@Autowired
	CategoriaRepository repository;
	
	private @Autowired CategoriaServices services;
	
	@GetMapping("/categoria")
	public ResponseEntity<List<Categoria>> pegarPorNome(@RequestParam String nomeCategoria){
		return new ResponseEntity<List<Categoria>>(services.pegarCategoriaPorNome(nomeCategoria),HttpStatus.ACCEPTED);
	}
	
	@PostMapping
	public ResponseEntity<Categoria> novaCategoria(@RequestBody Categoria categoria){
			return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(categoria));
	}
	
	@PutMapping
	public ResponseEntity <Categoria> put (@RequestBody Categoria categoria){
		 	return ResponseEntity.ok(repository.save(categoria));
	}
	
	@DeleteMapping("/{id}")
	public void delete (@PathVariable Long id) {
		repository.deleteById(id);
	}

	
}
