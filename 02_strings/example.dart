void main() {
  String firstName = 'Sara';
  String lastName = 'Mueller';
  int age = 22;
  double gpa = 3.75;

  print(firstName + ' ' + lastName);
  print('My name is $firstName $lastName');
  print('I am $age years old');
  print('GPA rounded: ${gpa.toInt()}'); //property
  print('In 5 years I will be ${age + 5}');

  print(firstName.length);
  print(firstName.toUpperCase());
  print('  hello  '.trim());
}
