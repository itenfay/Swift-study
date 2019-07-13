//
//  BasicOperators.swift
//  Basic Operators
//
//  Created by dyf on 2017/1/18.
//  Copyright © 2017 dyf. All rights reserved.
//

import UIKit
import Foundation

public class BasicOperators {

	public func execute() {
//		运算符是检查、改变、合并值的特殊符号或短语。例如，加号（+）将两个数相加（如 let i = 1 + 2）。
		
//		术语
//		运算符分为一元、二元和三元运算符:
//		一元运算符对单一操作对象操作（如 -a）。一元运算符分前置运算符和后置运算符，前置运算符需紧跟在操作对象之前（如 !b），后置运算符需紧跟在操作对象之后（如 c!）。
//		二元运算符操作两个操作对象（如 2 + 3），是中置的，因为它们出现在两个操作对象之间。
//		三元运算符操作三个操作对象，和 C 语言一样，Swift 只有一个三元运算符，就是三目运算符（a ? b : c）。
//		受运算符影响的值叫操作数，在表达式 1 + 2 中，加号 + 是二元运算符，它的两个操作数是值 1 和 2。
		
//		赋值运算符
//		赋值运算符（a = b），表示用 b 的值来初始化或更新 a 的值：
		let b = 10
		var a = 5
		print(" 【赋值运算符】before: a is \(a)")
		a = b
		print(" 【赋值运算符】after: a is \(a)")
		
//		如果赋值的右边是一个多元组，它的元素可以马上被分解成多个常量或变量：
		let (x, y) = (1, 2)
		print(" 【赋值运算符】元组: （x, y）is (\(x), \(y))")

//		与 C 语言和 Objective-C 不同，Swift 的赋值操作并不返回任何值。所以以下代码是错误的：
//		if x = y {
//			// 此句错误, 因为 x = y 并不返回任何值
//		}

//		算术运算符
//		Swift 中所有数值类型都支持了基本的四则算术运算符：
//		加法（+）
//		减法（-）
//		乘法（*）
//		除法（/）
//		与 C 语言和 Objective-C 不同的是，Swift 默认情况下不允许在数值运算中出现溢出情况。但是你可以使用 Swift 的溢出运算符来实现溢出运算（如 a &+ b）
		a = 5
		var c = a + b
		print(" 【算术运算符】+: \(c)")
		c = a - b
		print(" 【算术运算符】-: \(c)")
		c = a * b
		print(" 【算术运算符】*: \(c)")
		c = a / b
		print(" 【算术运算符】/: \(c)")

//		求余运算符
//		求余运算符（a % b）是计算 b 的多少倍刚刚好可以容入a，返回多出来的那部分（余数）。
//		注意：
//		求余运算符（%）在其他语言也叫取模运算符。然而严格说来，我们看该运算符对负数的操作结果，「求余」比「取模」更合适些。
		c = a % b
		print(" 【算术运算符】%: \(c)")

//		一元负号运算符
//		数值的正负号可以使用前缀 -（即一元负号符）来切换。一元负号符（-）写在操作数之前，中间没有空格。
		let three = 3
		let minusThree = -three
		let plusThree = -minusThree
		
//		一元正号运算符
//		一元正号符（+）不做任何改变地返回操作数的值。一元正号符（+）写在操作数之前，中间没有空格。
		let alsoMinusThree = +minusThree
		print(" 【一元负号运算符】: minusThree is \(minusThree), plusThree is \(plusThree)")
		print(" 【一元正号运算符】: alsoMinusThree is \(alsoMinusThree)")

//		组合赋值运算符
//		如同 C 语言，Swift 也提供把其他运算符和赋值运算（=）组合的组合赋值运算符，组合加运算（+=）是其中一个例子：
//		注意：
//		复合赋值运算没有返回值，let b = a += 2这类代码是错误。这不同于自增和自减运算符。
		var aa = 1
		aa += 2
		print(" 【组合赋值运算符】: aa is \(aa)")
		
//		比较运算符（Comparison Operators）
//		所有标准 C 语言中的比较运算符都可以在 Swift 中使用：
//		等于（a == b）
//		不等于（a != b）
//		大于（a > b）
//		小于（a < b）
//		大于等于（a >= b）
//		小于等于（a <= b）
//		注意： Swift 也提供恒等（===）和不恒等（!==）这两个比较符来判断两个对象是否引用同一个对象实例。
		
//		每个比较运算都返回了一个标识表达式是否成立的布尔值：
//		1 == 1   // true, 因为 1 等于 1
//		2 != 1   // true, 因为 2 不等于 1
//		2 > 1    // true, 因为 2 大于 1
//		1 < 2    // true, 因为 1 小于2
//		1 >= 1   // true, 因为 1 大于等于 1
//		2 <= 1   // false, 因为 2 并不小于等于 1
		var r: Bool = 1 == 1
		print("【比较运算符】==: r is \(r)")
		r = 2 != 1
		print("【比较运算符】!=: r is \(r)")
		r = 2 > 1
		print("【比较运算符】>: r is \(r)")
		r = 1 < 2
		print("【比较运算符】<: r is \(r)")
		r = 1 >= 1
		print("【比较运算符】>=: r is \(r)")
		r = 2 <= 1
		print("【比较运算符】<=: r is \(r)")
		
//		比较运算多用于条件语句，如if条件：
		let name = "world"
		if name == "world" {
			print("【比较运算符】: hello, world")
		} else {
			print("【比较运算符】: I'm sorry \(name), but I don't recognize you")
		}

//		当元组中的值可以比较时，你也可以使用这些运算符来比较它们的大小。
//		比较元组大小会按照从左到右、逐值比较的方式，直到发现有两个值不等时停止。如果所有的值都相等，那么这一对元组我们就称它们是相等的。例如：
		let tuple1 = (1, "apple")
		let tuple2 = (1, "zebra")
		let tuple3 = (4, "dog")
		let tuple4 = tuple3
		if  tuple1 < tuple2 {
			print("【比较运算符】元组: \(tuple1) < \(tuple2)")
		}
		if tuple3 == tuple4 {
			print("【比较运算符】元组: \(tuple3) == \(tuple4)")
		}
		
//		三目运算符（Ternary Conditional Operator）
//		三目运算符的特殊在于它是有三个操作数的运算符，它的形式是 条件 ? 表达式 1 : 表达式 2。它简洁地表达根据 条件成立与否作出二选一的操作。如果 条件 成立，返回 表达式 1 的结果；反之返回 表达式 2 的结果。
//		三目运算符是以下代码的缩写形式：
//		if condition {
//			answer1
//		} else {
//			answer2
//		}

		let contentHeight = 40
		let hasHeader = true
		let rowHeight = contentHeight + (hasHeader ? 50 : 20)
		print("【三目运算符】: rowHeight is \(rowHeight)")
		
//		空合运算符（Nil Coalescing Operator）
//		空合运算符（a ?? b）将对可选类型 a 进行空判断，如果 a 包含一个值就进行解封，否则就返回一个默认值 b。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值的类型保持一致。
//		空合运算符是对以下代码的简短表达方法：
//		a != nil ? a! : b
		let defaultColorName = "red"
		var userDefinedColorName: String?   //默认值为 nil
		userDefinedColorName = "green"
		let colorNameToUse = userDefinedColorName ?? defaultColorName
		print("【空合运算符】: colorNameToUse is \(colorNameToUse)")

//		区间运算符（Range Operators）
//		Swift 提供了两个方便表达一个区间的值的区间运算符。
		
//		闭区间运算符
//		闭区间运算符（a...b）定义一个包含从 a 到 b（包括 a 和 b）的所有值的区间。a 的值不能超过 b。
		for index in 1...5 {
			print("【闭区间运算符】: index is \(index)")
		}
		
//		半开区间运算符
//		半开区间运算符（a..<b）定义一个从 a 到 b 但不包括 b 的区间。 之所以称为半开区间，是因为该区间包含第一个值而不包括最后的值。
		let names = ["Anna", "Alex", "Brian", "Jack"]
		let count = names.count
		for i in 0..<count {
			print("【半开区间运算符】: 第\(i)个人中\(names[i])")
		}
        
//        单侧区间
        
//        闭区间操作符有另一个表达形式，可以表达往一侧无限延伸的区间 —— 例如，一个包含了数组从索引 2 到结尾的所有值的区间。在这些情况下，你可以省略掉区间操作符一侧的值。这种区间叫做单侧区间，因为操作符只有一侧有值。例如：
        
        for name in names[2...] {
            print(name)
        }
        // Brian
        // Jack
        
        for name in names[...2] {
            print(name)
        }
        // Anna
        // Alex
        // Brian
//        半开区间操作符也有单侧表达形式，附带上它的最终值。就像你使用区间去包含一个值，最终值并不会落在区间内。例如：
        
        for name in names[..<2] {
            print(name)
        }
        // Anna
        // Alex
//        单侧区间不止可以在下标里使用，也可以在别的情境下使用。你不能遍历省略了初始值的单侧区间，因为遍历的开端并不明显。你可以遍历一个省略最终值的单侧区间；然而，由于这种区间无限延伸的特性，请保证你在循环里有一个结束循环的分支。你也可以查看一个单侧区间是否包含某个特定的值，就像下面展示的那样。
        
        let range = ...5
        range.contains(7)   // false
        range.contains(4)   // true
        range.contains(-1)  // true
        
//		逻辑运算符（Logical Operators）
//		逻辑运算符的操作对象是逻辑布尔值。Swift 支持基于 C 语言的三个标准逻辑运算。
//		逻辑非（!a）
//		逻辑与（a && b）
//		逻辑或（a || b）
		
//		逻辑非运算符
//		逻辑非运算符（!a）对一个布尔值取反，使得 true 变 false，false 变 true。
//		它是一个前置运算符，需紧跟在操作数之前，且不加空格。读作 非 a ，例子如下：
		let allowedEntry = false
		if !allowedEntry {
			print(" 【逻辑非运算符】: ACCESS DENIED")
		}
		
//		逻辑与运算符
//		逻辑与运算符（a && b）表达了只有 a 和 b 的值都为 true 时，整个表达式的值才会是 true。
		let enteredDoorCode = true
		let passedRetinaScan = false
		if enteredDoorCode && passedRetinaScan {
			print(" 【逻辑与运算符】: Welcome!")
		} else {
			print(" 【逻辑与运算符】: ACCESS DENIED")
		}
		
//		逻辑或运算符
//		逻辑或运算符（a || b）是一个由两个连续的 | 组成的中置运算符。它表示了两个逻辑表达式的其中一个为 true，整个表达式就为 true。
		let hasDoorKey = false
		let knowsOverridePassword = true
		if hasDoorKey || knowsOverridePassword {
			print(" 【逻辑或运算符】: Welcome!")
		} else {
			print(" 【逻辑或运算符】: ACCESS DENIED")
		}
		
//		逻辑运算符组合计算
//		我们可以组合多个逻辑运算符来表达一个复合逻辑：
		if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
			print(" 【逻辑运算符组合计算】: Welcome!")
		} else {
			print(" 【逻辑运算符组合计算】: ACCESS DENIED")
		}

//		使用括号来明确优先级
//		为了一个复杂表达式更容易读懂，在合适的地方使用括号来明确优先级是很有效的，虽然它并非必要的。
		if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
			print(" 【逻辑运算符组合计算】括号来明确优先级: Welcome!")
		} else {
			print(" 【逻辑运算符组合计算】括号来明确优先级: ACCESS DENIED")
		}
	}
}
