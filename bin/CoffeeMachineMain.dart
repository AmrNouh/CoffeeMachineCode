import '../lib/coffee_machine.dart';

void main(){
  var machine1 = CoffeeMachine();
  machine1.fakeWaterAdd(1000);
  machine1.fakeCoffeeAdd(100);
  machine1.makeCoffee(1);
  machine1.makeCoffee(2);
  machine1.makeCoffee(3);
  machine1.makeCoffee(4);
  machine1.makeCoffee(4);
  machine1.makeCoffee(4);
}