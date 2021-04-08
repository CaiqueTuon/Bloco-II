package com.example.testjunit.repository;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.testjunit.model.ContatoModel;
	@Repository
	public interface ContatoRepository extends JpaRepository<ContatoModel, Long> {
		public ContatoModel findFirstByNome(String nome);
		public List<ContatoModel> findAllByNomeIgnoreCaseContaining(String nome);
}