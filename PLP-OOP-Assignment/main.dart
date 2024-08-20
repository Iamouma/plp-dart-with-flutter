// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print("Student Information");
    print("Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print("Teacher Information:");
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

// Main class to create and use Student and Teacher objects
class School {
  void createAndPrintInfo() {
    // Create a student object
    Student student = Student("Trevor", 16, "10th Grade");
    // Creating a teacher object
    Teacher teacher = Teacher("Mr. Kamau", 40, "Mathematics");

    // Printing information
    student.printStudentInfo();
    teacher.printTeacherInfo();
  }
}

void main() {
  // creating an instance of School and calling the method to print information
  School school = School();
  school.createAndPrintInfo();
}