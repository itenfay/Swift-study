//
//  SwiftBasics.swift
//
//  Created by Dyfei on 2016/11/28.
//  Copyright © 2016年 dyf. All rights reserved.
//

import Foundation
import UIKit

//Swift 是一门开发 iOS, macOS, watchOS 和 tvOS 应用的新语言。

//Swift 包含了 C 和 Objective-C 上所有基础数据类型，Int表示整型值； Double 和 Float 表示浮点型值； Bool 是布尔型值；String 是文本型数据。 Swift 还提供了三个基本的集合类型，Array ，Set 和 Dictionary ，详见集合类型。

//Swift 还增加了 Objective-C 中没有的高阶数据类型比如元组（Tuple）。元组可以让你创建或者传递一组数据，比如作为函数的返回值时，你可以用一个元组可以返回多个值。

//Swift 还增加了可选（Optional）类型，用于处理值缺失的情况。可选有点像在 Objective-C 中使用 nil ，但是它可以用在任何类型上，不仅仅是类。可选类型比 Objective-C 中的 nil 指针更加安全也更具表现力，它是 Swift 许多强大特性的重要组成部分。

//Swift 是一门类型安全的语言，这意味着 Swift 可以让你清楚地知道值的类型。如果你的代码期望得到一个 String ，类型安全会阻止你不小心传入一个 Int 。同样的，如果你的代码期望得到一个 String，类型安全会阻止你意外传入一个可选的 String 。类型安全可以帮助你在开发阶段尽早发现并修正错误。

public class SwiftBasics {
//	常量和变量
//	常量和变量把一个名字（比如 maximumNumberOfLoginAttempts 或者 welcomeMessage ）和一个指定类型的值（比如数字 10 或者字符串 "Hello" ）关联起来。常量的值一旦设定就不能改变，而变量的值可以随意更改。
//	声明常量和变量
//	常量和变量必须在使用前声明，用 let 来声明常量，用 var 来声明变量
	let maximumNumberOfLoginAttempts = 10
	var currentLoginAttempt = 0
	
//	在一行中声明多个常量或者多个变量，用逗号隔开：
//	var x = 0.0, y = 0.0, z = 0.0
//	注意：如果你的代码中有不需要改变的值，请使用 let 关键字将它声明为常量。只将需要改变的值声明为变量。

//	类型标注
//	当你声明常量或者变量的时候可以加上类型标注（type annotation），说明常量或者变量中要存储的值的类型。如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称。
//	这个例子给 welcomeMessage 变量添加了类型标注，表示这个变量可以存储 String 类型的值：
	var welcomeMessage: String?
//	声明中的冒号代表着“是...类型”，所以这行代码可以被理解为：
//	“声明一个类型为 String ，名字为 welcomeMessage 的变量。”
//	“类型为 String ”的意思是“可以存储任意 String 类型的值。”
//	welcomeMessage 变量现在可以被设置成任意字符串：
//	你可以在一行中定义多个同样类型的变量，用逗号分割，并在最后一个变量名之后添加类型标注：
//	var red, green, blue: Double
//	注意：
//	一般来说你很少需要写类型标注。如果你在声明常量或者变量的时候赋了一个初始值，Swift可以推断出这个常量或者变量的类型，请参考类型安全和类型推断。
	
//	类型安全和类型推断
//	Swift 是一个类型安全（type safe）的语言。类型安全的语言可以让你清楚地知道代码要处理的值的类型。如果你的代码需要一个String，你绝对不可能不小心传进去一个Int。
//	Swift类型安全: 在编译你的代码时进行类型检查（type checks），并把不匹配的类型标记为错误。这可以让你在开发的时候尽早发现并修复错误。
//	Swift类型推断: 和 C 或者 Objective-C 比起来 Swift 很少需要声明类型。常量和变量虽然需要明确类型，但是大部分工作并不需要你自己来完成。
//	当你在声明常量或者变量的时候赋给它们一个字面量（literal value 或 literal）即可触发类型推断。
	
//	常量和变量的命名
//	你可以用任何你喜欢的字符作为常量和变量名，包括 Unicode 字符：
	let π = 3.14159
	let 你好 = "你好世界"
	let 🐶🐮 = "dogcow"
//	常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。
//	一旦你将常量或者变量声明为确定的类型，你就不能使用相同的名字再次进行声明，或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转。

//	注意：
//	如果你需要使用与Swift保留关键字相同的名称作为常量或者变量名，你可以使用反引号（`）将关键字包围的方式将其作为名字使用。无论如何，你应当避免使用关键字作为常量或变量名，除非你别无选择。
	let `switch`: UISwitch?
	
//	更改现有的变量值为其他同类型的值，与变量不同，常量的值一旦被确定就不能更改了。
	var friendlyWelcome = "Hello!"
	let languageName = "Swift"
	
//	注释
//	请将你的代码中的非执行文本注释成提示或者笔记以方便你将来阅读。Swift 的编译器将会在编译代码时自动忽略掉注释部分。
//	Swift 中的注释与 C 语言的注释非常相似。单行注释以双正斜杠（//）作为起始标记:
	// 这是一个注释
//	你也可以进行多行注释，其起始标记为单个正斜杠后跟随一个星号（/*），终止标记为一个星号后跟随单个正斜杠（*/）:
	/* 这是一个,
	多行注释 */
//	与 C 语言多行注释不同，Swift 的多行注释可以嵌套在其它的多行注释之中。你可以先生成一个多行注释块，然后在这个注释块之中再嵌套成第二个多行注释。终止注释时先插入第二个注释块的终止标记，然后再插入第一个注释块的终止标记：
	/* 这是第一个多行注释的开头
	/* 这是第二个被嵌套的多行注释 */
	这是第一个多行注释的结尾 */
//	通过运用嵌套多行注释，你可以快速方便的注释掉一大段代码，即使这段代码之中已经含有了多行注释块。
	
