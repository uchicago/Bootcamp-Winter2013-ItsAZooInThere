//
//  DetailViewController.m
//  ItsAZooInThere
//
//  Created by T. Andrew Binkowski on 3/5/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "DetailViewController.h"
#import "Animal.h"
#import <Social/Social.h>

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
    
    // Update the interface
    self.animalImageView.image = self.animal.image;
    self.animalNameLabel.text = self.animal.name;
    self.animalAgeLabel.text = [NSString stringWithFormat:@"Is %@ years old!",
                                self.animal.age];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Social
/*******************************************************************************
 * @method          sendTweet:
 * @abstract
 * @description      
 *******************************************************************************/
- (IBAction)sendTweet:(UIButton *)sender {
    
    SLComposeViewController *tweetSheet = [SLComposeViewController
                                          composeViewControllerForServiceType:SLServiceTypeTwitter];
    [tweetSheet setInitialText:@"How old is a..."];
    [self presentViewController:tweetSheet animated:YES completion:nil];
    
}

@end
