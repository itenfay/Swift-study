//
//  CollectionTypes.swift
//  Collection Types
//
//  Created by Dyfei on 2017/1/20.
//  Copyright © 2017年 dyf. All rights reserved.
//

import UIKit

public class CollectionTypes {
	
	public func excute() {
//		Swift 语言提供Arrays、Sets和Dictionaries三种基本的集合类型用来存储集合数据。
//		数组（Arrays）是有序数据的集。
//		集合（Sets）是无序无重复数据的集。
//		字典（Dictionaries）是无序的键值对的集。
		
//		集合的可变性
//		如果创建一个Arrays、Sets或Dictionaries并且把它分配成一个变量，这个集合将会是可变的。这意味着我们可以在创建之后添加更多或移除已存在的数据项，或者改变集合中的数据项。如果我们把Arrays、Sets或Dictionaries分配成常量，那么它就是不可变的，它的大小和内容都不能被改变。
//		注意：
//		在我们不需要改变集合的时候创建不可变集合是很好的实践。如此 Swift 编译器可以优化我们创建的集合。
		
//		数组(Arrays)
//		
//		创建一个空数组
//		
//		我们可以使用构造语法来创建一个由特定数据类型构成的空数组：
//		数组使用有序列表存储同一类型的多个值。相同的值可以多次出现在一个数组的不同位置中。
		var someInts = [Int]()
		print(" 【数组(Arrays)】: someInts is of type [Int] with \(someInts.count) items.")
		
//		我们可以使用空数组语句创建一个空数组，它的写法很简单：[]（一对空方括号）：
		someInts.append(3)
		print(" 【数组(Arrays)】: someInts is \(someInts).")
		
		someInts = []
		print(" 【数组(Arrays)】: someInts is \(someInts).")

//		创建一个带有默认值的数组
//		Swift 中的Array类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法。
//		我们可以把准备加入新数组的数据项数量（count）和适当类型的初始值（repeating）传入数组构造函数：
		let threeDoubles = Array(repeating: 0.0, count: 3)
		print(" 【默认的数组(Arrays)】: threeDoubles is \(threeDoubles).")
		
//		通过两个数组相加创建一个数组
//		我们可以使用加法操作符（+）来组合两种已存在的相同类型数组。
//		新数组的数据类型会被从两个数组的数据类型中推断出来：
		let anotherThreeDoubles = Array(repeating: 2.5, count: 3)
		let sixDoubles = threeDoubles + anotherThreeDoubles
		print(" 【通过两个数组相加创建一个数组】: sixDoubles is \(sixDoubles).")
		
//		用数组字面量构造数组
//		我们可以使用数组字面量来进行数组构造，这是一种用一个或者多个数值构造数组的简单方法。
//		数组字面量是一系列由逗号分割并由方括号包含的数值：
//		[value 1, value 2, value 3]。
		var shoppingList: [String] = ["Eggs", "Milk"]
		print(" 【用数组字面量构造数组】: shoppingList is \(shoppingList).")
//		由于 Swift 的类型推断机制，当我们用字面量构造只拥有相同类型值数组的时候，我们不必把数组的类型定义清楚。
//		shoppingList的构造也可以这样写：
//		var shoppingList = ["Eggs", "Milk"]

//		访问和修改数组
//		通过数组的方法和属性来访问和修改数组，或者使用下标语法。
//		使用数组的只读属性count来获取数组中的数据项数量：
		print(" 【数组的只读属性count来获取数组中的数据项数量】: The shopping list contains \(shoppingList.count) items.")

//		使用布尔属性isEmpty作为一个缩写形式去检查count属性是否为0：
		if  shoppingList.isEmpty {
			print("【属性isEmpty】: The shopping list is empty.")
		} else {
			print("【属性isEmpty】: The shopping list is not empty.")
		}
		
//		使用append(_:)方法在数组后面添加新的数据项：
		shoppingList.append("flour")
		print("【append(_:)方法】: The shopping list is \(shoppingList).")

//		使用加法赋值运算符（+=）也可以直接在数组后面添加一个或多个拥有相同类型的数据项：
		shoppingList += ["Baking Powder"]
		shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
		print("【加法赋值运算符（+=）】: The shopping list is \(shoppingList).")

//		使用下标语法来获取数组中的数据项，把我们需要的数据项的索引值放在直接放在数组名称的方括号中
		let firstItem = shoppingList[0]
//		注意：
//		第一项在数组中的索引值是0而不是1。 Swift 中的数组索引总是从零开始。
		print("【使用下标语法来获取数组中的数据项】: firstItem is \(firstItem).")

//		用下标来改变某个已有索引值对应的数据值：
		shoppingList[0] = "Six eggs"
		print("【用下标来改变某个已有索引值对应的数据值】: shoppingList[0] is \(shoppingList[0]).")

//		用下标来一次改变一系列数据值，即使新数据和原有数据的数量是不一样的。
//		下面的例子把"Chocolate Spread"，"Cheese"，和"Butter"替换为"Bananas"和 "Apples"：
		shoppingList[4...6] = ["Bananas", "Apples"]
		print("【用下标来一次改变一系列数据值】: shoppingList is \(shoppingList).")

//		注意：
//		不可以用下标访问的形式去在数组尾部添加新项。
		
//		调用数组的insert(_:at:)方法来在某个具体索引值之前添加数据项:
		shoppingList.insert("Maple Syrup", at: 0)
		print("【insert(_:at:)方法添加数据项】: shoppingList is \(shoppingList).")

//		使用remove(at:)方法来移除数组中的某一项。这个方法把数组在特定索引值中存储的数据项移除并且返回这个被移除的数据项（我们不需要的时候就可以无视它）：
		let MapleSyrup = shoppingList.remove(at: 0)
		print("【remove(at:)方法来移除数组中的某一项】: it is \(MapleSyrup).")

//		数据项被移除后数组中的空出项会被自动填补，所以现在索引值为0的数据项的值再次等于"Six eggs"：
		let firstItem2 = shoppingList[0]
		// firstItem 现在等于 "Six eggs"
		print("【数据项被移除后数组中的空出项会被自动填补】: it is \(firstItem2).")
		
//		若只想把数组中的最后一项移除，可以使用removeLast()方法而不是remove(at:)方法来避免我们需要获取数组的count属性。就像后者一样，前者也会返回被移除的数据项：
		let apples = shoppingList.removeLast()
		print("【把数组中的最后一项移除】: it is \(apples).")

//		数组的遍历
//		使用for-in循环来遍历所有数组中的数据项：
		for item in shoppingList {
			print("【for-in循环】: it is \(item).")
		}
		
//		如果我们同时需要每个数据项的值和索引值，可以使用enumerated()方法来进行数组遍历。enumerated()返回一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解成临时常量或者变量来进行遍历：
		for (index, value) in shoppingList.enumerated() {
			print("【for-in循环, enumerated()方法来进行数组遍历】: item\(String(index+1)) is \(value).")
		}
		
//		集合（Sets）
//		集合(Set)用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组。
//		注意：
//		Swift的Set类型被桥接到Foundation中的NSSet类。
		
//		因为Hashable协议符合Equatable协议，所以遵循该协议的类型也必须提供一个"是否相等"运算符(==)的实现。这个Equatable协议要求任何符合==实现的实例间都是一种相等的关系。也就是说，对于a,b,c三个值来说，==的实现必须满足下面三种情况：
//		a == a(自反性)
//		a == b意味着b == a(对称性)
//		a == b && b == c意味着a == c(传递性)
		
//		集合类型语法
//		Swift 中的Set类型被写为Set<Element>，这里的Element表示Set中允许存储的类型，和数组不同的是，集合没有等价的简化形式。
		var letters = Set<Character>()
		print(" 【集合类型语法】: letters is of type Set<Character> with \(letters.count) items.")
//		注意：
//		通过构造器，这里的letters变量的类型被推断为Set<Character>。
		
//		如果上下文提供了类型信息，比如作为函数的参数或者已知类型的变量或常量，我们可以通过一个空的数组字面量创建一个空的Set：
		letters.insert("a")
		print(" 【集合类型语法】: letters is \(letters).")
		letters = []
		print(" 【集合类型语法】: letters is \(letters).")

//		用数组字面量创建集合
//		你可以使用数组字面量来构造集合，并且可以使用简化形式写一个或者多个值作为集合元素。
		var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
//		由于 Swift 的类型推断功能，如果你想使用一个数组字面量构造一个Set并且该数组字面量中的所有元素类型相同，那么你无须写出Set的具体类型。favoriteGenres的构造形式可以采用简化的方式代替：
//		var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
		
//		访问和修改一个集合
//		通过Set的属性和方法来访问和修改一个Set。
//		为了找出一个Set中元素的数量，可以使用其只读属性count：
		print(" 【Set中属性count】: I have \(favoriteGenres.count) favorite music genres.")
		
//		布尔属性isEmpty作为一个缩写形式去检查count属性是否为0：
		if favoriteGenres.isEmpty {
			print(" 【Set中属性isEmpty】: As far as music goes, I'm not picky.")
		} else {
			print(" 【Set中属性isEmpty】: I have particular music preferences.")
		}

//		通过调用Set的insert(_:)方法来添加一个新元素：
		favoriteGenres.insert("Jazz")
		print(" 【Set中insert(_:)方法】: favoriteGenres is \(favoriteGenres).")

//		通过调用Set的remove(_:)方法去删除一个元素，如果该值是该Set的一个元素则删除该元素并且返回被删除的元素值，否则如果该Set不包含该值，则返回nil。
//		另外，Set中的所有元素可以通过它的removeAll()方法删除。
		if let removedGenre = favoriteGenres.remove("Rock") {
			print(" 【Set中remove(_:)方法】: \(removedGenre)? I'm over it.")
		} else {
			print(" 【Set中remove(_:)方法】: I never much cared for that.")
		}
		
//		使用contains(_:)方法去检查Set中是否包含一个特定的值：
		if favoriteGenres.contains("Funk") {
			print(" 【Set中contains(_:)方法】: I get up on the good foot.")
		} else {
			print(" 【Set中contains(_:)方法】: It's too funky in here.")
		}
		
//		遍历一个集合
//		在一个for-in循环中遍历一个Set中的所有值。
		for genre in favoriteGenres {
			print(" 【for-in循环中遍历Set】: \(genre).")
		}
		
//		Swift 的Set类型没有确定的顺序，为了按照特定顺序来遍历一个Set中的值可以使用sorted()方法，它将返回一个有序数组，这个数组的元素排列顺序由操作符'<'对元素进行比较的结果来确定.
		for genre in favoriteGenres.sorted() {
			print(" 【for-in循环中遍历Set, sorted()方法】: \(genre).")
		}
		
//		集合操作
//		你可以高效地完成Set的一些基本操作，比如把两个集合组合到一起，判断两个集合共有元素，或者判断两个集合是否全包含，部分包含或者不相交。
//		基本集合操作
//		使用intersection(_:)方法根据两个集合中都包含的值创建的一个新的集合。
//		使用symmetricDifference(_:)方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
//		使用union(_:)方法根据两个集合的值创建一个新的集合。
//		使用subtracting(_:)方法根据不在该集合中的值创建一个新的集合。
		let oddDigits: Set = [1, 3, 5, 7, 9]
		let evenDigits: Set = [0, 2, 4, 6, 8]
		let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
		print(" 【Set中union(_:)方法】: \(oddDigits.union(evenDigits).sorted()).")
		print(" 【Set中intersection(_:)方法】: \(oddDigits.intersection(evenDigits).sorted()).")
		print(" 【Set中subtracting(_:)方法】: \(oddDigits.subtracting(singleDigitPrimeNumbers).sorted()).")
		print(" 【Set中symmetricDifference(_:)方法】: \(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()).")

//		集合成员关系和相等
//		使用“是否相等”运算符(==)来判断两个集合是否包含全部相同的值。
//		使用isSubset(of:)方法来判断一个集合中的值是否也被包含在另外一个集合中。
//		使用isSuperset(of:)方法来判断一个集合中包含另一个集合中所有的值。
//		使用isStrictSubset(of:)或者isStrictSuperset(of:)方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
//		使用isDisjoint(with:)方法来判断两个集合是否不含有相同的值(是否没有交集)。
		let houseAnimals: Set = ["🐶", "🐱"]
		let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
		let cityAnimals: Set = ["🐦", "🐭"]
		
		print(" 【Set中isSubset(of:)方法】: \(houseAnimals.isSubset(of: farmAnimals)).")
		print(" 【Set中isSuperset(of:)方法】: \(farmAnimals.isSuperset(of: houseAnimals)).")
		print(" 【Set中isDisjoint(with:)方法】: \(farmAnimals.isDisjoint(with: cityAnimals)).")
		
//		字典
//		字典是一种存储多个相同类型的值的容器。每个值（value）都关联唯一的键（key），键作为字典中的这个值数据的标识符。和数组中的数据项不同，字典中的数据项并没有具体顺序。
//		注意：
//		Swift 的Dictionary类型被桥接到Foundation的NSDictionary类。
		
//		字典类型简化语法
//		Swift 的字典使用Dictionary<Key, Value>定义，其中Key是字典中键的数据类型，Value是字典中对应于这些键所存储值的数据类型。
//		注意：
//		一个字典的Key类型必须遵循Hashable协议，就像Set的值类型。
//		我们也可以用[Key: Value]这样简化的形式去创建一个字典类型。虽然这两种形式功能上相同，但是后者是首选。		
		
//		创建一个空字典
//		我们可以像数组一样使用构造语法创建一个拥有确定类型的空字典：
		var nameOfIntegers = [Int: String]()
		
//		如果上下文已经提供了类型信息，我们可以使用空字典字面量来创建一个空字典，记作[:]（中括号中放一个冒号）：
		nameOfIntegers[16] = "sixteen"
//		// namesOfIntegers 现在包含一个键值对
		print(" 【字典构造】: \(nameOfIntegers).")
		nameOfIntegers = [:]
   		// namesOfIntegers 又成为了一个 [Int: String] 类型的空字典
		print(" 【字典构造】: \(nameOfIntegers).")

//		用字典字面量创建字典
//		我们可以使用字典字面量来构造字典，这和我们刚才介绍过的数组字面量拥有相似语法。字典字面量是一种将一个或多个键值对写作Dictionary集合的快捷途径。
//		一个键值对是一个key和一个value的结合体。在字典字面量中，每一个键值对的键和值都由冒号分割。这些键值对构成一个列表，其中这些键值对由方括号包含、由逗号分割：
//		[key 1: value 1, key 2: value 2, key 3: value 3]
		var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//		和数组一样，我们在用字典字面量构造字典时，如果它的键和值都有各自一致的类型，那么就不必写出字典的类型。
//		airports字典也可以用这种简短方式定义：
//		var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
		print(" 【用字典字面量创建字典】: \(airports).")

//		访问和修改字典
//		我们可以通过字典的方法和属性来访问和修改字典，或者通过使用下标语法。
//		和数组一样，我们可以通过字典的只读属性count来获取某个字典的数据项数量：
		print(" 【字典只读属性count】: The dictionary of airports contains \(airports.count) items.")

//		使用布尔属性isEmpty作为一个缩写形式去检查count属性是否为0：
		if airports.isEmpty {
			print(" 【字典只读属性isEmpty】: The airports dictionary is empty.")
		} else {
			print(" 【字典只读属性isEmpty】: The airports dictionary is not empty.")
		}
		
//		我们也可以在字典中使用下标语法来添加新的数据项。可以使用一个恰当类型的键作为下标索引，并且分配恰当类型的新值：
		airports["LHR"] = "London"
		print(" 【字典下标语法】: \(airports).")

//		我们也可以使用下标语法来改变特定键对应的值：
		airports["LHR"] = "London Heathrow"
		print(" 【字典下标语法】: \(airports).")

//		作为另一种下标方法，字典的updateValue(_:forKey:)方法可以设置或者更新特定键对应的值。
//		updateValue(_:forKey:)方法会返回对应值的类型的可选值。
//		如果有值存在于更新前，则这个可选值包含了旧值，否则它将会是nil。
		if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
			print(" 【字典updateValue(_:forKey:)方法】: The old value for DUB was \(oldValue).")
		}
		
//		我们也可以使用下标语法来在字典中检索特定键对应的值。因为有可能请求的键没有对应的值存在，字典的下标访问会返回对应值的类型的可选值。如果这个字典包含请求键所对应的值，下标会返回一个包含这个存在值的可选值，否则将返回nil：
		if let airportName = airports["DUB"] {
			print(" 【字典使用下标语法来在字典中检索特定键对应的值】: The name of the airport is \(airportName).")
		} else {
			print(" 【字典使用下标语法来在字典中检索特定键对应的值】: That airport is not in the airports dictionary.")
		}

//		可以使用下标语法来通过给某个键的对应值赋值为nil来从字典里移除一个键值对：
		airports["APL"] = "Apple Internation"
		// "Apple Internation" 不是真的 APL 机场, 删除它
		airports["APL"] = nil
		// APL 现在被移除了
		
//		此外，removeValue(forKey:)方法也可以用来在字典中移除键值对。
//		这个方法在键值对存在的情况下会移除该键值对并且返回被移除的值或者在没有值的情况下返回nil：
		if  let removedValue = airports.removeValue(forKey: "DUB") {
			print(" 【字典removeValue(forKey:)方法】: The removed airport's name is \(removedValue).")
		} else {
			print(" 【字典removeValue(forKey:)方法】: The airports dictionary does not contain a value for DUB.")
		}
		
//		字典遍历
//		我们可以使用for-in循环来遍历某个字典中的键值对。
//		每一个字典中的数据项都以(key, value)元组形式返回，并且我们可以使用临时常量或者变量来分解这些元组：
		for (airportCode, airportName) in airports {
			print(" 【字典使用for-in循环来遍历】: \(airportCode): \(airportName)")
		}
		
//		如果我们只是需要使用某个字典的键集合或者值集合来作为某个接受Array实例的 API 的参数，可以直接使用keys或者values属性构造一个新数组：
		var airportCodes = [String](airports.keys)
		// airportCodes 是 ["YYZ", "LHR"]
		print(" 【字典keys】: \(airportCodes)")
		var airportNames = [String](airports.values)
		// airportNames 是 ["Toronto Pearson", "London Heathrow"]
		print(" 【字典values】: \(airportNames)")
		
//		Swift 的字典类型是无序集合类型。为了以特定的顺序遍历字典的键或值，可以对字典的keys或values属性使用sorted()方法。
		airportCodes = [String](airports.keys).sorted()
		print(" 【字典keys.sorted()】: \(airportCodes)")
		airportNames = [String](airports.values).sorted()
		print(" 【字典values.sorted()】: \(airportNames)")
	}
	
}