	init() {
		`switch` = UISwitch.init()
	}
	
	public func execute() {
		welcomeMessage = "Hello"
		friendlyWelcome = "Bonjour!"
//		languageName = "Swift++"
//		输出常量和变量
//		你可以用print(_:separator:terminator:)函数来输出当前常量或变量的值:
//		print(_:separator:terminator:) 是一个用来输出一个或多个值到适当输出区的全局函数。如果你用 Xcode，print(_:separator:terminator:) 将会输出内容到“console”面板上。separator 和 terminator 参数具有默认值，因此你调用这个函数的时候可以忽略它们。默认情况下，该函数通过添加换行符来结束当前行。
		print(friendlyWelcome)
//		Swift 用字符串插值（string interpolation）的方式把常量名或者变量名当做占位符加入到长字符串中，Swift 会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义：
		print("【常量和变量】: The current value of friendlyWelcome is \(friendlyWelcome)")

//		分号
//		与其他大部分编程语言不同，Swift 并不强制要求你在每条语句的结尾处使用分号（;），当然，你也可以按照你自己的习惯添加分号。有一种情况下必须要用分号，即你打算在同一行内写多条独立的语句：
		let cat = "🐱"; print(cat)
		// 输出 "🐱"
		
//		整数
//		整数就是没有小数部分的数字，比如 42 和 -23 。整数可以是 有符号（正、负、零）或者 无符号（正、零）。
//		Swift 提供了8，16，32和64位的有符号和无符号整数类型。
//		整数范围
//		你可以访问不同整数类型的 min 和 max 属性来获取对应类型的最小值和最大值：
		let minValue = UInt8.min
		let maxValue = UInt8.max
		print("【整数】: minValue: \(minValue), maxValue: \(maxValue)")
		
//		Int
//		一般来说，你不需要专门指定整数的长度。Swift 提供了一个特殊的整数类型Int，长度与当前平台的原生字长相同：
//		在32位平台上，Int 和 Int32 长度相同。
//		在64位平台上，Int 和 Int64 长度相同。
//		除非你需要特定长度的整数，一般来说使用 Int 就够了。这可以提高代码一致性和可复用性。即使是在32位平台上，Int 可以存储的整数范围也可以达到 -2,147,483,648 ~ 2,147,483,647 ，大多数时候这已经足够大了。
		
//		UInt
//		Swift 也提供了一个特殊的无符号类型 UInt，长度与当前平台的原生字长相同：
//		在32位平台上，UInt 和 UInt32 长度相同。
//		在64位平台上，UInt 和 UInt64 长度相同。
//		注意：
//		尽量不要使用UInt，除非你真的需要存储一个和当前平台原生字长相同的无符号整数。除了这种情况，最好使用Int，即使你要存储的值已知是非负的。统一使用Int可以提高代码的可复用性，避免不同类型数字之间的转换，并且匹配数字的类型推断，请参考类型安全和类型推断。
		
//		浮点数
//		浮点数是有小数部分的数字，比如 3.14159 ，0.1 和 -273.15。
//		浮点类型比整数类型表示的范围更大，可以存储比 Int 类型更大或者更小的数字。Swift 提供了两种有符号浮点数类型：
//		Double表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
//		Float表示32位浮点数。精度要求不高的话可以使用此类型。
//		注意：
//		Double精确度很高，至少有15位数字，而Float只有6位数字。选择哪个类型取决于你的代码需要处理的值的范围，在两种类型都匹配的情况下，将优先选择 Double。
		let pi = 3.14159
		// pi 会被推测为 Double 类型
//		当推断浮点数的类型时，Swift 总是会选择 Double 而不是Float。
		let anotherPi = 3 + 0.14159
		// anotherPi 会被推测为 Double 类型
		print("【浮点数】: pi: \(pi), anotherPi: \(anotherPi)")
		
//		数值型字面量
//		整数字面量可以被写作：
//		一个十进制数，没有前缀
//		一个二进制数，前缀是0b
//		一个八进制数，前缀是0o
//		一个十六进制数，前缀是0x
//		下面所有整数字面量的十进制值都是17:
		let decimalInteger = 17
		let binaryInteger = 0b10001       // 二进制的17
		let octalInteger = 0o21           // 八进制的17
		let hexadecimalInteger = 0x11     // 十六进制的17
		print("【数值型字面量】: decimalInteger: \(decimalInteger)")
		print("【数值型字面量】: binaryInteger: \(binaryInteger)")
		print("【数值型字面量】: octalInteger: \(octalInteger)")
		print("【数值型字面量】: hexadecimalInteger: \(hexadecimalInteger)")

//		浮点字面量可以是十进制（没有前缀）或者是十六进制（前缀是 0x ）。小数点两边必须有至少一个十进制数字（或者是十六进制的数字）。十进制浮点数也可以有一个可选的指数（exponent)，通过大写或者小写的 e 来指定；十六进制浮点数必须有一个指数，通过大写或者小写的 p 来指定。
//		如果一个十进制数的指数为 exp，那这个数相当于基数和10^exp的乘积：
//		1.25e2 表示 1.25 × 10^2，等于 125.0。
//		1.25e-2 表示 1.25 × 10^-2，等于 0.0125。
//		如果一个十六进制数的指数为exp，那这个数相当于基数和2^exp的乘积：
//		0xFp2 表示 15 × 2^2，等于 60.0。
//		0xFp-2 表示 15 × 2^-2，等于 3.75。
//		下面的这些浮点字面量都等于十进制的12.1875：
		
		let decimalDouble = 12.1875
		let exponentDouble = 1.21875e1
		let hexadecimalDouble = 0xC.3p0
		print("【浮点字面量】: decimalDouble: \(decimalDouble)")
		print("【浮点字面量】: exponentDouble: \(exponentDouble)")
		print("【浮点字面量】: hexadecimalDouble: \(hexadecimalDouble)")

//		数值类字面量可以包括额外的格式来增强可读性。整数和浮点数都可以添加额外的零并且包含下划线，并不会影响字面量：
		let paddedDouble = 0000123.456
		let oneMillion = 1_000_000
		let justOverOneMillion = 1_000_000.000_000_1
		print("【数值类字面量额外的格式】: paddedDouble: \(paddedDouble)")
		print("【数值类字面量额外的格式】: oneMillion: \(oneMillion)")
		print("【数值类字面量额外的格式】: justOverOneMillion: \(justOverOneMillion)")
		
//		数值型类型转换
//		整数转换
//		let cannotBeNegative: UInt8 = -1
		// UInt8 类型不能存储负数，所以会报错
//		let tooBig: Int8 = Int8.max + 1
		// Int8 类型不能存储超过最大值的数，所以会报错
		
		let twoThousand: UInt16 = 2_000
		let one: UInt8 = 1
		let twoThousandAndOne = twoThousand + UInt16(one)
//		现在两个数字的类型都是 UInt16，可以进行相加。目标常量 twoThousandAndOne 的类型被推断为 UInt16，因为它是两个 UInt16 值的和。
		
		let twoThousand2: UInt16 = 2_000
		let one2: UInt8 = 1
		let twoThousandAndOne2 = twoThousand2 + UInt16(one2)
//		现在两个数字的类型都是 UInt16，可以进行相加。目标常量 twoThousandAndOne 的类型被推断为 UInt16，因为它是两个 UInt16 值的和。
	
		print("【数值类字面量额外的格式】: twoThousandAndOne: \(twoThousandAndOne)")
		print("【数值类字面量额外的格式】: twoThousandAndOne2: \(twoThousandAndOne2)")
		
//		浮点数到整数的反向转换同样行，整数类型可以用 Double 或者 Float 类型来初始化：
		let integerPi = Int(pi)
		// integerPi 等于 3，所以被推测为 Int 类型
		print("【浮点数到整数】: integerPi: \(integerPi)")

//		类型别名
//		类型别名（type aliases）就是给现有类型定义另一个名字。你可以使用typealias关键字来定义类型别名。
//		当你想要给现有类型起一个更有意义的名字时，类型别名非常有用。假设你正在处理特定长度的外部资源的数据：
		typealias AudioSample = UInt16
//		定义了一个类型别名之后，你可以在任何使用原始名的地方使用别名：
		let maxAmplitudeFound = AudioSample.max
		// maxAmplitudeFound 现在是 0
		print("【类型别名】: maxAmplitudeFound: \(maxAmplitudeFound)")
		
//		布尔值
//		Swift 有一个基本的布尔（Boolean）类型，叫做Bool。布尔值指逻辑上的值，因为它们只能是真或者假。
//		Swift 有两个布尔常量，true 和 false：
		let orangesAreOrange = true
		let turnipsAreDelicious = false
		print("【布尔值】: orangesAreOrange: \(orangesAreOrange)")
		print("【布尔值】: turnipsAreDelicious: \(turnipsAreDelicious)")
		
//		当你编写条件语句比如 if 语句的时候，布尔值非常有用：
		if turnipsAreDelicious {
			print("【布尔值】: Mmm, tasty turnips!")
		} else {
			print("【布尔值】: Eww, turnips are horrible.")
		}
		// 输出 "Eww, turnips are horrible."
		
//		元组
//		元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。
		
//		(404, "Not Found") 是一个描述 HTTP 状态码（HTTP status code）的元组。HTTP 状态码是当你请求网页的时候 web 服务器返回的一个特殊值。如果你请求的网页不存在就会返回一个 404 Not Found 状态码。
		let http404Error = (404, "Not Found")
		// http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
		
//		一个元组的内容可分解（decompose）成单独的常量和变量，然后你就可以正常使用它们了：
		let (statusCode, statusMessage) = http404Error
		print("【元组分解】: The status code is \(statusCode)")
		// 输出 "【元组分解】: The status code is 404"
		print("【元组分解】: The status message is \(statusMessage)")
		// 输出 "【元组分解】: The status message is Not Found"
		
//		如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线（_）标记：
		let (justTheStatusCode, _) = http404Error
		print("【取元组部分值】: The status code is \(justTheStatusCode)")
		// 输出 "【取元组部分值】: The status code is 404"
		
//		通过下标来访问元组中的单个元素，下标从零开始：
		print("【下标访问】: The status code is \(http404Error.0)")
		// 输出 "【下标访问】The status code is 404"
		print("【下标访问】: The status message is \(http404Error.1)")
		// 输出 "【下标访问】The status message is Not Found"

//		可选类型
//		使用可选类型（optionals）来处理值可能缺失的情况。可选类型表示：
//		有值，等于 x 或者 没有值
//		注意：
//		C 和 Objective-C 中并没有可选类型这个概念。最接近的是 Objective-C 中的一个特性，一个方法要不返回一个对象要不返回nil，nil表示“缺少一个合法的对象”。然而，这只对对象起作用——对于结构体，基本的 C 类型或者枚举类型不起作用。对于这些类型，Objective-C 方法一般会返回一个特殊值（比如NSNotFound）来暗示值缺失。这种方法假设方法的调用者知道并记得对特殊值进行判断。然而，Swift 的可选类型可以让你暗示任意类型的值缺失，并不需要一个特殊值。

//		使用这种构造器来尝试将一个 String 转换成 Int：
		let possibleNumber = "123"
		print("【可选类型】: possibleNumber is \(possibleNumber)")
		let convertedNumber = Int(possibleNumber)
		print("【可选类型】: convertedNumber is \(convertedNumber)")
		
//		变可选量赋值为nil来表示它没有值：
		var serverResponseCode: Int? = 404
		print("【可选类型】: serverResponseCode is \(serverResponseCode)")
		serverResponseCode = nil
		print("【可选类型】: serverResponseCode2 is \(serverResponseCode)")
		
//		如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil：
//		注意：
//		Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，nil 是一个指向不存在对象的指针。在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为 nil，不只是对象类型。
		var surveyAnswer: String?
		// surveyAnswer 被自动设置为 nil
		print("【可选类型】: surveyAnswer is \(surveyAnswer)")

//		if 语句以及强制解析		
//		你可以使用 if 语句和 nil 比较来判断一个可选值是否包含值。你可以使用“相等”(==)或“不等”(!=)来执行比较。
		if convertedNumber != nil {
			print(" [if 语句]: convertedNumber contains some integer value.")
		}

//		强制解析表示获取可选类型的值，在可选类型的名字后面加一个感叹号（!）来获取值。
		if convertedNumber != nil {
			print(" [强制解析]: convertedNumber is \(convertedNumber!)")
		}
		
//		可选绑定
//		可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在 if 和 while 语句中，这条语句不仅可以用来判断可选类型中是否有值，同时可以将可选类型中的值赋给一个常量或者变量。
//		if let constantName = someOptional {
//			statements
//		}
		if let actualNumber = Int(possibleNumber) {
			print(" [可选绑定]: \'\(possibleNumber)\' has an integer value of \(actualNumber)")
		} else {
			print(" [可选绑定]: \'\(possibleNumber)\' could not be converted to an integer")
		}
		
//		包含多个可选绑定或多个布尔条件在一个 if 语句中，只要使用逗号分开就行。只要有任意一个可选绑定的值为nil，或者任意一个布尔条件为false，则整个if条件判断为false。
//		注意： 在 if 条件语句中使用常量和变量来创建一个可选绑定，仅在 if 语句的句中(body)中才能获取到值。相反，在 guard 语句中使用常量和变量来创建一个可选绑定，仅在 guard 语句外且在语句后才能获取到值.

		if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
			print(" [多个可选绑定]: \(firstNumber) < \(secondNumber) < 100")
		}
		
