//
//  LYCKVC.m
//  TplOC
//
//  Created by liyoucheng on 2018/12/27.
//  Copyright © 2018年 LYC. All rights reserved.
//

#import "LYCKVC.h"

#import "Person.h"


@interface LYCKVC ()

@end

@implementation LYCKVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    Person *person = [[Person alloc] init];
//
//    [person setValue:@"xds" forKey:@"name"];
//
//    NSLog(@"==========name => %@",person.name);
//    NSLog(@"==========name => %@",[person valueForKey:@"name"]);
//
//    /*
//     setValue:forKeyPath:
//     valueForKeyPath:
//
//     KeyPath为多级访问，使用点语法
//     */
//    //注意，这里要想使用keypath对adress的属性进行赋值，必须先给myself赋一个Address对象
//    Address *address = [[Address alloc] init];
//
//    [person setValue:address forKey:@"address"];
//
//    [person setValue:@"rizhao" forKeyPath:@"address.city"];
//
//    NSLog(@"==========city => %@",person.address.city);
//    NSLog(@"==========city => %@",[person valueForKeyPath:@"address.city"]);
//
//
//    //批量赋值
//    NSDictionary *dic = @{
//                          @"name":@"xiaoMing",
//                          @"sex":@1,
//                          @"age":@12,
//                          @"address":address
//                          };
//    [person setValuesForKeysWithDictionary:dic];
//
//    //批量取值
//    NSArray *keys = @[@"name",@"age",@"sex",@"address"];
//    NSDictionary *values = [person dictionaryWithValuesForKeys:keys];
//    NSLog(@"value => %@", values);
//
//    [person setValue:nil forKey:@"sex"];
//    NSLog(@"sex = %d",person.sex);
    
    
//    NSMutableArray *array = [NSMutableArray array];
//
//    for ( int i = 0 ; i < 5 ; i++ ) {
//
//        Address *address = [[Address alloc] init];
//
//        NSString *cityStr = [NSString stringWithFormat:@"city-%d",i];
//
//        //批量赋值
//        NSDictionary *dic = @{
//                              @"city":cityStr,
//                              @"street":@"street",
//                              @"cityNumber":@(i),
//                              @"streetNumber":@101
//                              };
//
//        [address setValuesForKeysWithDictionary:dic];
//
//        [array addObject:address];
//    }
//
//    //返回数组中保存的对象的属性，返回值为数组
//    NSArray *cityArray = [array valueForKeyPath:@"city"];
//    NSLog(@"%@",cityArray);
//
//    NSNumber *avg = [array valueForKeyPath:@"@avg.streetNumber"];
//    NSLog(@"%@",avg);
//
//    //@count：集合里对象的数量
//    NSNumber *count = [array valueForKeyPath:@"@count"];
//    NSLog(@"%@",count);
//
//    //@sum：总和
//    NSNumber *sum = [array valueForKeyPath:@"@sum.streetNumber"];
//    NSLog(@"%@",sum);
//
//    //@max：最大值
//    NSNumber *max = [array valueForKeyPath:@"@max.cityNumber"];
//    NSLog(@"%@",max);
//
//    //@min：最小值
//    NSNumber *min = [array valueForKeyPath:@"@min.cityNumber"];
//    NSLog(@"%@",min);
//
//    NSArray *city = [array valueForKeyPath:@"@unionOfObjects.city"];
//    NSLog(@"%@",city);
//
//    NSArray *cityArray1 = [array valueForKeyPath:@"city"];
//    NSLog(@"%@",cityArray1);
//
//    NSArray *streetNumberArr = [array valueForKeyPath:@"@distinctUnionOfObjects.streetNumber"];
//    NSLog(@"%@",streetNumberArr);
    
    [self test];
}

- (void)test {
    NSMutableArray *array1 = [NSMutableArray array];
    
    for ( int i = 0 ; i < 5 ; i++ ) {
        
        Address *address = [[Address alloc] init];
        
        NSString *cityStr = [NSString stringWithFormat:@"city-%d",i];
        
        //批量赋值
        NSDictionary *dic = @{
                              @"city":cityStr,
                              @"street":@"street",
                              @"cityNumber":@(i),
                              @"streetNumber":@101
                              };
        
        [address setValuesForKeysWithDictionary:dic];
        
        [array1 addObject:address];
    }
    
    NSMutableArray *array2 = [NSMutableArray array];
    
    for ( int i = 3 ; i < 9 ; i++ ) {
        
        Address *address = [[Address alloc] init];
        
        NSString *cityStr = [NSString stringWithFormat:@"city-%d",i];
        
        //批量赋值
        NSDictionary *dic = @{
                              @"city":cityStr,
                              @"street":@"street",
                              @"cityNumber":@(i),
                              @"streetNumber":@101
                              };
        
        [address setValuesForKeysWithDictionary:dic];
        
        [array2 addObject:address];
    }
    
    NSArray *array = @[array1,array2];
    
    NSArray *result = [array valueForKeyPath:@"@unionOfArrays.city"];
    NSLog(@"result = %@", result);
    
    NSArray *result1 = [array valueForKeyPath:@"@distinctUnionOfArrays.city"];
    NSLog(@"result = %@", result1);
    
//    NSSet *result2 = [array valueForKeyPath:@"@distinctUnionOfSets.city"];
//    NSLog(@"result = %@", result2);
    
    NSArray *numbers = @[@1,@1,@3,@5];
    
    NSNumber *sum = [numbers valueForKeyPath:@"@distinctUnionOfObjects.self"];
    
    NSNumber *avg = [numbers valueForKeyPath:@"@avg.self"];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
