void main() {
  List<String> students = ['Sara', 'Lena', 'Max', 'Ali'];
  List<int> scores = [88, 72, 95, 61];

  print(students[0]);
  print(students.length);
  print(students.first);
  print(students.last);

  students.add('Julia');
  students.remove('Max');
  print(students);
  print(students.contains('Ali'));

  for (int i = 0; i < students.length; i++) {
    print('${i + 1}. ${students[i]}');
  }

  for (String s in students) {
    print('Student: $s');
  }

  scores.sort();
  print(scores);
  print(scores.reduce((a, b) => a + b));
}
