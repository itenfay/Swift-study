//
//  AdvancedOperatorsUsage.swift
//  AdvancedOperators
//
//  Created by Dyfei on 2017/10/30.
//  Copyright © 2017年 Eastze. All rights reserved.
//

import UIKit

//本页内容包括：
//位运算符
//溢出运算符
//优先级和结合性
//运算符函数
//自定义运算符
//除了在之前介绍过的基本运算符，Swift 中还有许多可以对数值进行复杂运算的高级运算符。这些高级运算符包含了在 C 和 Objective-C 中已经被大家所熟知的位运算符和移位运算符。

//与 C 语言中的算术运算符不同，Swift 中的算术运算符默认是不会溢出的。所有溢出行为都会被捕获并报告为错误。如果想让系统允许溢出行为，可以选择使用 Swift 中另一套默认支持溢出的运算符，比如溢出加法运算符（&+）。所有的这些溢出运算符都是以 & 开头的。

//自定义结构体、类和枚举时，如果也为它们提供标准 Swift 运算符的实现，将会非常有用。在 Swift 中自定义运算符非常简单，运算符也会针对不同类型使用对应实现。

//我们不用被预定义的运算符所限制。在 Swift 中可以自由地定义中缀、前缀、后缀和赋值运算符，以及相应的优先级与结合性。这些运算符在代码中可以像预定义的运算符一样使用，我们甚至可以扩展已有的类型以支持自定义的运算符。

//位运算符
//位运算符可以操作数据结构中每个独立的比特位。它们通常被用在底层开发中，比如图形编程和创建设备驱动。位运算符在处理外部资源的原始数据时也十分有用，比如对自定义通信协议传输的数据进行编码和解码。

//Swift 支持 C 语言中的全部位运算符，接下来会一一介绍。

//按位取反运算符
//按位取反运算符（~）可以对一个数值的全部比特位进行取反：

//按位与运算符
//按位与运算符（&）可以对两个数的比特位进行合并。它返回一个新的数，只有当两个数的对应位都为 1 的时候，新数的对应位才为 1：

//按位或运算符
//按位或运算符（|）可以对两个数的比特位进行比较。它返回一个新的数，只要两个数的对应位中有任意一个为 1 时，新数的对应位就为 1：

//按位异或运算符
//按位异或运算符（^）可以对两个数的比特位进行比较。它返回一个新的数，当两个数的对应位不相同时，新数的对应位就为 1：


class AdvancedOperatorsUsage: NSObject {

    func execute() {
        //按位取反运算符
        //按位取反运算符是一个前缀运算符，需要直接放在运算的数之前，并且它们之间不能添加任何空格：
        let initialBits: UInt8 = 0b00001111
        let invertedBits = ~initialBits // 等于 0b11110000
        print("initialBits is \(initialBits), invertedBits is \(invertedBits)")
        
        //UInt8 类型的整数有 8 个比特位，可以存储 0 ~ 255 之间的任意整数。这个例子初始化了一个 UInt8 类型的整数，并赋值为二进制的 00001111，它的前 4 位都为 0，后 4 位都为 1。这个值等价于十进制的 15。
        
        //接着使用按位取反运算符创建了一个名为 invertedBits 的常量，这个常量的值与全部位取反后的 initialBits 相等。即所有的 0 都变成了 1，同时所有的 1 都变成 0。invertedBits 的二进制值为 11110000，等价于无符号十进制数的 240。
        
        //按位与运算符
        //在下面的示例当中，firstSixBits 和 lastSixBits 中间 4 个位的值都为 1。按位与运算符对它们进行了运算，得到二进制数值 00111100，等价于无符号十进制数的 60：
        let firstSixBits: UInt8 = 0b11111100
        let lastSixBits: UInt8  = 0b00111111
        let middleFourBits = firstSixBits & lastSixBits // 等于 00111100
        print("middleFourBits is \(middleFourBits)")
        
        //按位或运算符
        //在下面的示例中，someBits 和 moreBits 不同的位会被设置为 1。接位或运算符对它们进行了运算，得到二进制数值 11111110，等价于无符号十进制数的 254：
        let someBits: UInt8 = 0b10110010
        let moreBits: UInt8 = 0b01011110
        let combinedbits = someBits | moreBits // 等于 11111110
        print("combinedbits is \(combinedbits)")

        //按位异或运算符
        //在下面的示例当中，firstBits 和 otherBits 都有一个自己的位为 1 而对方的对应位为 0 的位。 按位异或运算符将新数的这两个位都设置为 1，同时将其它位都设置为 0：
        let firstBits: UInt8 = 0b00010100
        let otherBits: UInt8 = 0b00000101
        let outputBits = firstBits ^ otherBits // 等于 00010001
        print("outputBits is \(outputBits)")

        
    }
    
}
