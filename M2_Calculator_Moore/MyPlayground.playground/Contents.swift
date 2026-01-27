import UIKit

var course = "iOS";
var crn = 20819;
var valid = true;

print(course);
dump(course);

print(crn);
dump(crn);

print(valid);
dump(valid);

let NUM_OF_STUDENTS = 30;
print(NUM_OF_STUDENTS);

print(type(of: NUM_OF_STUDENTS));

let NUM1 = 123;
let NUM2 = 123.45;

print(type(of: NUM1));
print(type(of: NUM2));

let NUMBERS = Double(NUM1) + NUM2;

let invalidStr = "number";
let invalidNum = Int(invalidStr);
print(invalidNum);

let invalidStr2 = "100";
let invalidNum2 = Int(invalidStr2);
print(invalidNum2);

let age = 24;
let pi = 3.14;
let name = "John";

let a = 10;
if a % 2 == 0 {
    print("\(a) is even");
}
else {
    print("\(a) is odd");
}
