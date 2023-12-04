package jsoft.ads.basic;

import java.sql.*;

import jsoft.*;
import jsoft.objects.*;

import java.util.*;

public interface Basic extends ShareControl {
	// Các chức năng cập nhật pre - đã được biên dịch , đã truyền đầy đủ giá trị
	public boolean add(PreparedStatement pre);

	public boolean edit(PreparedStatement pre);

	public boolean del(PreparedStatement pre);

	// Các chức năng lấy dữ liệu
	
	public ResultSet get(String sql, int id);

	public ResultSet get(String sql, String name, String pass);

	public ResultSet gets(String sql);

	public ResultSet[] gets(String[] sql);

	public ArrayList<ResultSet> getsMR(String multiSelect);

}
