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
import com.lojadegames.jogos.model.Produto;
import com.lojadegames.jogos.repository.ProdutoRepository;
import com.lojadegames.jogos.services.ProdutoServices;

@RestController
@CrossOrigin("*")
@RequestMapping("/produto")
public class ProdutoController {
	
	@Autowired
	ProdutoRepository repository;
	
	private @Autowired ProdutoServices services;
	
	
		@GetMapping
		public ResponseEntity<List<Produto>> getAll(){
		return ResponseEntity.ok(repository.findAll());
	}	
	
		@GetMapping("/produtos")
		public ResponseEntity<List<Produto>> pegarPorNome(@RequestParam(defaultValue = "")String nomeProduto){
				return new ResponseEntity<List<Produto>>(services.pegarProdutoPorNome(nomeProduto),HttpStatus.ACCEPTED);
		}
		
		@GetMapping("/produtos/categoria")
		public ResponseEntity<List<Produto>> pegarPorCategoria(@RequestParam(defaultValue = "")Categoria categoria){
				return new ResponseEntity<List<Produto>>(services.pegarPorCategoria(categoria),HttpStatus.ACCEPTED);
		}
		
		@PostMapping
		public ResponseEntity<Produto> post(@RequestBody Produto produto){
				return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(produto));
		}
		
		@PutMapping
		public ResponseEntity <Produto> put (@RequestBody Produto produto){
			 	return ResponseEntity.ok(repository.save(produto));
		}
		
		@DeleteMapping("/{id}")
		public void delete (@PathVariable Long id) {
			repository.deleteById(id);
		}
		
		
		

}
