import '../lib/coffee_machine.dart';

void main(){
  var machine1 = CoffeeMachine(waterLevel : 1000, coffeeLevel :100);
  // var machine1 = CoffeeMachine();
  // machine1.fakeWaterAdd(1000);
  // machine1.fakeCoffeeAdd(100);
  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_SMALL);
  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_MEDIUM);
  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_LARGE);
  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_XLARGE);
  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_XLARGE);
  machine1.makeCoffee(CoffeeSize.COFFEE_SIZE_XLARGE);
}