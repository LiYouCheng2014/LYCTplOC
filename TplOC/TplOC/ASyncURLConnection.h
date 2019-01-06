//
//  ASyncURLConnection.h
//  TplOC
//
//  Created by liyoucheng on 2019/1/6.
//  Copyright © 2019年 LYC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^CompleteBlock) (NSData *data);
typedef void (^ErrorBlock) (NSError *error);

@interface ASyncURLConnection : NSURLConnection
<NSURLConnectionDelegate,
NSURLConnectionDataDelegate>
{
    
    NSMutableData *data_;
    CompleteBlock completeBlock_;
    ErrorBlock errorBlock_;
}

+ (id)request:(NSString *)requestUrl completeBlock:(CompleteBlock)completeBlock errorBlock:(ErrorBlock)errorBlock;

- (id)initWithRequest:(NSString *)requestUrl completeBlock:(CompleteBlock)completeBlock errorBlock:(ErrorBlock)errorBlock;

@end

NS_ASSUME_NONNULL_END
