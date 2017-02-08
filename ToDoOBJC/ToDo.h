//
//  ToDo.h
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

// я б в моделі не робив би ніякої лишньої логіки краще винести її в хелпер чи сервіс тут вже залежить від того як
// ти працюєш із даними
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
