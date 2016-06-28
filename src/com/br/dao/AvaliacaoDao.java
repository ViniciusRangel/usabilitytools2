package com.br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.connection.ConnectionFactory;
import com.br.modelo.Avaliacao;


public class AvaliacaoDao {
	// a conexão com o banco de dados
	private Connection connection;

	public AvaliacaoDao() throws ClassNotFoundException{
		this.connection =  new ConnectionFactory().getConnection();
	}

	public void adiciona(Avaliacao avaliacao) {
		String sql = "insert into avaliacao " +
				"(idavaliador, idsoftware, nomesoftware, idgrupo, "
				+ "nomegrupo, escala, codigoavaliacao)" +
				" values (?,?,?,?,?,?,?)";

		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			stmt.setLong(1,avaliacao.getIdAvaliador3());
			stmt.setLong(2,avaliacao.getIdSoftware());
			stmt.setString(3,avaliacao.getNomeSoftware());
			stmt.setLong(4,avaliacao.getIdGrupo());
			stmt.setString(5,avaliacao.getNomeGrupo());
			stmt.setString(6,avaliacao.getEscala());
			stmt.setInt(7,avaliacao.getCodigoAvaliacao());

			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}


	public List<Avaliacao> getLista() {

		try {
			List<Avaliacao> avaliacoes = new ArrayList<Avaliacao>();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from avaliacao");


			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto software
				Avaliacao avaliacao= new Avaliacao();

				avaliacao.setId(rs.getLong("id"));
				avaliacao.setIdAvaliador3(rs.getLong("idavaliador"));
				avaliacao.setIdSoftware(rs.getLong("idsoftware"));
				avaliacao.setNomeSoftware(rs.getString("nomesoftware"));
				avaliacao.setIdGrupo(rs.getLong("idgrupo"));
				avaliacao.setNomeGrupo(rs.getString("nomegrupo"));
				avaliacao.setEscala(rs.getString("escala"));
				avaliacao.setCodigoAvaliacao(rs.getInt("codigoavaliacao"));
				
				// adicionando o objeto à lista
				avaliacoes.add(avaliacao);

			}
			rs.close();
			stmt.close();
			return avaliacoes;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void altera(Avaliacao avaliacao) {
		
		String sql = "update avaliacao set idavaliador=?, idsoftware=?, nomesoftware=?, "
				+ "idgrupo=?, nomegrupo=?, escala=?, codigoavaliacao=?  where id=?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			
			stmt.setLong(1, avaliacao.getIdAvaliador3());
			stmt.setLong(2, avaliacao.getIdSoftware());
			stmt.setString(3, avaliacao.getNomeSoftware());
			stmt.setLong(4, avaliacao.getIdGrupo());
			stmt.setString(5, avaliacao.getNomeGrupo());
			stmt.setString(6, avaliacao.getEscala());
			stmt.setInt(7, avaliacao.getCodigoAvaliacao());
			stmt.setLong(8, avaliacao.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Avaliacao avaliacao) {
			
		
		String sql="delete from avaliacao where id=?";
		
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setLong(1, avaliacao.getId());
			
			stmt.execute();
			stmt.close();
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		

	}

}
