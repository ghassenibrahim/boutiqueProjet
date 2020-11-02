package tn.essat.model;

import java.util.ArrayList;
import java.util.List;

public class Panier {

	private List<LignePanier>ligne;
	public void addPanier(LignePanier li) {
		this.ligne.add(li);
	}

	public List<LignePanier> getLigne() {
		return ligne;
	}

	public void setLigne(List<LignePanier> ligne) {
		this.ligne = ligne;
	}

	public Panier() {
		super();
		this.ligne = new ArrayList<LignePanier>();
	}

	public Panier(List<LignePanier> ligne) {
		super();
		this.ligne = ligne;
	}

	
	
	
	
}
