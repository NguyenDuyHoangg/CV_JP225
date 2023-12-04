package jsoft.gui.article;

import java.sql.*;
import java.util.*;

import org.javatuples.*;
import jsoft.*;
import jsoft.objects.*;
import jsoft.ConnectionPool;
import jsoft.gui.basic.*;

public class ArticleImpl extends BasicImpl implements Article {

	public ArticleImpl(ConnectionPool cp) {
		super(cp, "Article-GUI");
	}
	
	@Override
	public ResultSet getArticle(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ResultSet> getArticles(Triplet<ArticleOject, Short, Byte> infos) {
		// TODO Auto-generated method stub
		ArticleOject similar = infos.getValue0();
		byte total = infos.getValue2();
		int at = (infos.getValue1()-1)*total;
		
		StringBuilder join = new StringBuilder();
		join.append("SELECT * FROM tblarticle ");
		join.append("LEFT JOIN tblcategory ON article_category_id=category_id ");
		join.append("LEFT JOIN tblsection ON category_section_id=section_id ");
		
		//Main SQL
		StringBuilder sql = new StringBuilder(join);
		sql.append("");
		sql.append("ORDER BY DATE(STR_TO_DATE(article_last_modified, \"%d/%m/%Y\" )) DESC ");
		sql.append("LIMIT ").append(at).append(", ").append(total).append("; ");
		
		//Trending SQL
		sql.append(join);
		sql.append("");
		sql.append("ORDER BY article_visited DESC LIMIT 5; ");
		
		return this.getsMR(sql.toString());
	}

}