		if let firstNumber = Int("4") {
			if let secondNumber = Int("42") {
				if firstNumber < secondNumber && secondNumber < 100 {
					print(" [多个可选绑定]: \(firstNumber) < \(secondNumber) < 100")
				}
			}
		}
		
//		有时候在程序架构中，第一次被赋值之后，可以确定一个可选类型_总会_有值。在这种情况下，每次都要判断和解析可选值是非常低效的，因为可以确定它总会有值。这种类型的可选状态被定义为隐式解析可选类型（implicitly unwrapped optionals）。把想要用作可选的类型的后面的问号（String?）改成感叹号（String!）来声明一个隐式解析可选类型。
//		当可选类型被第一次赋值之后就可以确定之后一直有值的时候，隐式解析可选类型非常有用。隐式解析可选类型主要被用在 Swift 中类的构造过程中。
//		一个隐式解析可选类型其实就是一个普通的可选类型，但是可以被当做非可选类型来使用，并不需要每次都使用解析来获取可选值。
		let possibleString: String? = "An optional string."
		let forcedString: String = possibleString!
		
		let assumedString: String! = "An implicitly unwrapped optional string."
		let implicitString: String = assumedString
		print(" [隐式解析可选类型]: forcedString is \(forcedString), implicitString is \(implicitString)")
		
//		注意：
//		如果你在隐式解析可选类型没有值的时候尝试取值，会触发运行时错误。和你在没有值的普通可选类型后面加一个惊叹号一样。

//		你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值：
		if assumedString != nil {
			print(" [隐式解析可选类型当做普通可选类型来]: assumedString is \(assumedString)")
		}

//		你也可以在可选绑定中使用隐式解析可选类型来检查并解析它的值：
		if let definiteString = assumedString {
			print(" [隐式解析可选类型当做普通可选类型来]: definiteString is \(definiteString)")
		}
		
//		错误处理
//		错误处理（error handling）来应对程序执行中可能会遇到的错误条件。
		
//		一个函数可以通过在声明中添加throws关键词来抛出错误消息。
		func canThrowAnError() throws {
			// 这个函数有可能抛出错误
			print(" 【错误处理】: canThrowAnError() 有可能抛出错误")
		}
		
//		当你的函数能抛出错误消息时, 你应该在表达式中前置try关键词。
		do {
			try canThrowAnError()
		} catch {
			print(" 【错误处理】: 有一个错误消息抛出")
		}
		
//		一个do语句创建了一个新的包含作用域, 使得错误能被传播到一个或多个catch从句。
		func makeASandwich() throws {
			print(" 【错误处理】: makeASandwich() 有可能抛出错误")
		}
		
