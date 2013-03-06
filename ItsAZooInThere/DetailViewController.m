//
//  DetailViewController.m
//  ItsAZooInThere
//
//  Created by T. Andrew Binkowski on 3/5/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "DetailViewController.h"
#import "Animal.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

/*******************************************************************************
 * @method          viewDidLoad
 * @abstract
 * @description
 ******************************************************************************/
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@">>>>>> DetailViewController - viewDidLoad");
}

/*******************************************************************************
 * @method          viewWillAppear:
 * @abstract         
 * @description
 ******************************************************************************/
- (void)viewWillAppear:(BOOL)animated {
    
    NSLog(@">>>>>> viewWillAppear");

    // Print summary of animal to console for debugging
    [self.animal summary];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
