class CoffeeMachine {
  List coffeeSizes = [1, 2, 3, 4];
  double waterLevel = 0.0; // Milli Letter
  double coffeeLevel = 0.0; // Gram

  void fakeWaterAdd(double water) {
    waterLevel += water;
  }

  void fakeCoffeeAdd(double coffee) {
    coffeeLevel += coffee;
  }

  void turnAvailableOptionsOn() {
    print('Available Options On');
  }

  void turnAvailableOptionsOff() {
    print('Available Options Off');
  }

  bool isWaterLevelEnough(int coffeeSize) {
    if (coffeeSize == 1 && waterLevel >= 200) {
      return true;
    } else if (coffeeSize == 2 && waterLevel >= 300) {
      return true;
    } else if (coffeeSize == 3 && waterLevel >= 400) {
      return true;
    } else if (coffeeSize == 4 && waterLevel >= 500) {
      return true;
    }
    return false;
  }

  bool isCoffeeLevelEnough(int coffeeSize) {
    if (coffeeSize == 1 && coffeeLevel >= 10) {
      return true;
    } else if (coffeeSize == 2 && coffeeLevel >= 12) {
      return true;
    } else if (coffeeSize == 3 && coffeeLevel >= 15) {
      return true;
    } else if (coffeeSize == 4 && coffeeLevel >= 20) {
      return true;
    }
    return false;
  }

  void warmWaterLevel() {
    print('Water Level Are Not Enough');
  }

  void warmCoffeeLevel() {
    print('Coffee Level Are Not Enough');
  }

  /*
 * Coffee Size 1 : water 200m, coffee 10gm
 * Coffee Size 2 : water 300m, coffee 12gm
 * Coffee Size 3 : water 400m, coffee 15gm
 * Coffee Size 4 : water 500m, coffee 20gm
 * */

  void makeCoffee(int coffeeSize) {
    var water = isWaterLevelEnough(coffeeSize);
    var coffee = isCoffeeLevelEnough(coffeeSize);

    // Turn Available options Off
    turnAvailableOptionsOff();

    if (coffeeSize == 1) {
      if (water && coffee) {
        // Make a Coffee Of Size 1
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size 1
        waterLevel -= 200;
        coffeeLevel -= 10;

        // Turn The Available Options ON
        turnAvailableOptionsOn();
      } else {
        if (water) {
          warmCoffeeLevel();
        } else if (coffee) {
          warmWaterLevel();
        } else {
          warmWaterLevel();
          warmCoffeeLevel();
        }
      }
    } else if (coffeeSize == 2) {
      if (water && coffee) {
        // Make a Coffee Of Size 2
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size 2
        waterLevel -= 300;
        coffeeLevel -= 12;

        // Turn The Available Options ON
        turnAvailableOptionsOn();
      } else {
        if (water) {
          warmCoffeeLevel();
        } else if (coffee) {
          warmWaterLevel();
        } else {
          warmWaterLevel();
          warmCoffeeLevel();
        }
      }
    } else if (coffeeSize == 3) {
      if (water && coffee) {
        // Make a Coffee Of Size 3
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size 3
        waterLevel -= 400;
        coffeeLevel -= 15;

        // Turn The Available Options ON
        turnAvailableOptionsOn();
      } else {
        if (water) {
          warmCoffeeLevel();
        } else if (coffee) {
          warmWaterLevel();
        } else {
          warmWaterLevel();
          warmCoffeeLevel();
        }
      }
    } else if (coffeeSize == 4) {
      if (water && coffee) {
        // Make a Coffee Of Size 4
        print('your Coffee is Ready');

        // Minus The the Amount of water and coffee needed to Make Coffee of size 4
        waterLevel -= 500;
        coffeeLevel -= 20;

        // Turn The Available Options ON
        turnAvailableOptionsOn();
      } else {
        if (water) {
          warmCoffeeLevel();
        } else if (coffee) {
          warmWaterLevel();
        } else {
          warmWaterLevel();
          warmCoffeeLevel();
        }
      }
    }
  }
// switch(coffeeSize){
//  case 1 :
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size 1
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
//  case 2:
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size 2
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
//  case 3:
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size 3
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
//  case 4:
//   if(checkWaterLevel() && checkCoffeeLevel()){
//    // Make a Coffee of size 1
//   }else{
//    warmWaterLevel();
//    warmCoffeeLevel();
//   }
//   break;
// }

}
