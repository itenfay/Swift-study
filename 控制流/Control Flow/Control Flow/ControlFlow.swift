//
//  ControlFlow.swift
//  Control Flow
//
//  Created by dyf on 2017/1/23.
//  Copyright © 2017 dyf. All rights reserved.
//

import UIKit
import Foundation

public class ControlFlow {
	
	public func execute() {
//		Swift提供了多种流程控制结构，包括可以多次执行任务的while循环，基于特定条件选择执行不同代码分支的if、guard和switch语句，还有控制流程跳转到其他代码位置的break和continue语句。
		
//		Swift 还提供了for-in循环，用来更简单地遍历数组（array），字典（dictionary），区间（range），字符串（string）和其他序列类型。
		
//		For-In 循环
//		你可以使用for-in循环来遍历一个集合中的所有元素，例如数字范围、数组中的元素或者字符串中的字符。
		for index in 1...5 {
			print(" 【For-In循环】: \(index) times 5 is \(index * 5)")
		}

//		如果你不需要区间序列内每一项的值，你可以使用下划线（_）替代变量名来忽略这个值：
		let base = 3
		let power = 10
		var answer = 1
		for _ in 1...power {
			answer *= base
		}
		print("【For-In循环】下划线（_）: \(base) to the power of \(power) is \(answer)")

//		使用for-in遍历一个数组所有元素：
		let names = ["Anna", "Alex", "Brian", "Jack"]
		for name in names {
			print(" 【For-In遍历一个数组所有元素】: Hello, \(name)!")
		}
		
//		使用for-in遍历一个字典来访问它的键值对。遍历字典时，字典的每项元素会以(key, value)元组的形式返回，你可以在for-in循环中使用显式的常量名称来解读(key, value)元组。
		let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
		for (animalName, legCount) in numberOfLegs {
			print(" 【For-In遍历一个字典来访问它的键值对】: \(animalName)s have \(legCount) legs")
		}
		
//		While 循环
//		while循环会一直运行一段语句直到条件变成false。这类循环适合使用在第一次迭代前，迭代次数未知的情况下。Swift 提供两种while循环形式：
//		while循环，每次在循环开始时计算条件是否符合；
//		repeat-while循环，每次在循环结束时计算条件是否符合。
		
//		While
//		while循环从计算一个条件开始。如果条件为true，会重复运行一段语句，直到条件变为false。
//		下面是 while 循环的一般格式：
//		while condition {
//			statements
//		}
		
		var finalSquare = 25
		var board = [Int](repeating: 0, count: finalSquare + 1)
		
		board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
		board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

		var square = 0
		var diceRoll = 0
		while square < finalSquare {
			// 掷骰子
			diceRoll += 1
			if diceRoll == 7 { diceRoll = 1 }
			// 根据点数移动
			square += diceRoll
			if square < board.count {
				// 如果玩家还在棋盘上，顺着梯子爬上去或者顺着蛇滑下去
				square += board[square]
			}
		}
		print(" 【叫做蛇和梯子（也叫做滑道和梯子）】: \(square), \(diceRoll): Game over!")
		
//		Repeat-While
//		while循环的另外一种形式是repeat-while，它和while的区别是在判断循环条件之前，先执行一次循环的代码块。然后重复循环直到条件为false。
//		注意：
//		Swift语言的repeat-while循环和其他语言中的do-while循环是类似的。
//		下面是 repeat-while循环的一般格式：
//		repeat {
//			statements
//		} while condition
		
//		repeat {
//			// 顺着梯子爬上去或者顺着蛇滑下去
//			square += board[square]
//			// 掷骰子
//			diceRoll += 1
//			if diceRoll == 7 { diceRoll = 1 }
//			// 根据点数移动
//			square += diceRoll
//		} while square < finalSquare
//		print(" 【叫做蛇和梯子（也叫做滑道和梯子）】: Game over!")
		
//		条件语句
//		Swift 提供两种类型的条件语句：if语句和switch语句。通常，当条件较为简单且可能的情况很少时，使用if语句。
//		而switch语句更适用于条件较复杂、有更多排列组合的时候。
//		并且switch在需要用到模式匹配（pattern-matching）的情况下会更有用。
		
//		If
//		if语句最简单的形式就是只包含一个条件，只有该条件为true时，才执行相关代码：
		var temperatureInFahrenheit = 30
		if temperatureInFahrenheit <= 32 {
			print(" 【If】: It's very cold. Consider wearing a scarf.")
		}
		
//		if语句允许二选一执行，叫做else从句。也就是当条件为false时，执行 else 语句：
		temperatureInFahrenheit = 40
		if temperatureInFahrenheit <= 32 {
			print("【If】: It's very cold. Consider wearing a scarf.")
		} else {
			print("【If】: It's not that cold. Wear a t-shirt.")
		}
		
//		多个if语句链接在一起，来实现更多分支：
		temperatureInFahrenheit = 90
		if temperatureInFahrenheit <= 32 {
			print("【If】: It's very cold. Consider wearing a scarf.")
		} else if temperatureInFahrenheit >= 86 {
			print("【If】: It's really warm. Don't forget to wear sunscreen.")
		} else {
			print("【If】: It's not that cold. Wear a t-shirt.")
		}

//		实际上，当不需要完整判断情况的时候，最后的else语句是可选的：
		temperatureInFahrenheit = 72
		if temperatureInFahrenheit <= 32 {
			print("【If】: It's very cold. Consider wearing a scarf.")
		} else if temperatureInFahrenheit >= 86 {
			print("【If】: It's really warm. Don't forget to wear sunscreen.")
		}

//		Switch
//		switch语句会尝试把某个值与若干个模式（pattern）进行匹配。根据第一个匹配成功的模式，switch语句会执行对应的代码。当有可能的情况较多时，通常用switch语句替换if语句。
//		switch语句最简单的形式就是把某个值与一个或若干个相同类型的值作比较：
//		switch some value to consider {
//			case value 1:
//			respond to value 1
//			case value 2,
//			value 3:
//			respond to value 2 or 3
//			default:
//			otherwise, do something else
//		}
		
//		switch语句必须是完备的。这就是说，每一个可能的值都必须至少有一个 case 分支与之对应。在某些不可能涵盖所有值的情况下，你可以使用默认（default）分支来涵盖其它所有没有对应的值，这个默认分支必须在switch语句的最后面。
//		使用switch语句来匹配一个名为someCharacter的小写字符：
		let someCharacter: Character = "z"
		switch someCharacter {
		case "a":
			print("【Switch】: The first letter of the alphabet")
		case "z":
			print("【Switch】: The last letter of the alphabet")
		default:
			print("【Switch】: Some other character")
		}

//		不存在隐式的贯穿
//		与 C 和 Objective-C 中的switch语句不同，在 Swift 中，当匹配的 case 分支中的代码执行完毕后，程序会终止switch语句，而不会继续执行下一个 case 分支。这也就是说，不需要在 case 分支中显式地使用break语句。这使得switch语句更安全、更易用，也避免了因忘记写break语句而产生的错误。
//		注意： 虽然在Swift中break不是必须的，但你依然可以在 case 分支中的代码执行完毕前使用break跳出，详情请参见Switch 语句中的 break。
		
//		每一个 case 分支都必须包含至少一条语句。像下面这样书写代码是无效的，因为第一个 case 分支是空的：
//		let anotherCharacter: Character = "a"
//		switch anotherCharacter {
//		case "a":  // 无效，这个分支下面没有语句。可以用插入break终止
//		case "A":
//			print("【Switch】: The letter A")
//		default:
//			print("【Switch】: Not the letter A")
//		}
		
//		为了让单个case同时匹配a和A，可以将这个两个值组合成一个复合匹配，并且用逗号分开：
		let anotherCharacter: Character = "a"
		switch anotherCharacter {
		case "a", "A":
			print("The letter A")
		default:
			print("Not the letter A")
		}
		
//      区间匹配
//      case 分支的模式也可以是一个值的区间。
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        var naturalCount: String
        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings).")
        
//      元组
//      我们可以使用元组在同一个switch语句中测试多个值。元组中的元素可以是值，也可以是区间。另外，使用下划线（_）来匹配所有可能的值。
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            print("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        
//        值绑定（Value Bindings）
//        
//        case 分支允许将匹配的值绑定到一个临时的常量或变量，并且在case分支体内使用 —— 这种行为被称为值绑定（value binding），因为匹配的值在case分支体内，与临时的常量或变量绑定。
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            print("on the x-axis with an x value of \(x)")
        case (0, let y):
            print("on the y-axis with a y value of \(y)")
        case let (x, y):
            print("somewhere else at (\(x), \(y))")
        }
        
//      Where
//      case 分支的模式可以使用where语句来判断额外的条件。
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            print("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            print("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            print("(\(x), \(y)) is just some arbitrary point")
        }
        
//      复合匹配
//      当多个条件可以使用同一种方法来处理时，可以将这几种可能放在同一个case后面，并且用逗号隔开。当case后面的任意一种模式匹配的时候，这条分支就会被匹配。并且，如果匹配列表过长，还可以分行书写：
        let someCharacter2: Character = "e"
        switch someCharacter2 {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter2) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter2) is a consonant")
        default:
            print("\(someCharacter2) is not a vowel or a consonant")
        }
        
        let stillAnotherPoint = (9, 0)
        switch stillAnotherPoint {
        case (let distance, 0), (0, let distance):
            print("On an axis, \(distance) from the origin")
        default:
            print("Not on an axis")
        }
       
