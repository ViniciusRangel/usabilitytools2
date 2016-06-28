package com.br.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcExemplo {
	public static void main(String[] args) throws SQLException {
		Connection conexao = DriverManager.getConnection(
				"jdbc:mysql://tool.mysql.uhserver.com","vinirmv","Furacao1@");
		System.out.println("Conectado!");
		conexao.close();
	}

}

