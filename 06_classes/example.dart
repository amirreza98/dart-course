void main() {
  Student s1 = Student('Sara Mueller', 22, [88, 72, 95, 61]);
  Student s2 = Student('Max Schneider', 19, [55, 61, 70, 58]);

  s1.introduce();
  print(s1.getAverage());
  print(s1.getStatus());
  s1.addScore(91);

  List<Student> classroom = [s1, s2];
  for (Student s in classroom) {
    print('${s.name} — ${s.getStatus()}');
  }
}

class Student {
  String name;
  int age;
  List<int> scores;

  Student(this.name, this.age, this.scores);

  void introduce() => print('Hi, I am $name, $age years old.');

  double getAverage() {
    int total = scores.reduce((a, b) => a + b);
    return total / scores.length;
  }

  String getStatus() {
    double avg = getAverage();
    if (avg >= 85) return 'Distinction';
    if (avg >= 60) return 'Pass';
    return 'Fail';
  }

  void addScore(int score) {
    scores.add(score);
    print('Score $score added for $name');
  }
}
