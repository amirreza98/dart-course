void main() {
  int age = 20;
  double gpa = 2.8;
  bool hasScholarship = false;

  if (age >= 18) {
    print('Adult');
  } else {
    print('Minor');
  }

  if (gpa >= 3.5) {
    print('Excellent');
  } else if (gpa >= 2.5) {
    print('Good standing');
  } else {
    print('Probation');
  }

  if (gpa >= 3.0 && age < 25) {
    print('Young achiever eligible');
  }

  String status = age >= 18 ? 'Adult' : 'Minor';
  print(status);
  print('Scholarship: ${hasScholarship ? 'Yes' : 'No'}');

  String grade = 'B';
  switch (grade) {
    case 'A': print('Outstanding'); break;
    case 'B': print('Very good'); break;
    default: print('Keep going');
  }
}
