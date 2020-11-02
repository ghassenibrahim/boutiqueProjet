package tn.essat.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import tn.essat.model.Categorie;
import tn.essat.model.LigneCde;

public interface ILigneCommandeDao extends JpaRepository<LigneCde,Integer> {

}
