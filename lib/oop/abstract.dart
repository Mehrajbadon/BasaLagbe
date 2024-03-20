class AcRemote{
  int _temp = 5;

  void incrementTemp(){
    _awakeTheRemoteSystem();
  }
  void decrementTemp(){
    _awakeTheRemoteSystem();
  }

  void _awakeTheRemoteSystem(){
    print('Awake system');
    _callTheArduino();
  }
  void _callTheArduino(){
    print('Execute command');
    _communicateWithAC();
  }
  void _communicateWithAC(){
    print('Communicate with AC');
    _getResponse();
  }
  void _getResponse(){
    _temp++;
  }
  int get Temp{
    return _temp;
  }
}

abstract class Human{
  void reading();
  void eating();  
}

class Mehraj extends Human{
  @override
  void eating() {
    _handMoving();
  }
  
  void _handMoving(){
    print('Moving');
  }

  @override
  void reading() {
    // TODO: implement reading
  }

}


abstract class Badhon{
  void read(){
    print('He is reading');
  }
  void eat();
  void typing();
}

class Badon extends Badhon{
  @override
  void eat() {
    print('Eat something');
  }

  @override
  void typing() {
    print('type something');
  }

}