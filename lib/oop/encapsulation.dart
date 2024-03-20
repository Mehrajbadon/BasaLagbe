class Person {
  final String _firstName;
  final String _lastName;
  String _gender;
  int _age;

  Person(this._firstName, this._lastName, this._gender, this._age){
    print(_getBirthYear());
  }


  String getFullName() {
    return '$_firstName$_lastName';
  }

  //setter method
  void changeGender(String gender) {
    if (gender == 'Male' || gender == 'Female') {
      _gender = gender;
    }
  }

  //getter method
  String getGender() {
    return _gender;
  }

  int _getBirthYear(){
    return 2024 - _age;
  }

  set setAge(int newAge){
    if(newAge >= 12 && newAge <= 100)
    {
      _age = newAge;
    }
    else{
      return;
    }
  }
  int get getAge{
    return _age;
  }

}



class Man{
String name;
int age;
String gender;
Man(this.name,this.age,this.gender);

String getFullName(){
return name;
}

set setGender(String Gender){
  Gender = gender;
}
get getGender{
  return gender;
}

set setAge(int Age){
Age = age;
}
get getAge{
  return age;
}

void fullInformation(){
  print('Name: $name');
  print('Age: $age');
  print('Gender: $gender');
}
}