//        控制转移语句
//        控制转移语句改变你代码的执行顺序，通过它可以实现代码的跳转。Swift 有五种控制转移语句：
//        continue
//        break
//        fallthrough
//        return
//        throw
        
//        Continue
//        continue语句告诉一个循环体立刻停止本次循环，重新开始下次循环。
        let puzzleInput = "great minds think alike"
        var puzzleOutput = ""
        for character in puzzleInput.characters {
            switch character {
            case "a", "e", "i", "o", "u", " ":
                continue
            default:
                puzzleOutput.append(character)
            }
        }
        print(puzzleOutput)
        
//        Break
//        break语句会立刻结束整个控制流的执行。当你想要更早的结束一个switch代码块或者一个循环体时，你都可以使用break语句。
        let numberSymbol: Character = "三"  // 简体中文里的数字 3
        var possibleIntegerValue: Int?
        switch numberSymbol {
        case "1", "١", "一", "๑":
            possibleIntegerValue = 1
        case "2", "٢", "二", "๒":
            possibleIntegerValue = 2
        case "3", "٣", "三", "๓":
            possibleIntegerValue = 3
        case "4", "٤", "四", "๔":
            possibleIntegerValue = 4
        default:
            break
        }
        if let integerValue = possibleIntegerValue {
            print("The integer value of \(numberSymbol) is \(integerValue).")
        } else {
            print("An integer value could not be found for \(numberSymbol).")
        }
        
