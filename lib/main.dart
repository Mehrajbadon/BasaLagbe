import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

void main() {
  // Person randomPerson = Person('Mehraj', 'Ibne Halim', 'Male', 22);
  // randomPerson.changeGender('Female');
  // print(randomPerson.getGender());
  // randomPerson.setAge = 15;
  // print(randomPerson.getAge);
  //
  // Student student = Student('Mehraj', 22, 'male', 'Noakhali', 'iiuc');
  // student.changeGender = 20;
  // print(student.changeGender);
  //
  // AcRemote acRemote = AcRemote();
  // acRemote.incrementTemp();
  // acRemote.decrementTemp();
  // print(acRemote.Temp);

  // Man man = Man('Mehraj', 22, 'FeMale');
  // man.setAge = 23;
  // man.setGender = 'Male';
  // man.fullInformation();
  //
  // Media media = Media();
  // media.play();
  // Song song = Song('Mehraj');
  // song.play();

  // Badon badon = Badon();
  // badon.eat();
  // badon.read();
  // badon.typing();
  //   try{
//     getFullInform();
//   }
//
//   catch(e){
//     print('The error is: ${e.toString()}');
//   }
//
//
// }
//
// void getFullInform() {
//   name();
// }
//
// void name() {
//   print('Mehraj');
//   throw Exception('there is error');
//   age();
// }
//
// void age() {
//   print('22');
//   gender();
// }
//
// void gender() {
//   print('Male');
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppointmentBook(),
    );
  }
}

class AppointmentBook extends StatefulWidget {
  const AppointmentBook({Key? key}) : super(key: key);

  @override
  State<AppointmentBook> createState() => _AppointmentBookState();
}

class _AppointmentBookState extends State<AppointmentBook> {
  String? date;

  pickDate(context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      date = '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The picked date is: $date'),
            ElevatedButton(
              onPressed: () => pickDate(context),
              child: Text('Select Date'),
            ),
          ],
        ),
      ),
    );
  }
}



class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        controllerColor: Colors.black,
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: const Text('Skip'),
        trailing: const Text('Login'),
        background: [
          Image.network(
              'https://th.bing.com/th/id/R.0991259af854fbfc3b425cff3e38a385?rik=QK21XeaJ76BpzA&pid=ImgRaw&r=0'),
          Image.network(
              'https://assets.materialup.com/uploads/36dc3172-ac75-410b-b6d5-3e436d018c9d/preview.png'),
          Image.network(
              'https://assets.materialup.com/uploads/36dc3172-ac75-410b-b6d5-3e436d018c9d/preview.png'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.person_2_rounded)),
                title: Text('Basa Lagbe',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black)),
                subtitle: Text(
                  'Mehraj',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.black38),
                ),
                trailing: Icon(Icons.more_horiz),
              ),
              Image.network(
                'data:image/jpeg;base64,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',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Icon(Icons.save), Text('Save')],
                      ),
                    ),
                    Container(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.navigate_next_outlined),
                          Text('Details')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
