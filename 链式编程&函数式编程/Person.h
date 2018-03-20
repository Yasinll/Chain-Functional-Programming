//
//  Person.h
//  链式编程&函数式编程
//
//  Created by PatrickY on 2017/12/22.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)eat;
- (void)run;

// 函数式编程 返回block
- (Person *(^)(NSString *food))eat2;
- (Person * (^)(double distance))run2;

@end
