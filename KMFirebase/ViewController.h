//
//  ViewController.h
//  KMFirebase
//
//  Created by Student P_07 on 07/11/16.
//  Copyright © 2016 Karishma Mahajan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>
#import <FirebaseDatabase/FirebaseDatabase.h>

@import FirebaseDatabase;


@interface ViewController : UIViewController
{
    FIRDatabase * firebasedatabase;
    FIRDatabaseReference *firebaseReference;
    
}
@property (weak, nonatomic) IBOutlet UITextField *productName;


@property (weak, nonatomic) IBOutlet UITextField *productCompany;

@property (weak, nonatomic) IBOutlet UITextField *productPrice;

- (IBAction)actionSave:(id)sender;



@end

