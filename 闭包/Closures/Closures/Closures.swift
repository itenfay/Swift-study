//
//  Closures.swift
//  Closures
//
//  Created by Dyfei on 2017/6/30.
//  Copyright © 2017年 Eastze. All rights reserved.
//

import UIKit

class Closures: NSObject {
    
    var x = 10

    func execute() {
//        闭包是自包含的函数代码块，可以在代码中被传递和使用。Swift 中的闭包与 C 和 Objective-C 中的代码块（blocks）以及其他一些编程语言中的匿名函数比较相似。
//        闭包可以捕获和存储其所在上下文中任意常量和变量的引用。被称为包裹常量和变量。 Swift 会为你管理在捕获过程中涉及到的所有内存操作。
    
//        全局和嵌套函数实际上也是特殊的闭包，闭包采取如下三种形式之一：
//        全局函数是一个有名字但不会捕获任何值的闭包
//        嵌套函数是一个有名字并可以捕获其封闭函数域内值的闭包
//        闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值的匿名闭包
        
//        Swift 的闭包表达式拥有简洁的风格，常见场景中进行语法优化，主要优化如下：
//        利用上下文推断参数和返回值类型
//        隐式返回单表达式闭包，即单表达式闭包可以省略 return 关键字
//        参数名称缩写
//        尾随闭包语法
        
//        闭包表达式
//        嵌套函数是一个在较复杂函数中方便进行命名和定义自包含代码模块的方式。
//        闭包表达式是一种利用简洁语法构建内联闭包的方式。闭包表达式提供了一些语法优化，使得撰写闭包变得简单明了。

//        sorted 方法
//        Swift 标准库提供了名为 sorted(by:) 的方法，它会根据你所提供的用于排序的闭包函数将已知类型数组中的值进行排序。一旦排序完成，sorted(by:) 方法会返回一个与原数组大小相同，包含同类型元素且元素已正确排序的新数组。原数组不会被 sorted(by:) 方法修改。
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"];
        
        func backward(_ s1: String, _ s2: String) -> Bool {
            return s1 > s2
        }
        
        var reversedNames = names.sorted(by: backward)
        
        print("reversedNames: \(reversedNames)")
        
//        闭包表达式语法
//        闭包表达式语法有如下的一般形式：
//        { (parameters) -> returnType in
//                statements
//        }
//        闭包表达式参数 可以是 in-out 参数，但不能设定默认值。也可以使用具名的可变参数（译者注：但是如果可变参数不放在参数列表的最后一位的话，调用闭包的时时编译器将报错。可参考这里）。元组也可以作为参数和返回值。
        
//        闭包的函数体部分由关键字in引入。该关键字表示闭包的参数和返回值类型定义已经完成，闭包函数体即将开始。
//        由于这个闭包的函数体部分如此短，以至于可以将其改写成一行代码：
        let reversedNames2 = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2} )
        print("短写 reversedNames : \(reversedNames2)")

//        根据上下文推断类型
//        因为所有的类型都可以被正确推断，返回箭头（->）和围绕在参数周围的括号也可以被省略：
        let reversedNames3 = names.sorted(by: { s1, s2 in return s1 > s2 } )
        print("根据上下文推断类型 reversedNames: \(reversedNames3)")

//        通过内联闭包表达式构造的闭包作为参数传递给函数或方法时，总是能够推断出闭包的参数和返回值类型。这意味着闭包作为函数或者方法的参数时，你几乎不需要利用完整格式构造内联闭包。
        
//        单表达式闭包隐式返回
//        单行表达式闭包可以通过省略 return 关键字来隐式返回单行表达式的结果
        let reversedNames4 = names.sorted(by: { s1, s2 in s1 > s2 } )
        print("单表达式闭包隐式返回 reversedNames: \(reversedNames4)")

//        参数名称缩写
//        Swift 自动为内联闭包提供了参数名称缩写功能，你可以直接通过 $0，$1，$2 来顺序调用闭包的参数，以此类推。
//        如果你在闭包表达式中使用参数名称缩写，你可以在闭包定义中省略参数列表，并且对应参数名称缩写的类型会通过函数类型进行推断。in关键字也同样可以被省略，因为此时闭包表达式完全由闭包函数体构成：
//        
        let reversedNames5 = names.sorted(by:  { $0 > $1} )
        print("参数名称缩写 reversedNames: \(reversedNames5)")
        
