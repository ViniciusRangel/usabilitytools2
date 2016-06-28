package com.br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.connection.ConnectionFactory;
import com.br.modelo.Avaliador;
import com.br.modelo.Software;

public class SoftwareDao {

	// a conexão com o banco de dados
	private Connection connection;

	public SoftwareDao() throws ClassNotFoundException{
		this.connection =  new ConnectionFactory().getConnection();
	}

	public void adiciona(Software software) {
		String sql = "insert into software " +
				"(idavaliador,nome,link,descricao,inicioativacao,fimativacao,"
				+ "faixaetariainicial,faixaetariafinal,genero, escolaridade,observacao)" +
				" values (?,?,?,?,?,?,?,?,?,?,?)";

		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			stmt.setLong(1,software.getIdAvaliador());
			stmt.setString(2,software.getNome());
			stmt.setString(3,software.getLink());
			stmt.setString(4,software.getDescricao());
			stmt.setString(5,software.getInicioAtivacao());
			stmt.setString(6,software.getFimAtivacao());
			stmt.setString(7,software.getFaixaetariaInicial());
			stmt.setString(8,software.getFaixaetariaFinal());
			stmt.setString(9,software.getGenero());
			stmt.setString(10,software.getEscolaridade());
			stmt.setString(11,software.getObservacao());



			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}


	}

	public List<Software> getLista() {

		try {
			List<Software> softwares = new ArrayList<Software>();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from software");


			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto software
				Software software= new Software();

				software.setId(rs.getLong("id"));
				software.setIdAvaliador(rs.getLong("idavaliador"));
				software.setNome(rs.getString("nome"));
				software.setLink(rs.getString("link"));
				software.setDescricao(rs.getString("descricao"));
				software.setInicioAtivacao(rs.getString("inicioativacao"));
				software.setFimAtivacao(rs.getString("fimativacao"));
				software.setFaixaetariaInicial(rs.getString("faixaetariainicial"));
				software.setFaixaetariaFinal(rs.getString("faixaetariafinal"));
				software.setGenero(rs.getString("genero"));
				software.setEscolaridade(rs.getString("escolaridade"));
				software.setObservacao(rs.getString("observacao"));

				// adicionando o objeto à lista
				softwares.add(software);

			}
			rs.close();
			stmt.close();
			return softwares;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void altera(Software software) {
		
		String sql = "update software set idavaliador=?, nome=?, link=?, descricao=?," +
				"inicioativacao=?, fimativacao=?, faixaetariainicial=?, faixaetariafinal=?,"
				+ "genero=?, escolaridade=?, observacao=? where id=?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setLong(1, software.getIdAvaliador());
			stmt.setString(2, software.getNome());
			stmt.setString(3, software.getLink());
			stmt.setString(4, software.getDescricao());
			stmt.setString(5, software.getInicioAtivacao());
			stmt.setString(6, software.getFimAtivacao());
			stmt.setString(7, software.getFaixaetariaInicial());
			stmt.setString(8, software.getFaixaetariaFinal());
			stmt.setString(9, software.getGenero());
			stmt.setString(10, software.getEscolaridade());
			stmt.setString(11, software.getObservacao());
			stmt.setLong(12, software.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void remove(Software software) {
		try {
			PreparedStatement stmt = connection.prepareStatement("delete " +
					"from software where id=?");
			stmt.setLong(1, software.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

}
