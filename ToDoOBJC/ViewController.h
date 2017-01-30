//
//  ViewController.h
//  ToDoOBJC
//
//  Created by Sergey Guznin on 29.01.17.
//  Copyright © 2017 Sergey Guznin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface ViewController : UIViewController
  @property(nonatomic, strong)  NSMutableArray * toDoes;
  @property (weak, nonatomic) IBOutlet UITableView *tableView;
  -(void)tappedCheck;
@end

