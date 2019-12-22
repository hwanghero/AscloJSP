package Member;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;

/**
 * The type Asclo sql.
 */
@SuppressWarnings("FieldCanBeLocal")
public class AscloSQL{
	/*
		현재 환경
		JSCH를 tomcat에서 lib, eclipse에서 lib에 추가
	 */

	private static String user = "p201606010";
	private static String password = "pp201606010";
	private static String host = "l.bsks.ac.kr";
	private static int port = 22;
	
	private static String r_host = "localhost";
	private static int l_port = 4321;
	private static int r_port = 3306;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	private static String url = "jdbc:mysql://" + r_host +":" + l_port + "/";
	private static String db = "p201606010";
	private static String dbUser = "p201606010";
	private static String dbPasswd = "pp201606010";
	
	private static AscloSQL instance;
	private AscloSQL() {}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// SSH 쿼리 연결 ///////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	public static AscloSQL getInstance() throws JSchException, ClassNotFoundException, SQLException {
		
		if(instance==null)
		{
			instance = new AscloSQL();
			JSch jsch = new JSch();
			Session j_session = jsch.getSession(user, host, port);

			j_session.setPassword(password);
			j_session.setConfig("StrictHostKeyChecking", "no");
			System.out.println("Establishing Connection...");
			j_session.connect();
			int assinged_port = j_session.setPortForwardingL(l_port, r_host, r_port);
			System.out.println("localhost:"+assinged_port+" -> "+ r_host +":"+ r_port);

			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(url+db, dbUser, dbPasswd);
			System.out.println("connection");
		}
		return instance;
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 회원부분 ////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	 /**
	  * 아이디 중복 체크
	 * @param id the id
	 * @return the int
	 * @throws Exception the exception
	 */
	public static int confirmID(String id)throws Exception{
		int x = 0;
		stmt = (Statement) con.createStatement();
		String sql1 = String.format("select * from asclo_user where member_id='%s'", id);
		rs = (ResultSet) stmt.executeQuery(sql1);
			
		if(rs.next()){
			x = 1;
		}
		return x;
	}

	/**
	 * 회원정보 입력
	 *
	 * @param id          the id
	 * @param pw          the pw
	 * @param name        the name
	 * @param phone       the phone
	 * @param email       the email
	 * @param birth       the birth
	 * @param hint        the hint
	 * @param hint_answer the hint answer
	 * @throws Exception the exception
	 */
	public static void InsertID(String id, String pw, String name, String phone, String email, String birth, String hint, String hint_answer)throws Exception{
		stmt = (Statement) con.createStatement();
		String sql1 = String.format("insert into asclo_user values('%s','%s','%s','%s','%s','%s','%s','%s', 0, 'Bronze')", id, pw, name, phone, email, birth, hint, hint_answer);
		stmt.executeUpdate(sql1);
	}

	/**
	 * Login asclo int.
	 *
	 * @param id the id
	 * @param pw the pw
	 * @return the int
	 * @throws Exception the exception
	 */
	public static int LoginAsclo(String id, String pw) throws Exception {
		int x = 0;
		if(confirmID(id) == 1) {
			stmt = (Statement) con.createStatement();
			String sql = String.format("select * from asclo_user where member_id='%s' and passwd='%s'", id, pw);
			rs = (ResultSet) stmt.executeQuery(sql);
			if(rs.next())
				x = 1;
		}
		return x;
	}

	/**
	 * Gets asclouser.
	 *
	 * @param id  the id
	 * @param num the num
	 * @return the asclouser
	 * @throws Exception the exception
	 */
	public static String getAsclouser(String id, int num) throws Exception {
		String x = null;
		if(confirmID(id) == 1) {
			stmt = (Statement) con.createStatement();
			String sql = null;
            sql = String.format("select * from asclo_user where member_id='%s'", id);
            rs = (ResultSet) stmt.executeQuery(sql);
            while(rs.next()){
                // 이름
                if(num == 0){
                    x = rs.getString("name");
                }
                // 휴대전화
                if(num == 1){
                    x = rs.getString("phone");
                }
                // 이메일
                if(num == 2){
                    x = rs.getString("email");
                }
                // 생년월일
                if(num == 3){
                    x = rs.getString("birth");
                }
                // 힌트 질문
                if(num == 4){
                    x = rs.getString("hint");
                }
                // 힌트 대답
                if(num == 5){
                    x = rs.getString("hint_answer");
                }
            }
		}
		return x;
	}

