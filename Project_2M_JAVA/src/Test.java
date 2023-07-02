public class Test {
    
    public static void main(String[] args) {

        Grade grade = new Grade();
        boolean graduate; // 졸업 여부
        
        Student chanmi = new Student(3, 3, "박찬미", 85, 95, 70, 75, 90);
        Student sinheoak = new Student(3, 3, "김신혁", 100, 100, 100, 100, 100);
        
        grade.studentPrint(chanmi);
        grade.mean(chanmi);
        
        grade.nameChange(chanmi, "김은호");
        
        graduate = grade.GRchange(chanmi, 0);
        
        if(graduate == true) {
            System.out.println(grade.studentPrint(chanmi) + " 학생, 졸업");
            chanmi = null;
        }
        System.out.println(grade.studentPrint(chanmi));
        
        
        System.out.println(grade.studentPrint(sinheoak));

        grade.gradeReset(sinheoak);
        grade.gradeChange(sinheoak, 90, 95, 90, 95, 90);
        grade.mean(sinheoak);
        System.out.println(grade.gradePrint(sinheoak));
        
    }
}