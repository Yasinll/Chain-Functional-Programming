//
//  ViewController.m
//  链式编程&函数式编程
//
//  Created by PatrickY on 2017/12/22.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    Person *p = [Person new];
    
    [p eat];
    [p run];
   
    p.run2(100).eat2(@"苹果").run2(1000).eat2(@"香蕉").run2(1000);
    
}


- (void)demo {
    
    // Masonry经典代表
    UIView *v = [[UIView alloc] init];
    v.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:v];
    
    [v mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.view).offset(140);
        make.size.mas_offset(CGSizeMake(100, 100));
        make.centerX.equalTo(self.view).offset(-50);
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
