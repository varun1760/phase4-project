package com.kitchenstory.dbutilities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kitchenstory.utilities.Items;

public class ItemDAO {
	private static final String INSERT_ITEMS_SQL = "INSERT INTO items VALUES(?, ?, ?)";
	private static final String SELECT_ITEMS_BY_ID = "SELECT id, item_name, price FROM"
			+ " items WHERE id=?";
	private static final String SELECT_ALL_ITEMS = "SELECT * FROM items";
	private static final String DELETE_ITEMS_SQL = "DELETE FROM items WHERE id=?";	
	private static final String UPDATE_ITEMS_SQL = "UPDATE items SET item_name=?,"
			+ " price=? WHERE id=?";
	
	public void insertItem(Items item) throws SQLException{
		try (Connection connection = DBConnection.init();
				PreparedStatement statement = connection.prepareStatement(
						INSERT_ITEMS_SQL)){
			statement.setInt(1, item.getId());
			statement.setString(2, item.getName());
			statement.setFloat(3, item.getPrice());
			statement.executeUpdate();
		} catch(SQLException e) {
 			printSQLException(e);
		}
	}
	
	public Items selectItem(int id) {
		Items item = null;
		try (Connection connection = DBConnection.init();
				PreparedStatement statement = connection.prepareStatement(
						SELECT_ITEMS_BY_ID)){
			statement.setInt(1, id);
			System.out.println(statement);
			ResultSet resultSet = statement.executeQuery();
			
			while (resultSet.next()) {
				String name = resultSet.getString("item_name");
				float price = resultSet.getFloat("price");
				item = new Items(id, name, price);
			}
		} catch(SQLException e) {
			printSQLException(e);
		}
		return item;
	}
	
	public List<Items> selectAllitems(){
		List<Items> items = new ArrayList<>();
		try (Connection connection = DBConnection.init();
				PreparedStatement statement = connection.prepareStatement(
						SELECT_ALL_ITEMS)){
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("item_name");
				float price = resultSet.getFloat("price");
				items.add(new Items(id, name, price));
			}
		} catch(SQLException e){
			printSQLException(e);
		}
		return items;
	}
	
	public boolean deleteItem(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = DBConnection.init();
				PreparedStatement statement = connection.prepareStatement(
						DELETE_ITEMS_SQL)){
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		} 
		return rowDeleted;
	}
	public boolean updateItem(Items item) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = DBConnection.init();
				PreparedStatement statement = connection.prepareStatement(
						UPDATE_ITEMS_SQL)){
			statement.setString(1, item.getName());
			statement.setFloat(1, item.getPrice());
			statement.setInt(1, item.getId());
			rowUpdated = statement.executeUpdate() > 0;
		} 
		return rowUpdated;
	}
	private void printSQLException(SQLException e) {
		for (Throwable th : e) {
			if (th instanceof SQLException) {
				th.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) th).getSQLState());
				System.err.println("Error Code: " + ((SQLException) th).getErrorCode());
				System.err.println("Message: " + th.getMessage());
				Throwable throwable = e.getCause();
				while (throwable != null) {
					System.out.println("Cause: " + throwable);
					throwable = throwable.getCause();
				}
			}
		}
	}
}