//        运算符方法
//        实际上还有一种更简短的方式来编写上面例子中的闭包表达式。Swift 的 String 类型定义了关于大于号（>）的字符串实现，其作为一个函数接受两个 String 类型的参数并返回 Bool 类型的值。而这正好与 sorted(by:) 方法的参数需要的函数类型相符合。因此，你可以简单地传递一个大于号，Swift 可以自动推断出你想使用大于号的字符串函数实现：
        let reversedNames6 = names.sorted(by: >)
        print("运算符方法 reversedNames: \(reversedNames6)")

//        尾随闭包
//        如果你需要将一个很长的闭包表达式作为最后一个参数传递给函数，可以使用尾随闭包来增强函数的可读性。尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用。在使用尾随闭包时，你不用写出它的参数标签：
        
        func someFunctionThatTakesAClosure(closure: () -> Void) {
            // 函数体部分
        }
        
        // 以下是不使用尾随闭包进行函数调用
        someFunctionThatTakesAClosure(closure: {
            // 闭包主体部分
        })
        
        // 以下是使用尾随闭包进行函数调用
        someFunctionThatTakesAClosure() {
            // 闭包主体部分
        }
        
//        在闭包表达式语法一节中作为 sorted(by:) 方法参数的字符串排序闭包可以改写为：
        reversedNames = names.sorted() { $0 > $1 }
        
//        如果闭包表达式是函数或方法的唯一参数，则当你使用尾随闭包时，你甚至可以把 () 省略掉：
        reversedNames = names.sorted { $0 > $1 }
        
//        介绍了如何在 map(_:) 方法中使用尾随闭包将 Int 类型数组 [16, 58, 510] 转换为包含对应 String 类型的值的数组["OneSix", "FiveEight", "FiveOneZero"]：
        
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        let numbers = [16, 58, 510]
//        如上代码创建了一个整型数位和它们英文版本名字相映射的字典。同时还定义了一个准备转换为字符串数组的整型数组。
//        你现在可以通过传递一个尾随闭包给 numbers 数组的 map(_:) 方法来创建对应的字符串版本数组：
        
        let strings = numbers.map {
            (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
            } while number > 0
            return output
        }
        // strings 常量被推断为字符串类型数组，即 [String]
        // 其值为 ["OneSix", "FiveEight", "FiveOneZero"]
        print("strings: \(strings)")
    
//        值捕获
//        闭包可以在其被定义的上下文中捕获常量或变量。即使定义这些常量和变量的原作用域已经不存在，闭包仍然可以在闭包函数体内引用和修改这些值。
//        Swift中，可以捕获值的闭包的最简单形式是嵌套函数，也就是定义在其他函数的函数体内的函数。嵌套函数可以捕获其外部函数所有的参数以及定义的常量和变量。
        
        func makeIncrementer(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            func incrementer() -> Int {
                runningTotal += amount
                return runningTotal
            }
            return incrementer
        }
        
        let incrementByTen = makeIncrementer(forIncrement: 10)

//        该例子定义了一个叫做 incrementByTen 的常量，该常量指向一个每次调用会将其 runningTotal 变量增加 10 的 incrementer 函数。调用这个函数多次可以得到以下结果：
        
        let yishi = incrementByTen()
        // 返回的值为10
        let ershi = incrementByTen()
        // 返回的值为20
        let sanshi = incrementByTen()
        // 返回的值为30
        print("值捕获: \(yishi) \(ershi) \(sanshi)")
//        如果你创建了另一个 incrementer，它会有属于自己的引用，指向一个全新、独立的 runningTotal 变量：
        
        let incrementBySeven = makeIncrementer(forIncrement: 7)
        let sev = incrementBySeven()
        // 返回的值为7
        print("值捕获: \(sev) ")

//        注意：
//        如果你将闭包赋值给一个类实例的属性，并且该闭包通过访问该实例或其成员而捕获了该实例，你将在闭包和该实例间创建一个循环强引用。Swift 使用捕获列表来打破这种循环强引用
        
//        闭包是引用类型
//        逃逸闭包
//        当一个闭包作为参数传到一个函数中，但是这个闭包在函数返回之后才被执行，我们称该闭包从函数中逃逸。当你定义接受闭包作为参数的函数时，你可以在参数名之前标注 @escaping，用来指明这个闭包是允许“逃逸”出这个函数的。
        
