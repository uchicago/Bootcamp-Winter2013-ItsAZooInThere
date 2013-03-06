//
//  DetailViewController.h
//  ItsAZooInThere
//
//  Created by T. Andrew Binkowski on 3/5/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Animal.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Animal *animal;
@property (weak, nonatomic) IBOutlet UIImageView *animalImageView;
@property (weak, nonatomic) IBOutlet UILabel *animalNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *animalAgeLabel;

@end
