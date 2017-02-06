//
//  DetailViewController.m
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

// потрібно привести код до нормального стилю одного https://github.com/raywenderlich/objective-c-style-guide

#import "DetailViewController.h"
#import "ToDo.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // навіщо ти витягуєш елемент із списку, якщо ти його так передаєш?
  if(self.viewList.toDoes !=nil){
    ToDo * toDoItem = self.viewList.toDoes[self.index];
    self.textView.text = toDoItem.name;
  }
}

- (IBAction)back:(id)sender {
  
}


- (IBAction)saveItem:(id)sender {
    
    // тут цього не повинно бути, віддавай обєкт через делегати назад на контролер із списком айтемів і зберігай його там, 
    // якщо тобі потрібно знати про порядок інших елементів, або напиши менеджер який умітиме правильно зберігати цей обєкт,
    // але тут не повинно бути елементів масиву, які передаються з іншого контролеру
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