		enum SandwichError: Error {
			case outOfCleanDishes
			case missingIngredients(Int)
		}

		func eatSandwich() {
			print(" 【错误处理】: eatSandwich()")
		}
		
		func washDishes() {
			print(" 【错误处理】: washDishes()")
		}
		
		func buyGroceries(_ id: Int) {
			print(" 【错误处理】: buyGroceries(), ingredients is \(id)")
		}
		
		do {
			try makeASandwich()
			eatSandwich()
		} catch SandwichError.outOfCleanDishes {
			washDishes()
		} catch SandwichError.missingIngredients(let ingredients) {
			buyGroceries(ingredients)
		} catch {
			
		}
		
//		断言
//		可选类型可以让你判断值是否存在，你可以在代码中优雅地处理值缺失的情况。然而，在某些情况下，如果值缺失或者值并不满足特定的条件，你的代码可能没办法继续执行。这时，你可以在你的代码中触发一个 断言（assertion） 来结束代码运行并通过调试来找到值缺失的原因。
		
//		使用断言进行调试
//		断言会在运行时判断一个逻辑条件是否为true。如果条件判断为true，代码运行会继续进行；如果条件判断为false，代码执行结束，你的应用被终止。
//		使用全局 assert(_:_:file:line:) 函数来写一个断言。
		let age = 3
		assert(age >= 0, "A person's age cannot be less than zero")
		
//		如果不需要断言信息，可以省略，就像这样：
		assert(age >= 0)
        
//        强制执行先决条件
        
//        当一个条件可能为false（假），但是继续执行代码要求条件必须为true（真）的时候，需要使用先决条件。例如使用先决条件来检查是否下标越界，或者来检查是否将一个正确的参数传给函数。
        
//        你可以使用全局 precondition(_:_:file:line:) 函数来写一个先决条件。向这个函数传入一个结果为 true 或者 false 的表达式以及一条信息，当表达式的结果为 false 的时候这条信息会被显示：
        
        // 在一个下标的实现里...
        let index: Int = 2
        precondition(index > 0, "Index must be greater than zero.")
        
//        注意：
//        如果你使用unchecked模式（-Ounchecked）编译代码，先决条件将不会进行检查。编译器假设所有的先决条件总是为true（真），他将优化你的代码。然而，fatalError(_:file:line:)函数总是中断执行，无论你怎么进行优化设定。
//        你能使用 fatalError(_:file:line:)函数在设计原型和早期开发阶段，这个阶段只有方法的声明，但是没有具体实现，你可以在方法体中写上fatalError("Unimplemented")作为具体实现。因为fatalError不会像断言和先决条件那样被优化掉，所以你可以确保当代码执行到一个没有被实现的方法时，程序会被中断。
	}
}
