package com.br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.br.modelo.Usuario;

import com.br.connection.ConnectionFactory;


public class UsuarioDao {
	
	// a conexão com o banco de dados
		private Connection connection;

		public UsuarioDao() throws ClassNotFoundException {
			this.connection = new ConnectionFactory().getConnection();
		}

		public void adiciona(Usuario usuario) {
			String sql = "insert into usuario " +
					"(nome,senha)" +
					" values (?,?)";
			try {
				// prepared statement para inserção
				PreparedStatement stmt = connection.prepareStatement(sql);

				// seta os valores
				stmt.setString(1,usuario.getNome());
				stmt.setString(2,usuario.getSenha());
				

				// executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}

		}

}
