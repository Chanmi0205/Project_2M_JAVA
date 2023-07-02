
package Student;
// DAO

// 학생 정보를 가지고 조회, 변경, 삭제하는 클래스
public class Grade extends JDBConnect {
	
	public Grade() {
		super();
	}
	
	public int studentInsert(Student student) {
		
		int result = 0;
		String sql = "INSERT INTO student VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, student.getGrade());
			psmt.setInt(2, student.getRoom());
			psmt.setString(3, student.getName());
			psmt.setInt(4, student.getKorean());
			psmt.setInt(5, student.getMath());
			psmt.setInt(6, student.getEnglish());
			psmt.setInt(7, student.getHistory());
			psmt.setInt(8, student.getScience());
			psmt.setString(9, student.getStudent_pk());
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		return result;
	}
	
	public int studentDelete(String student_pk) {
		int result = 0;
		
		String sql = "DELETE FROM student WHERE student_pk=?";
		System.out.println(student_pk);
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, student_pk);
			result = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return result;
	}
	
	public int studentUpdate(Student student) {
		int result = 0;
		String sql = "UPDATE student SET korean=?, math=?, english=?, history=?, science=? WHERE student_pk=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, student.getKorean());
			psmt.setInt(2, student.getMath());
			psmt.setInt(3, student.getEnglish());
			psmt.setInt(4, student.getHistory());
			psmt.setInt(5, student.getScience());
			psmt.setString(6, student.getStudent_pk());
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return result;
	}
    
    // 정보 변경 | 나이 + 1
    public void GRchange(String student_pk, int grade) {
        
    	String sqlD = "DELETE FROM student WHERE student_pk=?";
		String sqlU = "UPDATE student SET grade=?, room=0 WHERE student_pk=?";
		try {
			
			if(grade >= 3) {				
				psmt = conn.prepareStatement(sqlD);
				psmt.setString(1, student_pk);
			} else {
				psmt = conn.prepareStatement(sqlU);
				psmt.setInt(1, grade+1);
				psmt.setString(2, student_pk);
			}
			psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
}