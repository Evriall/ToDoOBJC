//
//  DetailViewController.h
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController
  @property (weak, nonatomic) IBOutlet UITextView *textView;
    @property(nonatomic,strong) ToDo *toDo;
@end
