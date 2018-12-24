//
//  Vertex.m
//  LYCTplOC
//
//  Created by liyoucheng on 2018/12/15.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

@synthesize location = location_;
@dynamic color, size;

/*
 注意：由@property声明的属性 在类方法中通过下划线是获取不到的 必须是通过 对象名.属性 才能获取到！～
 @property和@synthesize关键字是针对成员变量以及get/set方法而言的
 
 从Xcode4.4以后@property已经独揽了@synthesize的功能主要有三个作用：
 
 (1)生成了成员变量get/set方法的声明
 (2)生成了私有的带下划线的的成员变量因此子类不可以直接访问，但是可以通过get/set方法访问。那么如果想让定义的成员变量让子类直接访问那么只能在.h文件中定义成员变量了，因为它默认是@protected
 (3)生成了get/set方法的实现
 
 注意：
 如果已经手动实现了get和set方法的话Xcode不会再自动生成带有下划线的私有成员变量了
 因为xCode自动生成成员变量的目的就是为了根据成员变量而生成get/set方法的
 但是如果get和set方法缺一个的话都会生成带下划线的变量
 
 
 在Xcode4.4版本之前@property和@synthesize的功能是独立分工的：
 
 @property的作用是：自动的生成成员变量set/get方法的声明如代码：
 @property int age; 它的作用和下面两行代码的作用一致
 - (void)setAge:(int)age;
 - (int)age;
 注意：属性名称不要加前缀_ 否则生成的get/set方法中也会有下划线
 
 
 @synthesize的作用是实现@property定义的方法代码如：
 @synthesize age
 将@property中定义的属性自动生成get/set的实现方法而且默认访问成员变量age
 
 如果指定访问成员变量_age的话代码如：
 @synthesize age = _age；意思是：
 把@property中声明的age成员变量生成get/set实现方法，并且在实现方法内部
 访问_age这个成员变量，也就意味着给成员 _age 赋值
 
 注意：访问成员变量 _age 如果在.h文件中没有定义_age成员变量的话，就会在.m文件中自动生成@private类型的成员变量_age
 
 如果要阻止自动合成，记得使用 @dynamic 。经典的使用场景是你知道已经在某处实现了getter/setter 方法，而编译器不知道的情况。
 
 情形1:不使用@synthesize，可以使用自动生成的带下划线的实例变量名
 情形2:使用@synthesize为属性添加带下划线的别名，与不使用@synthesize相同
 情形3:使用@synthesize为属性添加任意别名，此时使用自动生成的实例变量名将报错，只能使用指定的别名。
 
 1.@synthesize 的作用:是为属性添加一个实例变量名，或者说别名。同时会为该属性生成 setter/getter 方法。
 2.禁止@synthesize:如果某属性已经在某处实现了自己的 setter/getter ,可以使用 @dynamic 来阻止 @synthesize 自动生成新的 setter/getter 覆盖。
 3.内存管理：@synthesize 和 ARC 无关。
 4.使用：一般情况下无需对属性添加 @synthesize ，但一些特殊情形仍然需要，例如protocol中声明的属性。
 */

- (id)initWithLocation:(CGPoint)location
{
    if (self = [super init]) {
        [self setLocation:location];
    }
    return self;
}

// 默认属性什么也不做
- (void)setColor:(UIColor *)color
{
    
}

- (UIColor *)color
{
    return nil;
}

- (void)setSize:(CGFloat)size
{
    
}

- (CGFloat)size
{
    return 0.0;
}

// Mark操作什么也不做
- (void)addMark:(id <Mark>)mark
{
    
}

- (void)removeMark:(id <Mark>)mark
{
    
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index
{
    return nil;
}

- (id<Mark>)lastChild
{
    return nil;
}

- (NSUInteger)count
{
    return 0;
}

- (NSEnumerator *)enumerator
{
    return nil;
}

#pragma mark -
#pragma mark - NSCopying method

// 此方法需要实现，以支持备忘录
- (id)copyWithZone:(NSZone *)zone
{
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:location_];
    return vertexCopy;
}

@end
