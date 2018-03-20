//
//  Person.m
//  链式编程&函数式编程
//
//  Created by PatrickY on 2017/12/22.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat {
    NSLog(@"%s",__FUNCTION__);
    
}
- (void)run {
    
    NSLog(@"%s",__FUNCTION__);
}


- (Person *(^)(NSString *))eat2 {
    
    return ^(NSString *food) {
        NSLog(@"吃 %@", food);
        
        return self;
    };
}

- (Person *(^)(double))run2 {

    return ^(double distance) {
        
        NSLog(@"跑 %.2fm", distance);
        
        return self;
    };
    
}

@end


