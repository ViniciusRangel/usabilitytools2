package com.br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.connection.ConnectionFactory;
import com.br.modelo.Grupo;



public class GrupoDao {

	// a conexão com o banco de dados
		private Connection connection;

		public GrupoDao() throws ClassNotFoundException{
			this.connection =  new ConnectionFactory().getConnection();
		}

		public void adiciona(Grupo grupo) {
			String sql = "insert into grupo " +
					"(idavaliador,idsoftware,nomesoftware,nomegrupo,qtdparticipantes,descricao)" +
					" values (?,?,?,?,?,?)";

			try {
				// prepared statement para inserção
				PreparedStatement stmt = connection.prepareStatement(sql);

				// seta os valores
				stmt.setLong(1,grupo.getIdAvaliador2());
				stmt.setLong(2, grupo.getIdSoftware());
				stmt.setString(3,grupo.getNomeSoftware());
				stmt.setString(4,grupo.getNomeGrupo());
				stmt.setString(5,grupo.getQtdParticipantes());
				stmt.setString(6,grupo.getDescricao());

				// executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	
		public List<Grupo> getLista() {

			try {
				List<Grupo> grupos = new ArrayList<Grupo>();
				PreparedStatement stmt = this.connection.
						prepareStatement("select * from grupo");


				ResultSet rs = stmt.executeQuery();

				while (rs.next()) {
					// criando o objeto software
					Grupo grupo= new Grupo();

					grupo.setId(rs.getLong("id"));
					grupo.setIdAvaliador2(rs.getLong("idavaliador"));
					grupo.setIdSoftware(rs.getLong("idsoftware"));
					grupo.setNomeSoftware(rs.getString("nomesoftware"));
					grupo.setNomeGrupo(rs.getString("nomegrupo"));
					grupo.setQtdParticipantes(rs.getString("qtdparticipantes"));
					grupo.setDescricao(rs.getString("descricao"));
					
					// adicionando o objeto à lista
					grupos.add(grupo);

				}
				rs.close();
				stmt.close();
				return grupos;
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}

		public void altera(Grupo grupo) {
			
			String sql = "update grupo set idavaliador=?, idsoftware=?, nomesoftware=?, "
					+ "nomegrupo=?, qtdparticipantes=?, descricao=? where id=?";
			
			try {
				PreparedStatement stmt = connection.prepareStatement(sql);
				
				stmt.setLong(1, grupo.getIdAvaliador2());
				stmt.setLong(2, grupo.getIdSoftware());
				stmt.setString(3, grupo.getNomeSoftware());
				stmt.setString(4, grupo.getNomeGrupo());
				stmt.setString(5, grupo.getQtdParticipantes());
				stmt.setString(6, grupo.getDescricao());
				stmt.setLong(7, grupo.getId());

				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		
		public void remove(Grupo grupo) {
			
			String sql="delete from grupo where id=?";
			
			
			try {
				PreparedStatement stmt = connection.prepareStatement(sql);
				stmt.setLong(1, grupo.getId());
				
				stmt.execute();
				stmt.close();
				
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
			

		}
				
}
