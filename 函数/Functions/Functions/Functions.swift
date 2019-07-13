//
//  Functions.swift
//  Functions
//
//  Created by Dyfei on 2017/6/29.
//  Copyright © 2017年 Eastze. All rights reserved.
//

import UIKit

class Functions: NSObject {

    func execute() {
        
//        函数的定义与调用
//        当你定义一个函数时，你可以定义一个或多个有名字和类型的值，作为函数的输入，称为参数，也可以定义某种类型的值作为函数执行结束时的输出，称为返回类型。
//        
//        每个函数有个函数名，用来描述函数执行的任务。要使用一个函数时，用函数名来“调用”这个函数，并传给它匹配的输入值（称作 实参 ）。函数的实参必须与函数参数表里参数的顺序一致。
        func greet(person: String) -> String {
            let greeting = "Hello, " + person + "!"
            return greeting
        }
        
        print(greet(person: "Anna"))

//        函数的定义: 以 func 作为前缀，指定函数返回类型时，用返回箭头 ->（一个连字符后跟一个右尖括号）后跟返回类型的名称的方式来表示。
//        func 函数名(参数, ...) -> 返回类型 {
//            
//        }
        func greetAgain(person: String) -> String {
            return "Hello again, " + person + "!"
        }
        print(greetAgain(person: "Anna"))
        
//        函数参数与返回值
//        函数参数与返回值在 Swift 中非常的灵活。你可以定义任何类型的函数，包括从只带一个未名参数的简单函数到复杂的带有表达性参数名和不同参数选项的复杂函数。

//        无参数函数
//        函数可以没有参数。
        func sayHelloWorld() -> String {
            return "hello, world"
        }
        print(sayHelloWorld())
        
//        多参数函数
//        函数可以有多种输入参数，这些参数被包含在函数的括号之中，以逗号分隔。
        func greet2(person: String, alreadyGreeted: Bool) -> String {
            if alreadyGreeted {
                return greetAgain(person: person)
            } else {
                return greet(person: person)
            }
        }
        print(greet2(person: "Tim", alreadyGreeted: true))
        
//        无返回值函数
//        函数可以没有返回值。
        func greet3(person: String) {
            print("Hello, \(person)!")
        }
        greet3(person: "Dave")
        
        func printAndCount(string: String) -> Int {
            print(string)
            return string.characters.count
        }
        func printWithoutCounting(string: String) {
            let _ = printAndCount(string: string)
        }
        print(printAndCount(string: "hello, world"))
        printWithoutCounting(string: "hello, world")

//        多重返回值函数
//        你可以用元组（tuple）类型让多个值作为一个复合值从函数中返回。
        func minMax(array: [Int]) -> (min: Int, max: Int) {
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count] {
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin, currentMax)
        }
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("min is \(bounds.min) and max is \(bounds.max)")

//        可选元组返回类型
//        如果函数返回的元组类型有可能整个元组都“没有值”，你可以使用可选的（ optional ） 元组返回类型反映整个元组可以是nil的事实。你可以通过在元组类型的右括号后放置一个问号来定义一个可选元组，例如 (Int, Int)? 或 (String, Int, Bool)?
//        注意 可选元组类型如 (Int, Int)? 与元组包含可选类型如 (Int?, Int?) 是不同的.可选的元组类型，整个元组是可选的，而不只是元组中的每个元素值。
        func minMax2(array: [Int]) -> (min: Int, max: Int)? {
            if array.isEmpty { return nil }
            var currentMin = array[0]
            var currentMax = array[0]
            for value in array[1..<array.count] {
                if value < currentMin {
                    currentMin = value
                } else if value > currentMax {
                    currentMax = value
                }
            }
            return (currentMin, currentMax)
        }
        
        if let bounds2 = minMax2(array: [8, -6, 2, 109, 3, 71]) {
            print("min is \(bounds2.min) and max is \(bounds2.max)")
        }
        
//        函数参数标签和参数名称
//        每个函数参数都有一个参数标签( argument label )以及一个参数名称( parameter name )。参数标签在调用函数的时候使用；调用的时候需要将函数的参数标签写在对应的参数前面。参数名称在函数的实现中使用。默认情况下，函数参数使用参数名称来作为它们的参数标签。
        func someFunction0(firstParameterName: Int, secondParameterName: Int) {
            // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
            print("firstParameterName: \(firstParameterName), secondParameterName: \(secondParameterName)")
        }
        someFunction0(firstParameterName: 1, secondParameterName: 2)
//        所有的参数都必须有一个独一无二的名字。虽然多个参数拥有同样的参数标签是可能的，但是一个唯一的函数标签能够使你的代码更具可读性。
        
//        指定参数标签
//        你可以在参数名称前指定它的参数标签，中间以空格分隔：
        func someFunction(argumentLabel parameterName: Int) {
            // 在函数体内，parameterName 代表参数值
        }
        
//        忽略参数标签
//        如果你不希望为某个参数添加一个标签，可以使用一个下划线(_)来代替一个明确的参数标签。
        func someFunction1(_ firstParameterName: Int, secondParameterName: Int) {
            // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
        }
        someFunction1(1, secondParameterName: 2)
//        如果一个参数有一个标签，那么在调用的时候必须使用标签来标记这个参数。
        
//        默认参数值
//        你可以在函数体中通过给参数赋值来为任意一个参数定义默认值（Deafult Value）。当默认值被定义后，调用这个函数时可以忽略这个参数。
        func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
            // 如果你在调用时候不传第二个参数，parameterWithDefault 会值为 12 传入到函数体中。
        }
        someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault = 6
        someFunction(parameterWithoutDefault: 4) // parameterWithDefault = 12
        
