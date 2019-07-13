//
//  StringsAndCharacters.swift
//  Strings and Characters
//
//  Created by Dyfei on 2017/1/19.
//  Copyright © 2017年 dyf. All rights reserved.
//

import UIKit
import Foundation

public class StringsAndCharacters {

	public func execute() {
//		字符串是例如"hello, world"，"albatross"这样的有序的Character（字符）类型的值的集合。通过String类型来表示。
//		注意：
//		Swift 的String类型与 Foundation NSString类进行了无缝桥接。Foundation 也可以对String进行扩展，暴露在NSString中定义的方法。 这意味着，如果你在String中调用这些NSString的方法，将不用进行转换。
//		更多关于在 Foundation 和 Cocoa 中使用String的信息请查看 Using Swift with Cocoa and Objective-C (Swift 3.0.1)。
		
//		字符串字面量
//		字符串字面量是由双引号 ("") 包裹着的具有固定顺序的文本字符集。 字符串字面量可以用于为常量和变量提供初始值：
		let someString = "Some string literal value"
		print(" 【字符串字面量】: someString is \(someString)")

//		初始化空字符串
//		要创建一个空字符串作为初始值，可以将空的字符串字面量赋值给变量，也可以初始化一个新的String实例：
		let emptyString = ""
		let anotherEmptyString = String()
		print(" 【初始化空字符串】: emptyString is \(emptyString)")
		print(" 【初始化空字符串】: anotherEmptyString is \(anotherEmptyString)")

//		通过检查其Bool类型的isEmpty属性来判断该字符串是否为空：
		if emptyString.isEmpty {
			print(" 【检查其Bool类型的isEmpty属性】: Nothing to see here")
		}
		
//		字符串可变性
//		通过将一个特定字符串分配给一个变量来对其进行修改，或者分配给一个常量来保证其不会被修改：
		var variableString = "Horse"
		variableString += "abd carriage"
		print(" 【字符串可变性】: variableString is \(variableString)")

//		let constantString = "Highlander"
//		constantString += " and another Highlander"
		// 报告一个编译错误 (compile-time error) - 常量字符串不可以被修改。

//		字符串是值类型
//		Swift 的String类型是值类型。 如果您创建了一个新的字符串，那么当其进行常量、变量赋值操作，或在函数/方法中传递时，会进行值拷贝。
		
//		使用字符
//		通过for-in循环来遍历字符串中的characters属性来获取每一个字符的值：
		for character in "Dog!🐶".characters {
			print(" 【使用字符】: character is \(character)")
		}
		
//		通过标明一个Character类型并用字符字面量进行赋值，可以建立一个独立的字符常量或变量：
		let exclamationMark: Character = "!"
		print(" 【使用字符】: exclamationMark is \(exclamationMark)")

//		字符串可以通过传递一个值类型为Character的数组作为自变量来初始化：
		let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
		let catString = String(catCharacters)
		print(" 【使用字符】: catString is \(catString)")
		
//		连接字符串和字符
//		字符串可以通过加法运算符（+）相加在一起（或称“连接”）创建一个新的字符串：
		let string1 = "hello"
		let string2 = " there"
		var welcome = string1 + string2
		print(" 【加法运算符（+）】: welcome is \(welcome)")
		
//		通过加法赋值运算符 (+=) 将一个字符串添加到一个已经存在字符串变量上：
		var instruction = "look over"
		instruction += string2
		print(" 【法赋值运算符 (+=) 】: instruction is \(instruction)")

//		用append()方法将一个字符附加到一个字符串变量的尾部：
		welcome.append(exclamationMark)
		print(" 【append()方法】: welcome is \(welcome)")

//		字符串插值
//		字符串插值是一种构建新字符串的方式，可以在其中包含常量、变量、字面量和表达式。
//		您插入的字符串字面量的每一项都在以反斜线为前缀的圆括号中：
		let multiplier = 3
		let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
		print(" 【字符串插值】: message is \(message)")
//		注意：
//		插值字符串中写在括号中的表达式不能包含非转义反斜杠 (\)，并且不能包含回车或换行符。不过，插值字符串可以包含其他字面量。
		
//		Unicode
//		Unicode是一个国际标准，用于文本的编码和表示。
//		它可以用标准格式表示来自任意语言几乎所有的字符，并能够对文本文件或网页这样的外部资源中的字符进行读写操作。
//		Swift 的String和Character类型是完全兼容 Unicode 标准的。
		
//		Unicode 标量
//		Swift 的String类型是基于 Unicode 标量 建立的。
//		Unicode 标量是对应字符或者修饰符的唯一的21位数字，例如U+0061表示小写的拉丁字母(LATIN SMALL LETTER A)("a")，U+1F425表示小鸡表情(FRONT-FACING BABY CHICK) ("🐥")。
//		注意： Unicode 码位(code poing) 的范围是U+0000到U+D7FF或者U+E000到U+10FFFF。Unicode 标量不包括 Unicode 代理项(surrogate pair) 码位，其码位范围是U+D800到U+DFFF。
//		注意不是所有的21位 Unicode 标量都代表一个字符，因为有一些标量是留作未来分配的。已经代表一个典型字符的标量都有自己的名字，例如上面例子中的LATIN SMALL LETTER A和FRONT-FACING BABY CHICK。
		
//		字符串字面量的特殊字符
//		字符串字面量可以包含以下特殊字符：
//		转义字符\0(空字符)、\\(反斜线)、\t(水平制表符)、\n(换行符)、\r(回车符)、\"(双引号)、\'(单引号)。
//		Unicode 标量，写成\u{n}(u为小写)，其中n为任意一到八位十六进制数且可用的 Unicode 位码
		let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
		print(" 【字符串字面量的特殊字符】: wiseWords is \(wiseWords)")
		let dollarSign = "\u{24}"	// $, Unicode 标量 U+0024
		let blackHeart = "\u{2665}" // ♥, Unicode 标量 U+2665
		let sparklingHeart = "\u{1F496}" // 💖, Unicode 标量 U+1F496
		print(" 【字符串字面量的特殊字符】: dollarSign is \(dollarSign), blackHeart is \(blackHeart), sparklingHeart is \(sparklingHeart)")

//		可扩展的字形群集
//		每一个 Swift 的Character类型代表一个可扩展的字形群。
//		一个可扩展的字形群是一个或多个可生成人类可读的字符 Unicode 标量的有序排列。
		let eAcute: Character = "\u{E9}" // é
		let combinedEAcute: Character = "\u{65}\u{301}" // e 后面加上  ́
		print(" 【可扩展的字形群集】: eAcute is \(eAcute),  combinedEAcute is \(combinedEAcute)")

//		可扩展的字符群集是一个灵活的方法，用许多复杂的脚本字符表示单一的Character值。
//		例如，来自朝鲜语字母表的韩语音节能表示为组合或分解的有序排列。
		let precomposed: Character = "\u{D55C}"                  // 한
		let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
		print(" 【可扩展的字形群集】: precomposed is \(precomposed),  decomposed is \(decomposed)")

//		地域性指示符号的 Unicode 标量可以组合成一个单一的Character值
		let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
		print(" 【地域性指示符号的 Unicode 标量】: regionalIndicatorForUS is \(regionalIndicatorForUS)")

//		计算字符数量
//		如果想要获得一个字符串中Character值的数量，可以使用字符串的characters属性的count属性：
		let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
		print(" 【计算字符数量】: unusualMenagerie has \(unusualMenagerie.characters.count) characters")

//		访问和修改字符串
//		你可以通过字符串的属性和方法来访问和修改它，当然也可以用下标语法完成。

//		字符串索引
//		每一个String值都有一个关联的索引(index)类型，String.Index，它对应着字符串中的每一个Character的位置。
		
//		使用下标语法来访问 String 特定索引的 Character。
		let greeting = "Guten Tag!"
		print(" 【下标语法来访问 String 特定索引的 Character】startIndex: \(greeting[greeting.startIndex])")
		print(" 【下标语法来访问 String 特定索引的 Character】startIndex: \(greeting[greeting.index(before: greeting.endIndex)])")
		print(" 【下标语法来访问 String 特定索引的 Character】startIndex: \(greeting[greeting.index(after: greeting.startIndex)])")
		print(" 【下标语法来访问 String 特定索引的 Character】startIndex: \(greeting[greeting.index(greeting.startIndex, offsetBy: 7)])")
//		试图获取越界索引对应的 Character，将引发一个运行时错误。
//		greeting[greeting.endIndex] // error
//		greeting.index(after: endIndex) // error

//		使用 characters 属性的 indices 属性会创建一个包含全部索引的范围(Range)，用来在一个字符串中访问单个字符。
		for index in greeting.characters.indices {
			print(" 【使用 characters 属性的 indices 属性】\(index): \(greeting[index])")
		}
		
//		插入和删除
//		调用 insert(_:at:) 方法可以在一个字符串的指定索引插入一个字符，调用 insert(contentsOf:at:) 方法可以在一个字符串的指定索引插入一个段字符串。
		var welcome2 = "hello"
		welcome2.insert("!", at: welcome2.endIndex)
		welcome2.insert(contentsOf: " there".characters, at: welcome2.index(before: welcome2.endIndex))
		print(" 【插入字符】: welcome2 is \(welcome2)")

//		调用 remove(at:) 方法可以在一个字符串的指定索引删除一个字符，调用 removeSubrange(_:) 方法可以在一个字符串的指定索引删除一个子字符串。
		welcome2.remove(at: welcome2.index(before: welcome2.endIndex))
		welcome2.removeSubrange(welcome2.index(welcome2.endIndex, offsetBy: -6)..<welcome2.endIndex)
		print(" 【删除字符】: welcome2 is \(welcome2)")
		
//		比较字符串
//		Swift 提供了三种方式来比较文本值：字符串字符相等、前缀相等和后缀相等。
		
//		字符串/字符相等
//		字符串/字符可以用等于操作符(==)和不等于操作符(!=)，
		let quotation = "We're a lot alike, you and I."
		let sameQuotation = "We're a lot alike, you and I."
		if quotation == sameQuotation {
			print(" 【字符串/字符相等】: These two strings are considered equal")
		}
		
		// "Voulez-vous un café?" 使用 LATIN SMALL LETTER E WITH ACUTE
		let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
		// "Voulez-vous un café?" 使用 LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
		let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
		if eAcuteQuestion == combinedEAcuteQuestion {
			print(" 【字符串/字符相等】: These two strings are considered equal")
		}
		
//		前缀/后缀相等
//		通过调用字符串的hasPrefix(_:)/hasSuffix(_:)方法来检查字符串是否拥有特定前缀/后缀，
//		两个方法均接收一个String类型的参数，并返回一个布尔值
		let romeoAndJuliet = [
			"Act 1 Scene 1: Verona, A public place",
			"Act 1 Scene 2: Capulet's mansion",
			"Act 1 Scene 3: A room in Capulet's mansion",
			"Act 1 Scene 4: A street outside Capulet's mansion",
			"Act 1 Scene 5: The Great Hall in Capulet's mansion",
			"Act 2 Scene 1: Outside Capulet's mansion",
			"Act 2 Scene 2: Capulet's orchard",
			"Act 2 Scene 3: Outside Friar Lawrence's cell",
			"Act 2 Scene 4: A street in Verona",
			"Act 2 Scene 5: Capulet's mansion",
			"Act 2 Scene 6: Friar Lawrence's cell"
		]
		
		var act1SceneCount = 0
		for scene in romeoAndJuliet {
			if scene.hasPrefix("Act 1 ") {
				act1SceneCount += 1
			}
		}
		print("【前缀/hasPrefix(_:)】: There are \(act1SceneCount) scenes in Act 1")

		var mansionCount = 0
		var cellCount = 0
		for scene in romeoAndJuliet {
			if scene.hasSuffix("Capulet's mansion") {
				mansionCount += 1
			} else if scene.hasSuffix("Friar Lawrence's cell") {
				cellCount += 1
			}
		}
		print("【后缀/hasPrefix(_:)】: \(mansionCount) mansion scenes; \(cellCount) cell scenes")
		
//		字符串的 Unicode 表示形式
//		当一个 Unicode 字符串被写进文本文件或者其他储存时，字符串中的 Unicode 标量会用 Unicode 定义的几种编码格式（encoding forms）编码。每一个字符串中的小块编码都被称代码单元（code units）。这些包括 UTF-8 编码格式（编码字符串为8位的代码单元）， UTF-16 编码格式（编码字符串位16位的代码单元），以及 UTF-32 编码格式（编码字符串32位的代码单元）。
		
//		Swift 提供了几种不同的方式来访问字符串的 Unicode 表示形式。 您可以利用for-in来对字符串进行遍历，从而以 Unicode 可扩展的字符群集的方式访问每一个Character值。 该过程在 使用字符 中进行了描述。
		
//		另外，能够以其他三种 Unicode 兼容的方式访问字符串的值：
//		UTF-8 代码单元集合 (利用字符串的utf8属性进行访问)
//		UTF-16 代码单元集合 (利用字符串的utf16属性进行访问)
//		21位的 Unicode 标量值集合，也就是字符串的 UTF-32 编码格式 (利用字符串的unicodeScalars属性进行访问)
		
		let dogString = "Dog‼🐶"
		
//		UTF-8 表示
//		您可以通过遍历String的utf8属性来访问它的UTF-8表示。 其为String.UTF8View类型的属性，UTF8View是无符号8位 (UInt8) 值的集合，每一个UInt8值都是一个字符的 UTF-8 表示：
		for codeUnit in dogString.utf8 {
			print("【UTF-8 表示】: \(codeUnit) ", terminator: "")
		}
		print("")

//		UTF-16 表示
//		您可以通过遍历String的utf16属性来访问它的UTF-16表示。 其为String.UTF16View类型的属性，UTF16View是无符号16位 (UInt16) 值的集合，每一个UInt16都是一个字符的 UTF-16 表示：
		for codeUnit in dogString.utf16 {
			print("【UTF-16 表示】: \(codeUnit) ", terminator: "")
		}
		print("")

//		Unicode 标量表示
//		您可以通过遍历String值的unicodeScalars属性来访问它的 Unicode 标量表示。 其为UnicodeScalarView类型的属性，UnicodeScalarView是UnicodeScalar类型的值的集合。 UnicodeScalar是21位的 Unicode 代码点。
//		每一个UnicodeScalar拥有一个value属性，可以返回对应的21位数值，用UInt32来表示：
		for scalar in dogString.unicodeScalars {
			print("【Unicode 标量表示】: \(scalar.value) ", terminator: "")
		}
		print("")

//		作为查询它们的value属性的一种替代方法，每个UnicodeScalar值也可以用来构建一个新的String值，比如在字符串插值中使用：
		for scalar in dogString.unicodeScalars {
			print("【Unicode 标量表示】: \(scalar) ")
		}

	}
}
