package com.br.modelo;

import java.util.Calendar;

public class Software {
	
	private Long id;
	private Long idAvaliador;
	private String nome;
	private String link;
	private String descricao;
	private String inicioAtivacao;
	private String fimAtivacao;
	private String faixaetariaInicial;
	private String faixaetariaFinal;
	private String genero;
	private String escolaridade;
	private String observacao;
	
	
	
	public Software() {
		super();
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public Long getIdAvaliador() {
		return idAvaliador;
	}



	public void setIdAvaliador(Long idAvaliador) {
		this.idAvaliador = idAvaliador;
	}



	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public String getLink() {
		return link;
	}



	public void setLink(String link) {
		this.link = link;
	}



	public String getDescricao() {
		return descricao;
	}



	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}



	public String getInicioAtivacao() {
		return inicioAtivacao;
	}



	public void setInicioAtivacao(String inicioAtivacao) {
		this.inicioAtivacao = inicioAtivacao;
	}



	public String getFimAtivacao() {
		return fimAtivacao;
	}



	public void setFimAtivacao(String fimAtivacao) {
		this.fimAtivacao = fimAtivacao;
	}



	public String getFaixaetariaInicial() {
		return faixaetariaInicial;
	}



	public void setFaixaetariaInicial(String faixaetariaInicial) {
		this.faixaetariaInicial = faixaetariaInicial;
	}



	public String getFaixaetariaFinal() {
		return faixaetariaFinal;
	}



	public void setFaixaetariaFinal(String faixaetariaFinal) {
		this.faixaetariaFinal = faixaetariaFinal;
	}



	public String getGenero() {
		return genero;
	}



	public void setGenero(String genero) {
		this.genero = genero;
	}



	public String getEscolaridade() {
		return escolaridade;
	}



	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}



	public String getObservacao() {
		return observacao;
	}



	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	
	
	
}
