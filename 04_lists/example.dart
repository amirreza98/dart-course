//An ordered collection of elements (like an array):
//Keeps order
//Indexed (starts at 0)
//Can grow/shrink
//Type Safety

void main() {

  List<String> students = ['Sara', 'Lena', 'Max', 'Ali'];
  List<int> scores = [88, 72, 95, 61];

  //Accessing Elements:
  print(students[0]);
  //Built-in Properties:
  print(students.length);
  print(students.first);
  print(students.last);

  students.add('Julia');
  students.remove('Max');
  print(students);
  //returns true or false:
  print(students.contains('Ali'));

  //Looping Over Lists (index-based)
  for (int i = 0; i < students.length; i++) {
    print('${i + 1}. ${students[i]}');
  }

  //For-in loop (cleaner)
  for (String s in students) {
    print('Student: $s');
  }

  scores.sort();
  print(scores);
  //higher-order function
  print(scores.reduce((a, b) => a + b));
  students.map((s) => s.toUpperCase()).toList();
}