	/**
	 * Sets asclouser.
	 *
	 * @param id          the id
	 * @param pw          the pw
	 * @param phone       the phone
	 * @param email       the email
	 * @param hint        the hint
	 * @param hint_answer the hint answer
	 * @return the asclouser
	 * @throws Exception the exception
	 */
	public static int setAsclouser(String id, String pw, String phone, String email, String hint, String hint_answer) throws Exception {
		int x = 0;
		stmt = (Statement) con.createStatement();
		String sql = String.format("select * from asclo_user where member_id='%s' and passwd='%s'", id, pw);
		rs = (ResultSet) stmt.executeQuery(sql);
		if(rs.next()){
			String sql2 = String.format("update asclo_user set phone='%s', email='%s', hint='%s', hint_answer='%s' where member_id='%s'", phone, email, hint, hint_answer, id);
			stmt.executeUpdate(sql2);
			x = 1;
		}
		return x;
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 게시글부분 //////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * @param title the title
	 * @param img the img
	 * @param content the content
	 * @param count the count
	 * @param price the price
	 * @param date the date
	 * @param goodsimg the goodsimg
	 * @param size the size
	 * @param catagory the catagory
	 * @param color the color
	 * @throws Exception the exception
	 */
	public static void InsertDress(String title, String img, String content, int count, int price, String date, String goodsimg, String size, String catagory, String color)throws Exception{
		stmt = (Statement) con.createStatement();
		String sql1 = String.format("insert into asclo_dress values(null, '%s', '%s', '%s', '%d', '%d', '%s', '%s', '%s', '%s', '%s')", title, img, content, count, price, date, goodsimg, size, catagory, color);
		stmt.executeUpdate(sql1);
	}

	/**
	 * Gets dress.
	 *
	 * @param id  게시글 아이디
	 * @param num 게시글 내용
	 *            0 = 타이틀
	 *            1 = 내용
	 *            2 = 대표 이미지
	 *            3 = 가격
	 *            4 = 상품 이미지
	 */
	public static String getDress(int id, int num) throws Exception {
		String x = null;
		stmt = (Statement) con.createStatement();
		String sql = null;
		sql = String.format("select * from asclo_dress where dress_num='%s'", id);
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			// 타이틀
			if (num == 0) {
				x = rs.getString("dress_title");
			}
            // 내용
            if (num == 1) {
                x = rs.getString("dress_content");
            }
			// 대표 이미지
			if (num == 2) {
				x = rs.getString("dress_img");
			}
			// 가격
			if (num == 3) {
				x = rs.getString("dress_price");
			}
			// 상품 이미지
			if (num == 4) {
				x = rs.getString("dress_goods_img");
			}
		}
		return x;
	}

