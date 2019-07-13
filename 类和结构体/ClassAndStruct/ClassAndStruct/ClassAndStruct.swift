//
//  ClassAndStruct.swift
//  ClassAndStruct
//
//  Created by Dyfei on 2017/7/11.
//  Copyright © 2017年 Eastze. All rights reserved.
//

import UIKit

class ClassAndStruct: NSObject {
    
    func execute() -> Void {
//        类和结构体是人们构建代码所用的一种通用且灵活的构造体。
//        我们可以使用完全相同的语法规则来为类和结构体定义属性（常量、变量）和添加方法，从而扩展类和结构体的功能。
//        注意
//        通常一个类的实例被称为对象。
        
//        类和结构体对比
//        Swift 中类和结构体有很多共同点。共同处在于：
//        
//        定义属性用于存储值
//        定义方法用于提供功能
//        定义下标操作使得可以通过下标语法来访问实例所包含的值
//        定义构造器用于生成初始化值
//        通过扩展以增加默认实现的功能
//        实现协议以提供某种标准功能
        
//        与结构体相比，类还有如下的附加功能：
//        
//        继承允许一个类继承另一个类的特征
//        类型转换允许在运行时检查和解释一个类实例的类型
//        析构器允许一个类实例释放任何其所被分配的资源
//        引用计数允许对一个类的多次引用
        
//        定义语法
//        类和结构体有着类似的定义方式。我们通过关键字class和struct来分别表示类和结构体，并在一对大括号中定义它们的具体内容：
        
        /*
         class SomeClass {
            // 在这里定义类
         }
         
         struct SomeStructure {
            // 在这里定义结构体
         }
         */
        
//        定义结构体和定义类的示例：
        
        struct Resolution {
            var width = 0
            var height = 0
        }
        
        class VideoMode {
            var resolution = Resolution()
            var interlaced = false
            var frameRate = 0.0
            var name: String?
        }
        
//        定义了一个名为Resolution的结构体，用来描述一个显示器的像素分辨率。
//        这个结构体包含了两个名为width和height的存储属性
//        存储属性是被捆绑和存储在类或结构体中的常量或变量
        
//        类和结构体实例
//        Resolution结构体和VideoMode类的定义仅描述了什么是Resolution和VideoMode。它们并没有描述一个特定的分辨率（resolution）或者视频模式（video mode）。为了描述一个特定的分辨率或者视频模式，我们需要生成一个它们的实例。
        
//        生成结构体和类实例的语法非常相似：
        
        let someResolution = Resolution()
        let someVideoMode = VideoMode()
        
//        结构体和类都使用构造器语法来生成新的实例。构造器语法的最简单形式是在结构体或者类的类型名称后跟随一对空括号，如Resolution()或VideoMode()。通过这种方式所创建的类或者结构体实例，其属性均会被初始化为默认值。
        
//        属性访问
//        通过使用点语法，你可以访问实例的属性。其语法规则是，实例名后面紧跟属性名，两者通过点号(.)连接：
        
        print("The width of someResolution is \(someResolution.width)")
        
//        你也可以使用点语法为变量属性赋值：
        
        someVideoMode.resolution.width = 1080
        print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
        
//        结构体类型的成员逐一构造器
//        所有结构体都有一个自动生成的成员逐一构造器，用于初始化新结构体实例中成员的属性。新实例中各个属性的初始值可以通过属性的名称传递到成员逐一构造器之中：
        let vga = Resolution(width: 320, height: 640)
//        与结构体不同，类实例没有默认的成员逐一构造器
        
//        结构体和枚举是值类型
//        值类型被赋予给一个变量、常量或者被传递给一个函数的时候，其值会被拷贝。
        
//        在之前的章节中，我们已经大量使用了值类型。实际上，在 Swift 中，所有的基本类型：整数（Integer）、浮点数（floating-point）、布尔值（Boolean）、字符串（string)、数组（array）和字典（dictionary），都是值类型，并且在底层都是以结构体的形式所实现。
        
//        在 Swift 中，所有的结构体和枚举类型都是值类型。这意味着它们的实例，以及实例中所包含的任何值类型属性，在代码中传递的时候都会被复制。
        
//        请看下面这个示例，其使用了前一个示例中的Resolution结构体：
        
        let hd = Resolution(width: 1920, height: 1080)
        var cinema = hd
        
//        在以上示例中，声明了一个名为hd的常量，其值为一个初始化为全高清视频分辨率（1920 像素宽，1080 像素高）的Resolution实例。
        
//        然后示例中又声明了一个名为cinema的变量，并将hd赋值给它。因为Resolution是一个结构体，所以cinema的值其实是hd的一个拷贝副本，而不是hd本身。尽管hd和cinema有着相同的宽（width）和高（height），但是在幕后它们是两个完全不同的实例。
        
//        为了符合数码影院放映的需求（2048 像素宽，1080 像素高），cinema的width属性需要作如下修改：
        
        cinema.width = 2048
        
//        这里，将会显示cinema的width属性确已改为了2048：
        
        print("cinema is now  \(cinema.width) pixels wide")
        
//        然而，初始的hd实例中width属性还是1920：
        
        print("hd is still \(hd.width) pixels wide")
        
//        枚举也遵循相同的行为准则：
        
        enum CompassPoint {
            case North, South, East, West
        }
        var currentDirection = CompassPoint.West
        let rememberedDirection = currentDirection
        currentDirection = .East
        if rememberedDirection == .West {
            print("The remembered direction is still .West")
        }
        // 打印 "The remembered direction is still .West"
//        上例中rememberedDirection被赋予了currentDirection的值，实际上它被赋予的是值的一个拷贝。赋值过程结束后再修改currentDirection的值并不影响rememberedDirection所储存的原始值的拷贝。
        
//        类是引用类型
//        与值类型不同，引用类型在被赋予到一个变量、常量或者被传递到一个函数时，其值不会被拷贝。因此，引用的是已存在的实例本身而不是其拷贝。
        
//        请看下面这个示例，其使用了之前定义的VideoMode类：
        
        let tenEighty = VideoMode()
        tenEighty.resolution = hd
        tenEighty.interlaced = true
        tenEighty.name = "1080i"
        tenEighty.frameRate = 25.0
        
//        然后，tenEighty被赋予名为alsoTenEighty的新常量，同时对alsoTenEighty的帧率进行修改：
        
        let alsoTenEighty = tenEighty
        alsoTenEighty.frameRate = 30.0
        
//        因为类是引用类型，所以tenEight和alsoTenEight实际上引用的是相同的VideoMode实例。换句话说，它们是同一个实例的两种叫法。
        
//        下面通过查看tenEighty的frameRate属性，我们会发现它正确的显示了所引用的VideoMode实例的新帧率，其值为30.0：
        
        print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
        // 打印 "The frameRate property of theEighty is now 30.0"
        
//        恒等运算符
//        因为类是引用类型，有可能有多个常量和变量在幕后同时引用同一个类实例。（对于结构体和枚举来说，这并不成立。因为它们作为值类型，在被赋予到常量、变量或者传递到函数时，其值总是会被拷贝。）
        
//        如果能够判定两个常量或者变量是否引用同一个类实例将会很有帮助。为了达到这个目的，Swift 内建了两个恒等运算符：
//        等价于（===）
//        不等价于（!==）
        
//        运用这两个运算符检测两个常量或者变量是否引用同一个实例
        
        if tenEighty === alsoTenEighty {
            print("tenEighty and alsoTenEighty refer to the same Resolution instance.")
        }
        //打印 "tenEighty and alsoTenEighty refer to the same Resolution instance."
        
//        请注意，“等价于”（用三个等号表示，===）与“等于”（用两个等号表示，==）的不同：
    
//        指针
//        如果你有 C，C++ 或者 Objective-C 语言的经验，那么你也许会知道这些语言使用指针来引用内存中的地址。一个引用某个引用类型实例的 Swift 常量或者变量，与 C 语言中的指针类似，但是并不直接指向某个内存地址，也不要求你使用星号（*）来表明你在创建一个引用。Swift 中的这些引用与其它的常量或变量的定义方式相同。
        
//        类和结构体的选择
//        在你的代码中，你可以使用类和结构体来定义你的自定义数据类型。
//        然而，结构体实例总是通过值传递，类实例总是通过引用传递。这意味两者适用不同的任务。当你在考虑一个工程项目的数据结构和功能的时候，你需要决定每个数据结构是定义成类还是结构体。
        
//        按照通用的准则，当符合一条或多条以下条件时，请考虑构建结构体：
//        该数据结构的主要目的是用来封装少量相关简单数据值。
//        有理由预计该数据结构的实例在被赋值或传递时，封装的数据将会被拷贝而不是被引用。
//        该数据结构中储存的值类型属性，也应该被拷贝，而不是被引用。
//        该数据结构不需要去继承另一个既有类型的属性或者行为。
        
//        举例来说，以下情境中适合使用结构体：
//        几何形状的大小，封装一个width属性和height属性，两者均为Double类型。
//        一定范围内的路径，封装一个start属性和length属性，两者均为Int类型。
//        三维坐标系内一点，封装x，y和z属性，三者均为Double类型。
        
//        在所有其它案例中，定义一个类，生成一个它的实例，并通过引用来管理和传递。实际中，这意味着绝大部分的自定义数据构造都应该是类，而非结构体。
        
//        字符串、数组、和字典类型的赋值与复制行为
//        Swift 中，许多基本类型，诸如String，Array和Dictionary类型均以结构体的形式实现。这意味着被赋值给新的常量或变量，或者被传入函数或方法中时，它们的值会被拷贝。
        
//        Objective-C 中NSString，NSArray和NSDictionary类型均以类的形式实现，而并非结构体。它们在被赋值或者被传入函数或方法时，不会发生值拷贝，而是传递现有实例的引用。
        
    }
    
}
