//: Playground - noun: a place where people can play

//TIPS:
//(1) constant amount of space sould be placed before and after '='
//(2) parenthesis optional
//(3) semicolons are optional
//(4) int type is not boolean


import UIKit

var str = "Hello, playground"
var string = "this is a string";

var highScore = 100;
highScore = highScore + 50;


for i in 0..<100 {
    highScore = highScore + i;
}

highScore; //camel case

var myVar : Int;        //default variable with type;
var test  : Int = 12;

//=== constant == //
let strConstant = "Hello ,playground";
let interestRate : Float = 4.5;


//== print ==//



print("test");
print("test");


//=== string interpolation == //

let city = "Dhaka";
let day = "15 aug";
let temp = "34";

print("the high for \(city) on \(day) is \(temp) degrees");


//==multiple type ==//

var a = 10;
var b = 10.4;

//swift does not implicitly convert values

"multiple type \(Double(a)*b)"

// == logical flow == //

var myVar2 = 20;

if(myVar2 < 30){
    
    print("test");
    
}else{
    print("grater than 20");
}



//if(0) // will not work

if (0 == 0){
    
    print(" 0 == 0");
}else {
    
    print("0 passed as false");
}

// == switch case == //


let aForTestInSwitch : Int = 9;




switch (aForTestInSwitch){
    
case 1...2:
    print("this is false");
    break;
    
case 3...10:
    print("this is true");
    break;
    
    
default:
    print("this is default");
    
    
}


// == loop == //

var total : Int = 0;
for test in 1..<10{
    
    total += test;
    print(test);
}

print("The total is \(total)");



var str4 = "bob";

for  char in str4.characters {
    print(char);
}


// function //

func myFunction(){
    print("test function");
}


func testFunction(name : String = "mhr" ,age : Int, bAcc : String){
    
    //age ++; //parameters are constant
    
    
    print("name is \(name) and i'm \(age)");
}


testFunction( "Mehedee" ,age: 24 , bAcc: "asdf324");




// === function return == //


func testReturn() -> String {
    return "Mehedee";
}


testReturn();


// === collection == //


//array ==


var thisIsArray = ["asdf","dfs","32"];


thisIsArray.count
thisIsArray[0]
thisIsArray[1]

thisIsArray.append("test");
thisIsArray.insert("inserted", atIndex: 2);


for a in 0 ..< thisIsArray.count{
    print (a);
    print(thisIsArray[a]);
}



// dictionary

var testDictionary = ["1" : "aa" ,"2":"bb" ,"3":"cc"];

var testDictionary2 : [Int:String];


print(testDictionary["2"]);

testDictionary["4"] = "dd";
testDictionary.updateValue("5", forKey: "5");

for (key ,value) in testDictionary {
    print("key = \(key) ; value \(value)");
}


// tuples


var str5 = "Hello";
let num = 1000;

var testTuple = (str5 ,num);
var testTuple2 = (testTuple ,"kk",20390);


// returning
func getCurrentSongAndDuration() -> (name : String , length: Int){
    
    return ("A monster" ,3);
    
}

var testFunctionSong  = getCurrentSongAndDuration();



print("The sog is \(testFunctionSong.0) and it's length \(testFunctionSong.1) seconds long");


print("The sog is \(testFunctionSong.name) and it's length \(testFunctionSong.length) seconds long");



let (songName ,songLength) = getCurrentSongAndDuration();





//==== optional 


var temperature : Int?

temperature = 10;

if(temperature != nil){
    
    print("this temp : \(temperature!)"); // forced unwrapping
    
    
}



// == enum ==

enum TestEnum{
    case a
    case b
    case c
    case no
}

var testEnum : TestEnum;

testEnum = .a;
testEnum = TestEnum.b;





//=== closuer ==//

let myClosure = {
    print("test closure");
}

func testClosureTimes(myClosureParam : ()->()){
    for i in 1...5 {
        myClosureParam();
    }
}


testClosureTimes(myClosure);

testClosureTimes({
    print("test closure");
});

// =====class

class TestClass{
    
    var name:String = "";
    var score:Int = 0;
    
    
    func description()-> String{
        return ("Player \(name) scored \(score)");
    }
    
    
    final func cannotOverride() -> String {
        return ("could not override");
    }

    init(){
        name = "Test Name";
        score = 0;
    }
    
    init(name : String){
        self.name = name;
        self.score = 0;
    }
}


class TestInheri : TestClass{
    
    var testProp : String;
    
    override init(){
        self.testProp = "test prop";
        super.init();
        
    }
    
    override func description() -> String {
    
        return ("\(super.description()) and test prop \(testProp)")
    
    }
    
}


var testInstant = TestInheri();
//testInstant.name = "Mehedee";
//testInstant.score = 100;

print(testInstant.description());


// computed property



import Foundation;

class Person{
    var firstName : String ;
    var lastName : String ;
    
    var fullName : String {
        get{
            return firstName+" "+lastName;
        }
        
        set{
            var nameArray = newValue.componentsSeparatedByString(" ");
            firstName = nameArray[0];
            lastName = nameArray[1];
        }
    };
    
    
    init(first : String ,last : String)
    {
        self.firstName = first;
        self.lastName = last;
    }
    
}

var testPerson = Person(first: "Mehedee" ,last: "Hassan");

print(testPerson.fullName);




// type property and type method


class BankAccount{
    
    let accountNumber : Int;
    let routingCode  = 12345678;
    var balance : Double;
    
    class var interest : Float{
        return 2.0;
    }
    
    
    
    init(num: Int ,initialBalance : Double){
        self.accountNumber = num;
        self.balance = initialBalance;
    }
    
    
    func deposit(amount : Double)->Void {
        balance += amount;
    }
    
    
    func withdraw(amount : Double) -> Bool {
        
        if balance > amount {
            balance -= amount;
            return (true);
        }
        else {
            print("not enough balance");
            return false;
        }
        
        
        
    }
    
    
    
}


var firstAccount = BankAccount(num: 1213213 , initialBalance: 1000);
var secondAccount = BankAccount(num: 34324 ,initialBalance: 23423);


firstAccount.deposit(3243.3);

BankAccount.interest




