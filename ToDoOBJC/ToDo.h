//
//  ToDo.h
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject <NSCoding>
  @property(nonatomic, strong) NSString *name;
  @property(nonatomic) BOOL isDone;
  @property(nonatomic,strong) NSDate *date;
  -(id)initWithName: (NSString*) name;
  -(void)changeStatus;
  +(void)saveDataWithArray:(NSArray*) array;
  +(NSMutableArray*)loadData;
@end