//        可变参数
//        一个可变参数（variadic parameter）可以接受零个或多个值。函数调用时，你可以用可变参数来指定函数参数可以被传入不确定数量的输入值。通过在变量类型名后面加入（...）的方式来定义可变参数。
        func arithmeticMean(_ numbers: Double...) -> Double {
            var total: Double = 0
            for number in numbers {
                total += number
            }
            return total / Double(numbers.count)
        }
        print(arithmeticMean(1, 2, 3, 4, 5))
        print(arithmeticMean(3, 8.25, 18.75))
        
//        注意：
//        一个函数最多只能拥有一个可变参数。
        
//        输入输出参数
//        函数参数默认是常量。试图在函数体中更改参数值将会导致编译错误(compile-time error)。这意味着你不能错误地更改参数值。如果你想要一个函数可以修改参数的值，并且想要在这些修改在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数（In-Out Parameters）。
//        定义一个输入输出参数时，在参数定义前加 inout 关键字。一个输入输出参数有传入函数的值，这个值被函数修改，然后被传出函数，替换原来的值。
//        你只能传递变量给输入输出参数。你不能传入常量或者字面量，因为这些量是不能被修改的。当传入的参数作为输入输出参数时，需要在参数名前加 & 符，表示这个值可以被函数修改。
        func swapTwoInts(_ a: inout Int, _ b: inout Int) {
            let temporaryA = a
            a = b
            b = temporaryA
        }
        
        var someInt = 3
        var anotherInt = 107
        swapTwoInts(&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//        函数类型
//        每个函数都有种特定的函数类型，函数的类型由函数的参数类型和返回类型组成。
//        例如：
        func addTwoInts(_ a: Int, _ b: Int) -> Int {
            return a + b
        }
        
        func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
            return a * b
        }
        
//        一个没有参数，也没有返回值的函数：
        func printHelloWorld() {
            print("hello, world")
        }
        
        func printHelloWorld2() -> Void {
            print("hello, world")
        }
//        这个函数的类型是：() -> Void，或者叫“没有参数，并返回 Void 类型的函数”。
        
//        函数类型作为参数类型
//        你可以用 (Int, Int) -> Int 这样的函数类型作为另一个函数的参数类型。这样你可以将函数的一部分实现留给函数的调用者来提供。
        func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
            print("Result: \(mathFunction(a, b))")
        }
        printMathResult(addTwoInts, 3, 5)

//        函数类型作为返回类型
//        你可以用函数类型作为另一个函数的返回类型。你需要做的是在返回箭头（->）后写一个完整的函数类型。
        func stepForward(_ input: inout Int) -> Int {
            return input + 1
        }
        
        func stepBackward(_ input: inout Int) -> Int {
            return input - 1
        }
        
        func chooseStepFunction(backward: Bool) -> (inout Int) -> Int {
            return backward ? stepBackward : stepForward
        }
        
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
        
        print("Counting to zero:")
        // Counting to zero:
        while currentValue != 0 {
            print("\(currentValue)... ")
            currentValue = moveNearerToZero(&currentValue)
        }
        print("0!")
        
//        嵌套函数
//        到目前为止本章中你所见到的所有函数都叫全局函数（global functions），它们定义在全局域中。你也可以把函数定义在别的函数体中，称作 嵌套函数（nested functions）。
        
        func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
            func stepForward(input: Int) -> Int { return input + 1 }
            func stepBackward(input: Int) -> Int { return input - 1 }
            return backward ? stepBackward : stepForward
        }
        var currentValue2 = -4
        let moveNearerToZero2 = chooseStepFunction2(backward: currentValue2 > 0)
        // moveNearerToZero now refers to the nested stepForward() function
        while currentValue2 != 0 {
            print("\(currentValue2)... ")
            currentValue2 = moveNearerToZero2(currentValue2)
        }
        print("zero!")
        // -4...
        // -3...
        // -2...
        // -1...
        // zero!
        
    }
}
