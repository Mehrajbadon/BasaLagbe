//father class
class Human{
  String name;
  int age;
  String gender;
  String location;

  Human(this.name,this.age,this.gender,this.location);

  set changeGender(int newAge){
    if(newAge >= 12 && newAge <= 100)
      {
        age = newAge ;
      }
  }
  int get changeGender {
    return age;
  }

}

//children class
class Student extends Human{
  @override
  String name;
  @override
  int age;
  @override
  String gender;
  @override
  String location;
  String instution;

  Student(this.name,this.age,this.gender,this.location,this.instution) : super(name,age,gender, location);

  @override
  set changeGender(int newAge) {
    // TODO: implement changeGender
    super.changeGender = newAge;
    print('changing successfull');
  }

}

class Manus{
  String name;
  String eye;
  String gender;

  Manus({required this.name,required this.eye,required this.gender});

  set changeName(String Name){
    name = Name;
  }

  get getName{
    return name;
  }

  set changeGender(String Gender){
    if(Gender == 'Male' || Gender == 'Female')
      {
        gender = Gender;
      }
    else{
      return;
    }
  }

  get getGender{
    return gender;
  }


}

class Mehraj extends Manus{

  String hat;
  String pa;
  String mon;

  Mehraj(this.hat,this.pa,this.mon) : super(name: '', eye: '', gender: '');

  @override
  set changeName(String Name) {
    // TODO: implement changeName
    super.changeName = Name;
    print('The name is: $name');
  }

  @override
  set changeGender(String Gender) {
    // TODO: implement changeGender
    super.changeGender = Gender;
    print('Gender is: $gender');
  }



}


