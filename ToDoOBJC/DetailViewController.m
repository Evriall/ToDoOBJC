//
//  DetailViewController.m
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDo.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//  if(self.toDo != nil) {
//    self.textView.text = self.toDo.name;
//  }
  if(self.viewList.toDoes !=nil){
    ToDo * toDoItem = self.viewList.toDoes[self.index];
    self.textView.text = toDoItem.name;
  }
}

- (IBAction)back:(id)sender {
  
}
#pragma mark - Navigation

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
////  NSData *data = [NSKeyedArchiver archivedDataWithRootObject:notes];
////  [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"toDoes"];
//}

- (IBAction)saveItem:(id)sender {
  if(self.viewList.toDoes !=nil){
    ToDo * toDoItem = self.viewList.toDoes[self.index];
    toDoItem.name = self.textView.text;
    [self saveDataWithArray:self.viewList.toDoes];
  } else {
    ToDo *toDoItem = [[ToDo alloc] initWithName:self.textView.text];
    NSMutableArray *mut = [[NSMutableArray alloc] init];
    mut = [self loadData];
    [mut addObject:toDoItem];
    [self saveDataWithArray:mut];
  }
//  [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)saveDataWithArray:(NSArray*) array{
  NSData *data = [NSKeyedArchiver archivedDataWithRootObject: array];
  [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"todo"];
}

-(NSMutableArray*)loadData{
  NSData *todoData = [[NSUserDefaults standardUserDefaults] objectForKey:@"todo"];
  NSMutableArray *toDoes = [[NSKeyedUnarchiver unarchiveObjectWithData:todoData] mutableCopy];
  return toDoes;
}


@end
