//
//  ViewController.m
//  KMFirebase
//
//  Created by Student P_07 on 07/11/16.
//  Copyright © 2016 Karishma Mahajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSDictionary *data;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    data=[[NSDictionary alloc]init];
    
    
    firebasedatabase = [FIRDatabase database];
    
    [firebasedatabase setPersistenceEnabled:YES];
    
    firebaseReference = [firebasedatabase reference];
    
    [firebaseReference keepSynced:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createDatabase
{
    NSString *productNameString = _productName.text;
    NSString *productCompanyString =_productCompany.text;
    NSString *productPriceString =_productPrice.text;

    
    data=@{@"productNameKey":productNameString,
           @"productCompanyKey":productCompanyString,
           @"productPriceKey":productPriceString};
    
    
}


- (IBAction)actionSave:(id)sender {
    [self createDatabase];
    
    [[[firebaseReference child:@"ProductDetails"]childByAutoId]setValue:data withCompletionBlock:^(NSError * _Nullable error, FIRDatabaseReference * _Nonnull ref) {
        NSLog(@"Saved Successfully!!!");
        
        NSLog(@"%@",error.localizedDescription);
    }];
    
}
@end
