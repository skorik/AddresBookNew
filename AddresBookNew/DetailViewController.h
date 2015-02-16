//
//  DetailViewController.h
//  AddresBookNew
//
//  Created by admin on 05.02.15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"
#import "AppDelegate.h"
@interface DetailViewController : UIViewController <UIApplicationDelegate>


@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UITextField *peopleName;
@property (weak, nonatomic) IBOutlet UITextField *peopleSurname;
@property (weak, nonatomic) IBOutlet UITextField *peoplePhone;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@property (weak, nonatomic) id<MasterContextDelegate> delegate;


@end

