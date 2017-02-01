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
  if(self.viewList.toDoes !=nil){
    ToDo * toDoItem = self.viewList.toDoes[self.index];
    self.textView.text = toDoItem.name;
  }
}

- (IBAction)back:(id)sender {
  
}


- (IBAction)saveItem:(id)sender {
  if(self.viewList.toDoes !=nil){
    ToDo * toDoItem = self.viewList.toDoes[self.index];
    toDoItem.name = self.textView.text;
    [ToDo saveDataWithArray:self.viewList.toDoes];
  } else {
    ToDo *toDoItem = [[ToDo alloc] initWithName:self.textView.text];
    NSMutableArray *mut = [[NSMutableArray alloc] init];
    mut = [ToDo loadData];
    [mut addObject:toDoItem];
    [ToDo saveDataWithArray:mut];
  }
  [self performSegueWithIdentifier:@"unwindSegue" sender:self];
}



@end
