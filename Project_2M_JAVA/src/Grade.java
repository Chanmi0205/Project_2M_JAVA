// DAO

// 학생 정보를 가지고 조회, 변경, 삭제하는 클래스
public class Grade {
    
    // 학생 정보 조회
    public String studentPrint(Student student) {
    	if(student == null) return "학생은 이미 졸업하였습니다.";
    	else return student.grade + "학년, " + student.room + "반 " + student.name;
    }
    
    //학생 성적 조회
    public String gradePrint(Student student) {

    	if(student == null) return "학생은 이미 졸업하였습니다.";
    	else return "이름] " + student.name + "\n 국어 : " + student.korean + "\n 수학 : " + student.math + "\n 영어 : " + student.english + "\n 과학 : " + student.science + "\n 한국사 : " + student.history;
    }
    
    // 전체 평균 점수
    public void mean(Student student) {

    	if(student == null) {
    		System.out.println("학생은 이미 졸업하였습니다.");
    	} else {    		
        int mean = (student.korean + student.math +
                   student.english + student.history + student.science) / 5;
        
        System.out.println(student.getName() + "의 전체평균 : " + mean);
    	}
    }
    
    // 정보 변경 | 나이 + 1
    public boolean GRchange(Student student, int room) {
        
    	boolean graduate = false; // 졸업 여부

    	if(student == null) {
    		System.out.println("학생은 이미 졸업하였습니다.");
    	} else if(room == 0) {
            graduate = true;
    	} else {            
            student.grade+=1;
            student.room = room;
        }
        return graduate;
    }
    
    // 정보 변경 | 학생 이름 변경
    public void nameChange(Student student, String name) {
    	if(student == null) {
    		System.out.println("학생은 이미 졸업하였습니다.");
    	} else {
    		student.name = name;    		
    	}
    }
    
    // 정보 변경 | 점수 변경
    public void gradeChange(Student student, int korean, int math, int english, int history, int science) {
    	if(student == null) {
    		System.out.println("학생은 이미 졸업하였습니다.");
    	} else {
	        student.setKorean(korean);
	        student.setMath(math);
	        student.setEnglish(english);
	        student.setHistory(history);
	        student.setScience(science);
    	}
    }
    
    // 점수 리셋
    public void gradeReset(Student student) {
    	if(student == null) {
    		System.out.println("학생은 이미 졸업하였습니다.");
    	} else {
	        student.setKorean(0);
	        student.setMath(0);
	        student.setEnglish(0);
	        student.setHistory(0);
	        student.setScience(0);
    	}
    }
}