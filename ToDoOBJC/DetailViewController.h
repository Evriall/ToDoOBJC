//
//  DetailViewController.h
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
#import "ViewController.h"

@interface DetailViewController : UIViewController

  // textView потрібно занести в інтерфейс m файла тут не потрібно його бачити
  @property (weak, nonatomic) IBOutlet UITextView *textView;
  @property(nonatomic,strong) ToDo *toDo;

// навіщо сюди передавати цілий контролер його тут взагалі не повинно бути так само як і індекса
//  @property(nonatomic,strong) ViewController *viewList;
//  @property(nonatomic) int index;

@end
