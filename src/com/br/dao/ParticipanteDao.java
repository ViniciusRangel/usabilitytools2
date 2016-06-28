package com.br.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.br.connection.ConnectionFactory;
import com.br.modelo.Participante;

public class ParticipanteDao {
	
	// a conexão com o banco de dados
		private Connection connection;

		public ParticipanteDao() throws ClassNotFoundException {
			this.connection = new ConnectionFactory().getConnection();
		}

		public void adiciona(Participante participante) {
			String sql = "insert into participante (idavaliador,nomeparticipante,"
					+ "datanascimento,genero,email,escala,codigoavaliacao,nomesoftware,"
					+ "nomegrupo,item1,item2,item3,item4,item5, "
					+ "item6,item7,item8,item9,item10)" +
					" values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			try {
				// prepared statement para inserção
				PreparedStatement stmt = connection.prepareStatement(sql);

				// seta os valores
				stmt.setLong(1,participante.getIdAvaliador());
				stmt.setString(2,participante.getNomeParticipante());
				stmt.setString(3,participante.getDataNascimento());
				stmt.setString(4,participante.getGenero());
				stmt.setString(5,participante.getEmail());
				stmt.setString(6,participante.getEscala());
				stmt.setInt(7,participante.getCodigoAvaliacao());
				stmt.setString(8,participante.getNomeSoftware());
				stmt.setString(9,participante.getNomeGrupo());
				stmt.setInt(10,participante.getItem1());
				stmt.setInt(11,participante.getItem2());
				stmt.setInt(12,participante.getItem3());
				stmt.setInt(13,participante.getItem4());
				stmt.setInt(14,participante.getItem5());
				stmt.setInt(15,participante.getItem6());
				stmt.setInt(16,participante.getItem7());
				stmt.setInt(17,participante.getItem8());
				stmt.setInt(18,participante.getItem9());
				stmt.setInt(19,participante.getItem10());

				// executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}

		}


		public List<Participante> getLista() {
			try {
				List<Participante> participantes = new ArrayList<Participante>();
				PreparedStatement stmt = this.connection.
						prepareStatement("select * from participante");
				ResultSet rs = stmt.executeQuery();
				
				while (rs.next()) {
					// criando o objeto participante
					Participante participante = new Participante();
					
					participante.setId(rs.getLong("id"));
					participante.setIdAvaliador(rs.getLong("idavaliador"));
					participante.setNomeParticipante(rs.getString("nomeparticipante"));
					participante.setDataNascimento(rs.getString("datanascimento"));
					participante.setGenero(rs.getString("genero"));
					participante.setEmail(rs.getString("email"));
					participante.setEscala(rs.getString("escala"));
					participante.setCodigoAvaliacao(rs.getInt("codigoavaliacao"));
					participante.setNomeSoftware(rs.getString("nomesoftware"));
					participante.setNomeGrupo(rs.getString("nomegrupo"));
					participante.setItem1(rs.getInt("item1"));
					participante.setItem2(rs.getInt("item2"));
					participante.setItem3(rs.getInt("item3"));
					participante.setItem4(rs.getInt("item4"));
					participante.setItem5(rs.getInt("item5"));
					participante.setItem6(rs.getInt("item6"));
					participante.setItem7(rs.getInt("item7"));
					participante.setItem8(rs.getInt("item8"));
					participante.setItem9(rs.getInt("item9"));
					participante.setItem10(rs.getInt("item10"));

					// adicionando o objeto à lista
					participantes.add(participante);

				}
				rs.close();
				stmt.close();
				return participantes;
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}

}
