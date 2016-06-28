package com.br.modelo;

public class Avaliacao {
	
	private Long id;
	private Long idAvaliador3;
	private Long idSoftware;
	private String nomeSoftware;
	private Long idGrupo;
	private String nomeGrupo;
	private String escala;
	private int codigoAvaliacao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getIdAvaliador3() {
		return idAvaliador3;
	}
	public void setIdAvaliador3(Long idAvaliador3) {
		this.idAvaliador3 = idAvaliador3;
	}
	public Long getIdSoftware() {
		return idSoftware;
	}
	public void setIdSoftware(Long idSoftware) {
		this.idSoftware = idSoftware;
	}
	public String getNomeSoftware() {
		return nomeSoftware;
	}
	public void setNomeSoftware(String nomeSoftware) {
		this.nomeSoftware = nomeSoftware;
	}
	public Long getIdGrupo() {
		return idGrupo;
	}
	public void setIdGrupo(Long idGrupo) {
		this.idGrupo = idGrupo;
	}
	public String getNomeGrupo() {
		return nomeGrupo;
	}
	public void setNomeGrupo(String nomeGrupo) {
		this.nomeGrupo = nomeGrupo;
	}
	public String getEscala() {
		return escala;
	}
	public void setEscala(String escala) {
		this.escala = escala;
	}
	public int getCodigoAvaliacao() {
		return codigoAvaliacao;
	}
	public void setCodigoAvaliacao(int codigoAvaliacao) {
		this.codigoAvaliacao = codigoAvaliacao;
	}
}
