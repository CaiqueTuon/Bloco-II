package com.lojadegames.jogos.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lojadegames.jogos.model.Categoria;
import com.lojadegames.jogos.repository.CategoriaRepository;

@Service
public class CategoriaServices {
	
	private @Autowired CategoriaRepository repositoryCategoria;
	
	//Validar Lista de Produtos por Nome
	public List<Categoria> pegarCategoriaPorNome(String nome){
			return repositoryCategoria.findAllByNomeContainingIgnoreCase(nome);
	}
	
	
}
