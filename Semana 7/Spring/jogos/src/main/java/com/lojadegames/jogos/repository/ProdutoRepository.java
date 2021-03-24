package com.lojadegames.jogos.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lojadegames.jogos.model.Categoria;
import com.lojadegames.jogos.model.Produto;


	 public interface ProdutoRepository extends JpaRepository<Produto,Long> {
		public List<Produto> findAllByNomeContainingIgnoreCase(String nome);
		public List<Produto> findByCategoria(Categoria categoria);
		public List<Produto> findByPreco(Long preco);
		public List<Produto> findByCategoriaProduto(Enum<?> CategoriaProdutos);
		
}

