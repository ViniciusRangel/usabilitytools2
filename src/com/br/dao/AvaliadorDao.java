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

public class AvaliadorDao {

	// a conexão com o banco de dados
	private Connection connection;

	public AvaliadorDao() throws ClassNotFoundException {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adiciona(Avaliador avaliador) {
		String sql = "insert into avaliador " +
				"(nome,email,login,senha,senha2)" +
				" values (?,?,?,?,?)";
		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			stmt.setString(1,avaliador.getNome());
			stmt.setString(2,avaliador.getEmail());
			stmt.setString(3,avaliador.getLogin());
			stmt.setString(4,avaliador.getSenha());
			stmt.setString(5,avaliador.getSenha2());


			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}


	public List<Avaliador> getLista() {
		try {
			List<Avaliador> avaliadores = new ArrayList<Avaliador>();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from avaliador");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				// criando o objeto avaliador
				Avaliador avaliador = new Avaliador();
				avaliador.setId(rs.getLong("id"));
				avaliador.setNome(rs.getString("nome"));
				avaliador.setEmail(rs.getString("email"));
				avaliador.setLogin(rs.getString("login"));
				avaliador.setSenha(rs.getString("senha"));
				avaliador.setSenha2(rs.getString("senha2"));

				// adicionando o objeto à lista
				avaliadores.add(avaliador);

			}
			rs.close();
			stmt.close();
			return avaliadores;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
	public void altera(Avaliador avaliador) {
		String sql = "update avaliador set nome=?, email=?, login=?," +
				"senha=?, senha2=? where id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, avaliador.getNome());
			stmt.setString(2, avaliador.getEmail());
			stmt.setString(3, avaliador.getLogin());
			stmt.setString(4, avaliador.getSenha());
			stmt.setString(5, avaliador.getSenha2());
			stmt.setLong(6, avaliador.getId());

			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	
	public void remove(Avaliador avaliador) {
		try {
			PreparedStatement stmt = connection.prepareStatement("delete " +
					"from avaliador where id=?");
			stmt.setLong(1, avaliador.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
}