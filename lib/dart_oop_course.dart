/* 
- Programming Paradigm
- where is OOP in the SDLC

Building software :
1- Analysis / Requirement
                           <== Applying Programming Paradigms
2- Design
3- Implementation
4- Testing

 تخلص ببدا افكر ازاى هنفذ السوفت وير بتاعى الطريقة بقى اللى هفكر بيها علشان ابنى بيها السوفت وير بتاعى هى دى بقى اسمها  Analysis / Requirement  بعد ما مرحلة ال 
** software Paradigm => the way you think about the software constraction (How it will be built)

YStore Exmaple:
1- create Function Named ListOfProducts(productName,ShortDescription,Price)
2- create Function Named BrowseProducts()
3- Connect to the data sourse that has the products (database , File , Web API )
4- Get A batch of Products
5- Return The Products List To be Presented In the user interface
6- call that at the appropraiate place in your app flow

Notes:

Procedural Programming Paradigm:- 
- Top-Down Series of instructions
- Your code was Centered around functions

Object Oriented Programming Paradigm:-
- Centered around Objects
- objects offer behaviors and data to be used by other objects

Steps:-
1- First, We identify the objects (Things) In the system
EX:- user , Products,.. etc

2- identify each object's Attributes and behaviors
Ex:- User -> name , address , phone | MakeOrders() , AskForRefund()

3- identifiy The possible Relatios and interactions between These Objects

4- Apply Some Concepts
- Encapsulation
- Code Reuse and more...

Other Programming Paradigms: 45 Minute Video
1- Logical Programming (Facts , Rule , Ask The Progrm Some Question and Base On Facts And Rules The Program Answer My questions)
2- Functional Programming
3- Declarative Programming
4- OOP programming

Why OOP ? :
1- Required By Many Modern Languages / Companies
2- Helps Writing better (Cleaner) code
3- Easier To Maintain , scale and Troubleshoot
4- Less time and less cost of development

Class -> هو الوصف بتاع الاوبجيكت


Coffee Machine Example :-

1- Version 1.0
object Name : Machine (Or Machine Panel)
Attributes(Variables):
  - availableOptions (Can be Coffee Sizes or Types Of Coffee)
  - enoughWater (Water Level)
  - enoughCoffee (Coffee Level)
Behaviors(Methods):
  - turnAvailableOptions (ON OR OFF) 
  - makeCoffee()
  - warning() 

2- Better Version
object Name : Machine (Or Machine Panel)
Attributes(Variables):
  - coffeeSizes (array of strings or Ints OR Enumerator )
  - waterLevel (Percentage Float Or Doubel)
  - coffeeLevel (Percentage Float Or Doubel)
Behaviors(Methods):
  - turnAvailableOptionsOn() : void
  - isWaterEough() : bool
  - isCoffeeEnough() : bool
  - warnWaterLevelLow() : void
  - warnCoffeeLevelLow() : void
  - makeCoffee(int) : void

بتاعتى Requirement لل OOP Model انا كده عملت
بس ده مش الشكل الاستاندر او المتبع فى التعبير عن الاوبجيكت
ازاى نعبر عن الكلاسس وازاى نشيرها مع بعض او ازاى نعمل موديلينج ليها
UML class Diagram الشكل المتعارف عليه او المتفق عليه فى تمثيل الكلاس اللى هو



  */
