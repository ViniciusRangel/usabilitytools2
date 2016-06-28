package com.br.modelo;

public class Grupo {
	
	private Long id;
	private Long idAvaliador2;
	private Long idSoftware;
	private String nomeSoftware;
	private String nomeGrupo;
	private String qtdParticipantes;
	private String descricao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getIdAvaliador2() {
		return idAvaliador2;
	}
	public void setIdAvaliador2(Long idAvaliador2) {
		this.idAvaliador2 = idAvaliador2;
	}
	public String getNomeSoftware() {
		return nomeSoftware;
	}
	public void setNomeSoftware(String nomeSoftware) {
		this.nomeSoftware = nomeSoftware;
	}
	public String getNomeGrupo() {
		return nomeGrupo;
	}
	public void setNomeGrupo(String nomeGrupo) {
		this.nomeGrupo = nomeGrupo;
	}
	public String getQtdParticipantes() {
		return qtdParticipantes;
	}
	public void setQtdParticipantes(String qtdParticipantes) {
		this.qtdParticipantes = qtdParticipantes;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Long getIdSoftware() {
		return idSoftware;
	}
	public void setIdSoftware(Long idSoftware) {
		this.idSoftware = idSoftware;
	}
	
	
}
