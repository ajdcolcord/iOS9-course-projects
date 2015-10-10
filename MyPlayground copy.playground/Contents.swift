//: Playground - noun: a place where people can play

import UIKit

var number = 99

var isPrime = true

if number == 1 {
    isPrime = false
}

if number != 2 && number != 1 {
    for var x = 2 ; x < number ; x++ {
        if (number % x) == 0 {
            isPrime = false
            
        }
    }
}
print(isPrime)