//        贯穿
//        Swift 中的switch不会从上一个 case 分支落入到下一个 case 分支中。相反，只要第一个匹配到的 case 分支完成了它需要执行的语句，整个switch代码块完成了它的执行。相比之下，C 语言要求你显式地插入break语句到每个 case 分支的末尾来阻止自动落入到下一个 case 分支中。Swift 的这种避免默认落入到下一个分支中的特性意味着它的switch 功能要比 C 语言的更加清晰和可预测，可以避免无意识地执行多个 case 分支从而引发的错误。
//        如果你确实需要 C 风格的贯穿的特性，你可以在每个需要该特性的 case 分支中使用fallthrough关键字。
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        print(description)
        
//        带标签的语句
//        在 Swift 中，你可以在循环体和条件语句中嵌套循环体和条件语句来创造复杂的控制流结构。并且，循环体和条件语句都可以使用break语句来提前结束整个代码块。因此，显式地指明break语句想要终止的是哪个循环体或者条件语句，会很有用。类似地，如果你有许多嵌套的循环体，显式指明continue语句想要影响哪一个循环体也会非常有用。
//        为了实现这个目的，你可以使用标签（statement label）来标记一个循环体或者条件语句，对于一个条件语句，你可以使用break加标签的方式，来结束这个被标记的语句。对于一个循环语句，你可以使用break或者continue加标签，来结束或者继续这条被标记语句的执行。
//        声明一个带标签的语句是通过在该语句的关键词的同一行前面放置一个标签，作为这个语句的前导关键字(introducor keyword)，并且该标签后面跟随一个冒号。下面是一个针对while循环体的标签语法，同样的规则适用于所有的循环体和条件语句。
//        label name: while condition { statements }
       
        finalSquare = 25
        
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
       
        square = 0
        diceRoll = 0
        
        gameLoop: while square != finalSquare {
            diceRoll += 1
            if diceRoll == 7 { diceRoll = 1 }
            switch square + diceRoll {
            case finalSquare:
                // 骰子数刚好使玩家移动到最终的方格里，游戏结束。
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                // 骰子数将会使玩家的移动超出最后的方格，那么这种移动是不合法的，玩家需要重新掷骰子
                continue gameLoop
            default:
                // 合法移动，做正常的处理
                square += diceRoll
                square += board[square]
            }
        }
        print("Game over!")
        
//        提前退出
//        像if语句一样，guard的执行取决于一个表达式的布尔值。我们可以使用guard语句来要求条件必须为真时，以执行guard语句后的代码。不同于if语句，一个guard语句总是有一个else从句，如果条件不为真则执行else从句中的代码。
        
        func greet(_ person: [String: String]) {
            guard let name = person["name"] else {
                return
            }
            print("Hello \(name)")
            guard let location = person["location"] else {
                print("I hope the weather is nice near you.")
                return
            }
            print("I hope the weather is nice in \(location).")
        }
        greet(["name": "John"])
        greet(["name": "Jane", "location": "Cupertino"])
        
//        检测 API 可用性
//        Swift内置支持检查 API 可用性，这可以确保我们不会在当前部署机器上，不小心地使用了不可用的API。
        
//        在它一般的形式中，可用性条件使用了一个平台名字和版本的列表。平台名字可以是iOS，macOS，watchOS和tvOS——请访问声明属性来获取完整列表。除了指定像 iOS 8的主板本号，我们可以指定像iOS 8.3 以及 macOS 10.10.3的子版本号。
//        
//        if #available(platform name version, ..., *) {
//            APIs 可用，语句将执行
//        } else {
//            APIs 不可用，语句将不执行
//        }

//        我们在if或guard语句中使用可用性条件（availability condition)去有条件的执行一段代码，来在运行时判断调用的API是否可用。编译器使用从可用性条件语句中获取的信息去验证，在这个代码块中调用的 API 是否可用。
        
        if #available(iOS 10, macOS 10.12, *) {
            // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
        } else {
            // 使用先前版本的 iOS 和 macOS 的 API
        }
	}
	
}
