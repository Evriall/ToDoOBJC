//
//  ToDo.h
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject
  @property(nonatomic, strong) NSString *name;
  @property(nonatomic) BOOL isDone;
  @property(nonatomic,strong) NSDate *date;
  -(id)initWithName: (NSString*) name;
  -(void)changeStatus;
@end
