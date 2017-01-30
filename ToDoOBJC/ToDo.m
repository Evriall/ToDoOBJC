//
//  ToDo.m
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo
  -(id)initWithName: (NSString*) name {
    self.name = name;
    self.isDone = YES;
    self.date = [NSDate date];
    return self;
  }
  
  -(void)changeStatus{
    self.isDone = !self.isDone;
  }
@end
