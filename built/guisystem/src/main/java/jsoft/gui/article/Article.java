package jsoft.gui.article;

import org.javatuples.*;
import java.sql.*;
import java.util.*;
import jsoft.objects.*;

public interface Article {
	
	public ResultSet getArticle(int id);
	
	public ArrayList<ResultSet> getArticles(Triplet<ArticleOject, Short, Byte> infos);

}
