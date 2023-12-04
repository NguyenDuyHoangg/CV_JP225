package objects;

import java.util.*;

public class MyStrings {
	
	/**
	 * Đếm số lượng 1 ký tự có trong chuỗi
	 * @param str
	 * @param ch
	 * @param isIgnoreCase
	 * @return
	 */
	public static int countChar(String str, char ch, boolean isIgnoreCase) {
		int count = 0;
		
		if(isIgnoreCase) {
			str = str.toLowerCase();
			ch = Character.toLowerCase(ch);
		}
		
		for(int i=0;i<str.length();i++) {
			if(str.charAt(i) == ch) {
				count++;
			}
		}
		
		return count;
	}
	
	public static String formatString(String str, FORMAT_TYPE ft) {
		//Xác định các ký tự đặc biệt cần loại bỏ
		char[] chs = {
				'`','~','!','@','#','$','%','^','&','*','(',
				')','-','_','=','+','[',']','{','}','|',
				';',':','\'','"','<','>','/','?','\\'
		};
		
		//Loại bỏ những ký tự này
		for(char ch : chs) {
			str = str.replace(ch, ' ');
		}
		
		//Loại bỏ khoảng trống đầu và cuối
		str = str.trim();
		
		//Loại bỏ khoảng trống bên trong
		while(str.indexOf("  ")!=-1) {
			str = str.replace("  ", " ");
		}
		
		str = str.replace(" . ", ". ");
		str = str.replace(" , ", ", ");
		
		switch(ft) {
		case NAME:
		case FULLNAME:
			String[] tmp = str.toLowerCase().split(" ");
			str = "";
			for(String w: tmp) {
				str += Character.toUpperCase(w.charAt(0))+w.substring(1)+" ";
			}
			str = str.trim();
			break;
		case SENTENCE:
			str = str.toLowerCase();
			
			str = Character.toUpperCase(str.charAt(0))+str.substring(1);
			String tmp2 = new String(str);
			
			String[] words = str.split("\\.\\s");
			str = "";
			for(String w: words) {
				str += Character.toUpperCase(w.charAt(0))+w.substring(1)+". "; //Khắc phục lỗi
			}
			str = str.trim();
			break;
		case NOUND:
			str = str.toUpperCase();
			break;
		default:
			
		}
		return str;
	}
	
	public static int countWords(String str) {
		//Chuẩn hóa chuỗi
		str = MyStrings.formatString(str, FORMAT_TYPE.NORMAL);
		
		return MyStrings.countChar(str, ' ', false) + 1;
	}
	
	public static String getWords(String str, short nWords) {
		//Chuẩn hóa chuỗi
		str = MyStrings.formatString(str, FORMAT_TYPE.NORMAL);
		
		//Xác định vị trí để cắt
		int i=0;
		short count = 0;
		for(i=0; i<str.length();i++) {
			if(str.charAt(i)==' ') {
				count++;
			}
			
			if(count>=nWords) {
				break;
			}
		}
		
		//Trả về kết quả
		if(i<str.length()-1) {
			return str.substring(0, i)+"...";
		}else {
			return str;
		}
	}
	
	public static HashMap<String, Integer> statisticWords(String str, String ch_split){
		HashMap<String, Integer> tmp = new HashMap<>();
			
		String[] tmp_words = str.split(ch_split);
		for(String w: tmp_words) {
			if(!w.equalsIgnoreCase("")) {
				if(tmp.containsKey(w)) {
					tmp.replace(w, tmp.get(w)+1);
				}else {
					tmp.put(w, 1);
				}
			}
		}
		
		return tmp;
	}
	
	public static void printStatistic(HashMap<String, Integer> tmp, boolean isSorted) {
		
		if(isSorted) {
			TreeMap<String, Integer> sorted_tmp = new TreeMap<>(tmp);
			
//			for(Map.Entry<String, Integer> e : sorted_tmp.entrySet()) {
//				System.out.println(e.getKey() + " - " + e.getValue());
//			}
			sorted_tmp.forEach((k, v) -> System.out.println(k + " - " + v));
		}else {
//			//Java 5
//			for(Map.Entry<String, Integer> e : tmp.entrySet()) {
//				System.out.println(e.getKey() + " - " + e.getValue());
//			}
				
			//Java 8
				tmp.forEach((k, v) -> System.out.println(k + " - " + v));
		}
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String str = "abc#dfh#abc##ktm#dfh#abc";
		
		
		MyStrings.printStatistic(MyStrings.statisticWords(str, "#"), true);

	}

}

enum FORMAT_TYPE{
	NAME, FULLNAME, SENTENCE, NOUND, NORMAL
}
