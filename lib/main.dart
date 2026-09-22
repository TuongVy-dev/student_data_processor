import 'data/sample_data.dart';
import 'models/student.dart';
import 'services/student_service.dart';

void main() {
  final students = [...sampleStudents];

  addStudent(
    students,
    Student(id: 5, name: 'New Student', age: 23, gpa: 3.0, major: 'Mathematics')
  );

  updateGpa(students, 2, 2.0);

  final topStudents = findHighGpa(students, 3.5);

  final displayData = prepareDisplayData(
    topStudents,
    (s) => '${s.name} - ${s.gpa}'
  );  

  for (var data in displayData) {
    print(data);
  }

}

