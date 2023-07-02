//DTO

// 학생의 정보를 담고 있는 클래스
public class Student {
    
    int grade; // 학년
    int room; // 반
    String name; // 이름
    int korean; // 국어 점수
    int math; // 수학 점수
    int english; // 영어 점수
    int history; // 한국사 점수
    int science; // 과학 점수
    
    public Student() {}    
    
    public Student(int grade, int room, String name, int korean, int math, int english, int history, int science) {
        this.grade = grade;
        this.room = room;
        this.name = name;
        this.korean = korean;
        this.math = math;
        this.english = english;
        this.history = history;
        this.science = science;
    }
    
    public int getGrade() {
        return  grade;
    }
    public void setGrade(int grade) {
        this.grade = grade;
    }
    public int getRoom() {
        return room;
    }
    public void setRoom(int room) {
        this.room = room;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getKorean() {
        return korean;
    }
    public void setKorean(int korean) {
        this.korean = korean;
    }
    public int getMath() {
        return math;
    }
    public void setMath(int math) {
        this.math = math;
    }
    public int getEnglish() {
        return english;
    }
    public void setEnglish(int english) {
        this.english = english;
    }
    public int getHistory() {
        return history;
    }
    public void setHistory(int history) {
        this.history = history;
    }
    public int getScience() {
        return science;
    }
    public void setScience(int science) {
        this.science = science;
    }
    
}