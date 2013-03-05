//
//  ViewController.h
//  ItsAZooInThere
//
//  Created by T. Andrew Binkowski on 3/5/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *animals;
@property (weak, nonatomic) IBOutlet UIScrollView *zooScrollView;

// Class and class instance methods
- (void)logAnimals;

@end
