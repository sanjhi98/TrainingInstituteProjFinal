package com.vir.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vir.connection.DBConnection;
import com.vir.model.Course;
import com.vir.model.Payment;

public class PaymentDAOImpl implements PaymentDAO{
	
	public static Connection conn=DBConnection.getConn();
	PreparedStatement ps=null;
	ResultSet rs=null;
	private String GET_ALL=" select * from Payment";
	private String ADD_PAYMENT= "insert into Payment values(?,?)";
	private String FIND_BY_ID= "select * from Payment where sid=?";

	
	@Override
	public List<Payment> getAll() {
		// TODO Auto-generated method stub
		Payment p=new Payment();
		List<Payment> al=new ArrayList<>();
		try
		{
			ps=conn.prepareStatement(GET_ALL);
			rs=ps.executeQuery();
			while(rs.next())
			{
				p.setSID(rs.getInt(1));
				p.setStatus(rs.getString(2));
				al.add(p);
			}
			return al;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			try
			{
				ps.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}

	@Override
	public Payment findById(int id) {
		// TODO Auto-generated method stub
		
		Payment p=new Payment();
		try
		{
			ps=conn.prepareStatement(FIND_BY_ID);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				p.setSID(rs.getInt(1));
				p.setStatus(rs.getString(2));
			}
			return p;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		finally
		{
			try
			{
				ps.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}

	@Override
	public boolean addPayment(Payment p) {
		// TODO Auto-generated method stub
		System.out.println("heyyyy");
		try
		{
			ps=conn.prepareStatement(ADD_PAYMENT);
			ps.setInt(1,p.getSID());
			ps.setString(2, p.getStatus());
			ps.execute();
			return true;
		}
		catch(SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
		finally
		{
			try
			{
				ps.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}

}
