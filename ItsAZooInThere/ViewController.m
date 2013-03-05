//
//  ViewController.m
//  ItsAZooInThere
//
//  Created by T. Andrew Binkowski on 3/5/13.
//  Copyright (c) 2013 T. Andrew Binkowski. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
