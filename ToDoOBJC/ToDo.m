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
    self.isDone = NO;
    self.date = [NSDate date];
    return self;
  }
  
  -(void)changeStatus{
    self.isDone = !self.isDone;
  }

- (id)initWithCoder:(NSCoder *)decoder {
  if (self = [super init]) {
    self.name = [decoder decodeObjectForKey:@"name"];
    self.date = [decoder decodeObjectForKey:@"date"];
    self.isDone = [decoder decodeBoolForKey:@"isDone"];
  }
  return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
  [encoder encodeObject:self.name forKey:@"name"];
  [encoder encodeObject:self.date forKey:@"date"];
  [encoder encodeBool:self.isDone forKey:@"isDone"];
}

+ (NSMutableArray*)loadData{
  NSData *todoData = [[NSUserDefaults standardUserDefaults] objectForKey:@"todo"];
  NSMutableArray *toDoes = [[NSKeyedUnarchiver unarchiveObjectWithData:todoData] mutableCopy];
  return toDoes;
}

+ (void)saveDataWithArray:(NSArray*) array{
  NSData *data = [NSKeyedArchiver archivedDataWithRootObject: array];
  [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"todo"];
}

@end
