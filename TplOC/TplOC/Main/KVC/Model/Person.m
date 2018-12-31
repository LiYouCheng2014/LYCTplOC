//
//  Person.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/27.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
    if ([key isEqualToString:@"Age"]) {
        [self setValue:value forKey:key];
    }
}

- (void)setNilValueForKey:(NSString *)key {
    
    if ([key isEqualToString:@"sex"]) {
        
        [self setValue:@111 forKey:@"sex"];
    }
    else {
        
        [super setNilValueForKey:key];
    }
}

//- (id)valueForUndefinedKey:(NSString *)key {
//    
//}

@end
