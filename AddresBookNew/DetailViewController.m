//
//  DetailViewController.m
//  AddresBookNew
//
//  Created by admin on 05.02.15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "DetailViewController.h"
#import "MasterViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
    }
}

- (IBAction)saveButton:(id)sender {
    
    [self.detailItem setValue:_peopleName.text forKey:@"name"];
    [self.detailItem setValue:_peopleSurname.text forKey:@"surname"];
    [self.detailItem setValue:_peoplePhone.text forKey:@"phone"];
    [_delegate saveContext];
    
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {

        self.peopleName.text = [[self.detailItem valueForKey:@"name"] description];
        self.peopleSurname.text = [[self.detailItem valueForKey:@"surname"] description];
        self.peoplePhone.text = [[self.detailItem valueForKey:@"phone"] description];
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