	/**
	 * Gets dresscount.
	 *
	 * @return the dresscount
	 * @throws Exception the exception
	 */
	public static int getDresscount() throws Exception {
		int x = 0;
		stmt = (Statement) con.createStatement();
		String sql = "select count(*) from asclo_dress";
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			x = rs.getInt(1);
		}
		return x;
	}

	/**
	 * Get dress title string [ ] [ ].
	 *
	 * @return the string [ ] [ ]
	 * @throws Exception the exception
	 */
	public static String[][] getDressTitle() throws Exception {
		int count = getDresscount();
		String[][] x = new String[count][7];
		int i = 0;
		stmt = (Statement) con.createStatement();
		String sql = "select * from asclo_dress";
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
		    // 번호
			x[i][0] = rs.getString(1);
			// 타이틀
            x[i][1] = rs.getString(2);
            // 이미지
            x[i][2] = rs.getString(3);
            // 내용
            // 개수
            // 가격
            x[i][5] = rs.getString(6);
            // 날짜
			i++;
		}
		return x;
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 어드민부분 //////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * @param id the id
	 * @return the int
	 * @throws Exception the exception
	 */
	public static int AdminconfirmID(String id)throws Exception{
		int x = 0;
		stmt = (Statement) con.createStatement();
		String sql1 = String.format("select * from asclo_admin where admin_id='%s'", id);
		rs = (ResultSet) stmt.executeQuery(sql1);

		if(rs.next()){
			x = 1;
		}
		return x;
	}

	/**
	 * 로그인 <아이디, 비밀번호 조회>
	 *
	 * @param id the id
	 * @param pw the pw
	 * @return the int
	 * @throws Exception the exception
	 */
	public static int AdminLoginAsclo(String id, String pw) throws Exception {
		int x = 0;
		if(AdminconfirmID(id) == 1) {
			stmt = (Statement) con.createStatement();
			String sql = String.format("select * from asclo_admin where admin_id='%s' and admin_pw='%s'", id, pw);
			rs = (ResultSet) stmt.executeQuery(sql);
			if(rs.next())
				x = 1;
		}
		return x;
	}

	/**
	 * 어드민 레벨 가져오기
	 *
	 * @param id the id
	 * @return the adminlevel
	 * @throws Exception the exception
	 */
	public static String getAdminlevel(String id) throws Exception {
		String x = null;
		stmt = (Statement) con.createStatement();
		String sql = String.format("select * from asclo_admin where admin_id='%s'", id);
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			x = rs.getString("admin_level");
		}
		return x;
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 리뷰부분 ////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * 리뷰 게시글 쓰기
	 * @param board_id the board id
	 * @param user_id the user id
	 * @param title the title
	 * @param content the content
	 * @param img the img
	 * @param date the date
	 * @throws Exception the exception
	 */
    public static void InsertReview(String board_id, String user_id, String title, String content, String img, String date)throws Exception{
        stmt = (Statement) con.createStatement();
        String sql1 = String.format("insert into asclo_review values(null, '%s', '%s', '%s', '%s', '%s', '%s', 0)", board_id, user_id, title, content, img, date);
        stmt.executeUpdate(sql1);
    }

	/**
	 * 리뷰 특정 정보 가져오기
	 *
	 * @param board_id  the board id
	 * @param review_id the review id
	 * @param result    the result
	 * @return the review
	 * @throws Exception the exception
	 */
	public static String getReview(String board_id, String review_id, String result) throws Exception {
		String x = null;
		stmt = (Statement) con.createStatement();
		String sql = null;

		if(board_id.equals("")){
			sql = String.format("select * from asclo_review where review_num=%s", review_id);
		}else{
			sql = String.format("select * from asclo_review where review_board=%s and review_num=%s", board_id, review_id);
		}

		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			if(result.equals("content")){
				x = rs.getString("review_content");
			}
			if(result.equals("count")){
				x = rs.getString("review_count");
			}
			if(result.equals("title")){
				x = rs.getString("review_title");
			}
		}
		return x;
	}

	/**
	 * 모든 리뷰 가져오기 string [ ] [ ].
	 *
	 * @param board_id the board id
	 * @return the string [ ] [ ]
	 * @throws Exception the exception
	 */
	public static String[][] getAllReview(String board_id) throws Exception {
		String sql;
		int count = getReviewcount(board_id);
		String[][] x = new String[count][8];
		int i = 0;
		stmt = (Statement) con.createStatement();
		if(board_id.equals("")){
			sql = "select * from asclo_review";
		}else{
			sql = "select * from asclo_review where review_board="+board_id;
		}
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			// 번호
			x[i][0] = rs.getString(1);
			// 쓴 게시물 번호
			x[i][1] = rs.getString(2);
			// 아이디
			x[i][2] = rs.getString(3);
			// 타이틀
			x[i][3] = rs.getString(4);
			// 날짜
			x[i][6] = rs.getString(7);
			// 카운터
			x[i][7] = rs.getString(8);
			i++;
		}
		return x;
	}

	/**
	 * 리뷰가 몇개인지?
	 *
	 * @param board_id the board id
	 * @return the reviewcount
	 * @throws Exception the exception
	 */
	public static int getReviewcount(String board_id) throws Exception {
		int x = 0;
		stmt = (Statement) con.createStatement();
		String sql;
		if(board_id.equals("")){
			sql = "select count(*) from asclo_review";
		}else{
			sql = "select count(*) from asclo_review where review_board='"+board_id+"'";
		}
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			x = rs.getInt(1);
		}
		return x;
	}

	/**
	 * 리뷰 카운터 상승 (중복체크 안함)
	 *
	 * @param board_id  the board id
	 * @param review_id the review id
	 * @throws Exception the exception
	 */
	public static void plusReviewcount(String board_id, String review_id) throws Exception{
		stmt = (Statement) con.createStatement();
		String string_count = getReview(board_id, review_id, "count");
		int count = (Integer.parseInt(string_count)+1);
		String sql1 = String.format("update asclo_review set review_count='%d' where review_board='%s' and review_num='%s'", count, board_id, review_id);
		stmt.executeUpdate(sql1);
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 페이징부분 //////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 몇개로나눌껀지?
	static int page_count = 10;

	/**
	 * 페이지번호 가져오기
	 *
	 * @param board_id the board id
	 * @return the paging num
	 * @throws Exception the exception
	 */
	public static int getPagingNum(String board_id) throws Exception {
		int x = 0;
		stmt = (Statement) con.createStatement();
		String sql;
		if(board_id.equals("")){
			sql = "select count(*) from asclo_review";
		}else{
			sql = "select count(*) from asclo_review where review_board='"+board_id+"'";
		}

		// count(*)
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			x = rs.getInt(1);
		}

		int total_page = x / page_count;
		if(x % page_count > 0){
			total_page ++;
		}

		return total_page;
	}

	/**
	 * 페이지 가져오기 string [ ] [ ].
	 *
	 * @param board_id  the board id
	 * @param limit_min the limit min
	 * @param limit_max the limit max
	 * @return the string [ ] [ ]
	 * @throws Exception the exception
	 */

	public static String[][] getPaginglist(String board_id, int limit_min, int limit_max) throws Exception {
		int reviewcount = getReviewcount("");
		String[][] x = new String[reviewcount][10];
		stmt = (Statement) con.createStatement();
		String sql;
		if(board_id.equals("")){
			sql = "select * from asclo_review order by review_num desc limit "+limit_min+", "+limit_max+"";
		}else{
			sql = "select * from asclo_review where review_board='"+board_id+"' order by review_num desc limit "+limit_min+", "+limit_max+"";
		}
		System.out.println("확인: "+sql);
		int i = 0;
		rs = (ResultSet) stmt.executeQuery(sql);
		while(rs.next()) {
			//num
			x[i][0] = rs.getString(1);
			// title
			x[i][1] = rs.getString(4);
			//id
			x[i][2] = rs.getString(3);
			//board num
			x[i][3] = rs.getString(2);
			i++;
		}
		return x;
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 장바구니 ////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////





	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////// 통합 ///////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	private static void all_close() throws SQLException {
		stmt.close();
		rs.close();
	}
}