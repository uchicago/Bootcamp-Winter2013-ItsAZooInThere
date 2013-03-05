//
//  ViewController.m
//  ItsAZooInThere
//
//  Created by T. Andrew Binkowski on 3/5/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import "AnimalViewController.h"

////////////////////////////////////////////////////////////////////////////////
@interface ViewController ()

@end

////////////////////////////////////////////////////////////////////////////////
@implementation ViewController

/*******************************************************************************
 * @method          viewDidLoad
 * @abstract        Called when the view controller loads
 * @description
 ******************************************************************************/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create array to hold our animals
    _animals = [[NSMutableArray alloc] init];
    
    // Add new animal object - Pig
    Animal *pig = [[Animal alloc] init];
    pig.name = @"Pig";
    pig.age = @5;
    
    // Add new animal object - Dog
    Animal *dog = [[Animal alloc] init];
    dog.name = @"Dog";
    dog.age = @7;
    
    // Add new animal object - Narwhal
    Animal *narwhal = [[Animal alloc] init];
    narwhal.name = @"Narwhal";
    narwhal.age = @20;
    
    // Add the animal objects to the animal array
    [self.animals addObject:pig];
    [self.animals addObject:dog];
    [self.animals addObject:narwhal];
    
    NSLog(@"The animals in our zoo (array): %@", self.animals);
    
    [self logAnimals];
}

/*******************************************************************************
 * @method          didReceiveMemoryWarning
 * @abstract        Called when the application receives a memory warning
 * @description
 ******************************************************************************/
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*******************************************************************************
 * @method          viewWillAppear
 * @abstract        Called just before the view appears
 * @description      
 ******************************************************************************/
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@">>>>>> viewDidAppear");
    [super viewDidAppear:animated];
    
    // Set the content size of the scroll view
    int numberOfAnimals = [self.animals count];
    self.zooScrollView.contentSize = CGSizeMake(numberOfAnimals * self.zooScrollView.frame.size.width,
                                                self.zooScrollView.frame.size.height);

    // Call method to add Animal data and buttons to each "page"
    [self loadScrollViewData];
}

#pragma mark - 

/*******************************************************************************
 * @method          loadScrollViewData
 * @abstract        Iterate through animals array and add a button to the scrollview for each animal
 * @description     Adjust the x coordinate by the index
 ******************************************************************************/
- (void) loadScrollViewData
{
    // Declare local variables

    
    // Loop through the animals NSMutableArray
    for (int i=0; i < [self.animals count]; i++) {

        // Retrieve animal from the array using the loop index
        Animal *currentAnimal = [self.animals objectAtIndex:i];
      
        // Create a new button and position it based on the index
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(320 * i, 0, 100, 70);
        button.tag = i;
        
        // Set button title to be animal name
        [button setTitle:currentAnimal.name forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];

        // Add the button to the scroll view
        [self.zooScrollView addSubview:button];
    }
}

/*******************************************************************************
 * @method          buttonTapped:
 * @abstract
 * @description
 ******************************************************************************/
- (void)buttonTapped:(UIButton*)sender
{
}

#pragma mark - Debugging
/*******************************************************************************
 * @method          logAnimals
 * @abstract        Log all animals to the console
 * @description      
 ******************************************************************************/
- (void)logAnimals
{
    for (Animal *currentAnimal in self.animals) {
        
        // Call summary method in Animal class
        [currentAnimal summary];
    }
}

@end
