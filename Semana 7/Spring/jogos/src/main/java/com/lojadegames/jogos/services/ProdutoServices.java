package com.lojadegames.jogos.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lojadegames.jogos.model.Categoria;
import com.lojadegames.jogos.model.Produto;
import com.lojadegames.jogos.repository.ProdutoRepository;

@Service
public class ProdutoServices {
	
	private @Autowired ProdutoRepository repositoryProduto;
	
	public List<Produto> pegarProdutoPorNome (String nome){
			return repositoryProduto.findAllByNomeContainingIgnoreCase(nome);
	}
	
	public List<Produto> pegarPorCategoria(Categoria categoria){
			return repositoryProduto.findByCategoria(categoria);
	}
	
	public Optional<Produto> pegarPorId(Long id){
		   return repositoryProduto.findById(id);
	}
	
	public List<Produto> pegarPorPlatafoma(Enum<?> CategoriaProduto){
			return repositoryProduto.findByCategoriaProduto(CategoriaProduto);
	}
	

}
