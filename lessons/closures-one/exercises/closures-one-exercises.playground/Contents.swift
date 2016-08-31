//: Playground - noun: a place where people can play

import UIKit

// Closures-One-Exercises

//1. Create a closure that has no parameters or values and prints "Hello Closures!". Check by passing closure's return to a variable

let noParameters = {() in
    return "Hello Closures!"
}


var x = noParameters()
print(x)

//2. Create a closure that takes one Int and returns the doubled value. Check by passing closure's return to a variable.

let doubled = { (i:Int) -> Int in
    return i * 2
}

let sixDoubled = doubled(6)
print(sixDoubled)

//3. Create a closure that takes one Int and returns a bool whether or not it's divisible by 3.

let isDivisibleByThree = { (i: Int) -> Bool in
    return i % 3 == 0
}

isDivisibleByThree(5)

//4. Create a closure that takes two strings as input and returns the longest character count of the two strings.

let longerStringCharCount = { (a: String, b: String) -> Int in
    if a.characters.count > b.characters.count {
        return a.characters.count
    } else {
        return b.characters.count
    }
}

longerStringCharCount("acb","amber")


//5a. Create a closure that takes an array of Int as input and returns the largest element in the array

//let largestElement = {(intArray: [Int]) -> Int in
//    
//    var newArray = intArray.sort({ (a, b) -> Bool in
//        return a > b
//    })
   // return var x = newArray.first

let largestElement = {(intArray: [Int]) -> Int in
    intArray.sort(>)
    
    return intArray.first!
}


largestElement([3,9,12,5,4,1,2])

//5b.  Create a closure that takes an array of Int and variable x: Int as input and returns the xth largest element in the array.  Assume x is always < the count of the array


let xthLargestElement = {(intArray: [Int], x: Int) -> Int in
    return intArray.sort(>)[x-1]
}

xthLargestElement([1,2,3,4,5], 2)


//5c.  Rewrite 5b and add handling for cases where x >= the count of the array (Hint: Use optionals)

//Higher order functions

let myArray = [34,42,42,1,3,4,3,2,49]

let xthLargestElementFinder = {(intArray: [Int], x: Int) -> Int? in
    if x >= intArray.count {
        return nil
    } else {
        return intArray.sort(>)[x-1]
    }
}

xthLargestElementFinder(myArray, 6)


//6a. Sort myArray in ascending order by defining the constant ascendingOrder below.


let ascendingOrder = { (a: Int, b: Int) -> Bool in
    return a < b
}

let mySortedArray = myArray.sort(ascendingOrder)
    
//6b. Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder = { (a: Int, b: Int) -> Bool in
    return a > b
}

myArray.sort(descendingOrder)

let mySecondSortedArray = myArray.sort(descendingOrder)
//let descendingOrder =

let arrayOfArrays = [[3,65,2,4],[25,3,1,6],[245,2,3,5,74]]

//7a. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Assume each array will have at least 3 elements

arrayOfArrays.sort( {(a: [Int], b: [Int]) -> Bool in
    return a[2] < b[2]
})



//7b. Sort arrayOfArrays in ascending order by the 3rd element in each array.  Don't assume each array will have at least 3 elements.  Put all arrays that have less than 3 elements at the end in any order.

var sortByThirdElement = {(a: [[Int]]) -> [[Int]] in
    var invalidArr = [[Int]]()
    var validArr = [[Int]]()
    for x in a {
        if x.count < 3 {
            invalidArr.append(x)
            //print(invalidArr)
        } else {
            validArr.append(x)
        }
    }
    var sortedArray = validArr.sort({ (a: [Int], b: [Int]) -> Bool in
        return a[2] < b[2]
    })
    sortedArray += invalidArr
    return sortedArray
}

print(sortByThirdElement([[6,16,6],[5,15,3],[9,19,99], [1,2]]))

let letterValues = [
    "a" : 54,
    "b" : 24,
    "c" : 42,
    "d" : 31,
    "e" : 35,
    "f" : 14,
    "g" : 15,
    "h" : 311,
    "i" : 312,
    "j" : 32,
    "k" : 93,
    "l" : 203,
    "m" : 212,
    "n" : 41,
    "o" : 102,
    "p" : 999,
    "q" : 1044,
    "r" : 404,
    "s" : 649,
    "t" : 414,
    "u" : 121,
    "v" : 838,
    "w" : 555,
    "x" : 1001,
    "y" : 123,
    "z" : 432
]

//8a. Sort the string below in descending order according the dictionary letterValues

var codeString = "aldfjaekwjnfaekjnf"

var arrayofCodeString = Array(codeString.characters)

print(arrayofCodeString.sort{(a: Character,b: Character) -> Bool in
    
    let aValue = letterValues["\(a)"]
    let bValue = letterValues["\(b)"]
    return aValue > bValue
})



//8b.  Sort the string below in ascending order according the dictionary letterValues

var codeStringTwo = "znwemnrfewpiqn"



//10.  Write a closure tripleNumber that takes no arguments and returns void.  It should multiply the global variable number by 3 each time the closure is run.

var number = 1

//var tripleNumber =



//9. Given a tuple representation of our names from before:

let firstAndLastTuples = [("Johann S.", "Bach"),
                                 ("Claudio", "Monteverdi"),
                                 ("Duke", "Ellington"),
                                 ("W. A.", "Mozart"),
                                 ("Nicolai","Rimsky-Korsakov"),
                                 ("Scott","Joplin"),
                                 ("Josquin","Des Prez")]

// sort the array of tuples by last name. Print the sorted array using string interpolation so that
// the output looks like:
// Bach, Johann S.
// Des Prez, Josquin
// .
// .
// .

//10. Build an array of tuples representing everyone in the class. Here you are sorted by first name:
//

//Amber Spadafora	3201
//Ana Ma	3202
//Annie Tung	3203
//Cristopher Chavez	3204
//Eashir Arafat	3205
//Edward Anchundia	3206
//Emily Chu	3207
//Eric Chang	3208
//Erica Stevens	3209
//Fernando Ventura	3210
//Harichandan Singh	3211
//Ilmira Estil	3212
//Jermaine Kelly	3213
//Gabriel Breshears	3214
//Kadell Gregory	3215
//Kareem James	3216
//Karen  Manzanares Fuentes 	3217
//Leandro Nunez	3218
//Liam Kane	3219
//Luz Loayza Herrera	3220
//Madushani Lekam Wasam Liyanage	3221
//Marcel Chaucer	3222
//Margaret Ikeda	3223
//Maria Scutaru	3224
//Marty Avedon	3225
//Michael Pinnock	3226
//Miti  Shah	3227
//Rukiye Karadeniz	3228
//Sabrina Ip	3229
//Simone Grant	3230
//Sophia Barrett	3231
//Thinley  Dorjee	3232
//Tom Seymour	3233
//Tong Lin	3234
//Tyler Newton	3235
//Victor Zhong	3236

// Here's an example of how to start:
let ac32folks = [("Amber", "Spadafora",	3201),
                 ("Ana", "Ma",	3202),
                 ("Annie", "Tung",	3203)]
// and so on...

// Build a sort comparison closure that will bring your name as close to the top as possible.
// We will use this to determine the order we use to access the microwave.
// Feel free to add fields to the tuple to accomplish this -- yes, this is a cheat.



//11. Create a closure that takes an two arrays of strings as input. Output a new string with the contents of the arrays in alternating order and separated by a space. If one array's length is longer than the other, append the rest of it's contents to the new string.

// eg: input array1: ["Hello", "My", "Friend"] array2: ["Darkness", "Old"]
//      output string: "Hello Darkness My Old Friend
