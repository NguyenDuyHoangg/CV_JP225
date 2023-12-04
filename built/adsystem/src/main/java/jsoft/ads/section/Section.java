package jsoft.ads.section;

import java.sql.*;
import java.util.ArrayList;

import jsoft.ShareControl;
import jsoft.library.*;
import jsoft.objects.*;

import org.javatuples.*;


public interface Section extends ShareControl{
	//Các chức năng cập nhật
	public boolean addSection(SectionObject item);
	public boolean editSection(SectionObject item);
	public boolean delSection(SectionObject item);

	//Các chức năng lấy dũư liệu
	public ResultSet getSection(short id, UserObject userLogined);
	//public ResultSet getUsers(SectionObject similar, int at, byte total);
	
	//public ResultSet getSections(Triplet<SectionObject, Integer, Byte> infos);
	public ArrayList<ResultSet> getSections(Triplet<SectionObject, Integer, Byte> infos, Pair<SECTION_SORT, ORDER> so);
	public ArrayList<ResultSet> getSections(Quartet<SectionObject,Integer,Byte,SECTION_SORT> infos);
}