//        一种能使闭包“逃逸”出函数的方法是，将这个闭包保存在一个函数外部定义的变量中。举个例子，很多启动异步操作的函数接受一个闭包参数作为 completion handler。这类函数会在异步操作开始之后立刻返回，但是闭包直到异步操作结束后才会被调用。在这种情况下，闭包需要“逃逸”出函数，因为闭包需要在函数返回之后被调用。例如：
        
        var completionHandlers: [() -> Void] = []
        
        func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
            completionHandlers.append(completionHandler)
        }
        
//        将一个闭包标记为 @escaping 意味着你必须在闭包中显式地引用 self。比如说，在下面的代码中，传递到 someFunctionWithEscapingClosure(_:) 中的闭包是一个逃逸闭包，这意味着它需要显式地引用 self。相对的，传递到 someFunctionWithNonescapingClosure(_:) 中的闭包是一个非逃逸闭包，这意味着它可以隐式引用 self。
        func someFunctionWithNonescapingClosure(closure: () -> Void) {
            closure()
        }
        
        func doSomething() {
            someFunctionWithEscapingClosure { self.x = 100 }
            someFunctionWithNonescapingClosure { x = 200 }
        }
        
        doSomething()
        
        print("x: \(x)")
        
//        自动闭包
//        自动闭包是一种自动创建的闭包，用于包装传递给函数作为参数的表达式。这种闭包不接受任何参数，当它被调用的时候，会返回被包装在其中的表达式的值。这种便利语法让你能够省略闭包的花括号，用一个普通的表达式来代替显式的闭包。
        
//        我们经常会调用采用自动闭包的函数，但是很少去实现这样的函数。举个例子来说，assert(condition:message:file:line:) 函数接受自动闭包作为它的 condition 参数和 message 参数；它的 condition 参数仅会在 debug 模式下被求值，它的 message 参数仅当 condition 参数为 false 时被计算求值。
//        自动闭包让你能够延迟求值，因为直到你调用这个闭包，代码段才会被执行。延迟求值对于那些有副作用（Side Effect）和高计算成本的代码来说是很有益处的，因为它使得你能控制代码的执行时机。
        
        var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        print(customersInLine.count)
        // 打印出 "5"
        
        let customerProvider = { customersInLine.remove(at: 0) }
        print(customersInLine.count)
        // 打印出 "5"
        
        print("Now serving \(customerProvider())!")
        // Prints "Now serving Chris!"
        print(customersInLine.count)
        // 打印出 "4"
        
//        尽管在闭包的代码中，customersInLine 的第一个元素被移除了，不过在闭包被调用之前，这个元素是不会被移除的。如果这个闭包永远不被调用，那么在闭包里面的表达式将永远不会执行，那意味着列表中的元素永远不会被移除。请注意，customerProvider 的类型不是 String，而是 () -> String，一个没有参数且返回值为 String 的函数。
        
//        将闭包作为参数传递给函数时，你能获得同样的延时求值行为。
        
        // customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
        func serve(customer customerProvider: () -> String) {
            print("Now serving \(customerProvider())!")
        }
        serve(customer: { customersInLine.remove(at: 0) } )
        // 打印出 "Now serving Alex!"
        
//        上面的 serve(customer:) 函数接受一个返回顾客名字的显式的闭包。下面这个版本的 serve(customer:) 完成了相同的操作，不过它并没有接受一个显式的闭包，而是通过将参数标记为 @autoclosure 来接收一个自动闭包。现在你可以将该函数当作接受 String 类型参数（而非闭包）的函数来调用。customerProvider 参数将自动转化为一个闭包，因为该参数被标记了 @autoclosure 特性。
        
        // customersInLine is ["Ewa", "Barry", "Daniella"]
        func serve2(customer customerProvider: @autoclosure () -> String) {
            print("Now serving \(customerProvider())!")
        }
        serve2(customer: customersInLine.remove(at: 0))
        // 打印 "Now serving Ewa!"
        
//        如果你想让一个自动闭包可以“逃逸”，则应该同时使用 @autoclosure 和 @escaping 属性。@escaping 属性的讲解见上面的逃逸闭包。
        
        // customersInLine i= ["Barry", "Daniella"]
        var customerProviders: [() -> String] = []
        func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
            customerProviders.append(customerProvider)
        }
        collectCustomerProviders(customersInLine.remove(at: 0))
        collectCustomerProviders(customersInLine.remove(at: 0))
        
        print("Collected \(customerProviders.count) closures.")
        // 打印 "Collected 2 closures."
        for customerProvider in customerProviders {
            print("Now serving \(customerProvider())!")
        }
        // 打印 "Now serving Barry!"
        // 打印 "Now serving Daniella!"
    }

}
