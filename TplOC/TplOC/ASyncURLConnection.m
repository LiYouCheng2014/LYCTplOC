//
//  ASyncURLConnection.m
//  TplOC
//
//  Created by liyoucheng on 2019/1/6.
//  Copyright © 2019年 LYC. All rights reserved.
//

#import "ASyncURLConnection.h"

@implementation ASyncURLConnection

+ (id)request:(NSString *)requestUrl completeBlock:(CompleteBlock)completeBlock errorBlock:(ErrorBlock)errorBlock {
    
    return [[self alloc] initWithRequest:requestUrl completeBlock:completeBlock errorBlock:errorBlock];
}

- (id)initWithRequest:(NSString *)requestUrl completeBlock:(CompleteBlock)completeBlock errorBlock:(ErrorBlock)errorBlock {
    
    NSURL *url = [NSURL URLWithString:requestUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    if (self = [super initWithRequest:request delegate:self startImmediately:NO]) {
        
        data_ = [[NSMutableData alloc] init];
        completeBlock_ = [completeBlock copy];
        errorBlock_ = [errorBlock copy];
        
        [self start];
    }
    
    return self;
}

#pragma mark - NSURLConnectionDelegate



#pragma mark - NSURLConnectionDataDelegate

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    
    [data_ setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    [data_ appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    completeBlock_(data_);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    
    errorBlock_(error);
}

@end
