//OOP language
//blueprint (template) for creating objects
class Student {
  String name;
  int age;
  List<int> scores;
  ...
}
//Class = design
//Object = actual instance

void main() {
  //Creating Objects (Instances)
  Student s1 = Student('Sara Mueller', 22, [88, 72, 95, 61]);
  Student s2 = Student('Max Schneider', 19, [55, 61, 70, 58]);

  s1.introduce();
  print(s1.getAverage());
  print(s1.getStatus());
  s1.addScore(91);

  List<Student> classroom = [s1, s2];
  for (Student s in classroom) {
    //treating objects like any other data type:
    print('${s.name} — ${s.getStatus()}');
  }
}

class Student {
  //Fields (Properties):
  //meaning Every Student object will have these pieces of data.
  String name;
  int age;
  List<int> scores;

  //Constructor:
  //meaning when someone creates a Student, this is how we assign values to those fields
  Student(String name, int age, List<int> scores) {
    this.name = name;
    this.age = age;
    this.scores = scores;
  }
  //or shorthand constructor:
  Student(this.name, this.age, this.scores);

  //Methods:
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
