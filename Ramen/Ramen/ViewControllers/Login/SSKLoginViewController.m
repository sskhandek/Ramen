//
//  SSKLoginViewController.m
//  Ramen
//
//  Created by Sujay Khandekar on 12/4/13.
//  Copyright (c) 2013 Sujay Khandekar. All rights reserved.
//

#import "SSKLoginViewController.h"
#define loginURL [NSURL urlWithString:@"http://watdo.net/honors/verify_login.php?username=brian&password=watdo"]

@interface SSKLoginViewController ()

@end

@implementation SSKLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)loginCheck:(id)sender{
   
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Invalid Login" message: @"Please check that neither field is blank and that login credentials are correct." delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    if ([_usernameField.text length] == 0){
        [alert show];
    }else{
        if ([_passwordField.text length] == 0){
            [alert show];
        }else{
            NSString *username = [_usernameField text];
            NSString *password = [_passwordField text];
            
            NSMutableString *url = [NSMutableString stringWithString:@"http://watdo.net/honors/verify_login.php?username="];
            [url appendString:username];
            [url appendFormat:@"&password="];
            [url appendFormat:password];
            
            NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL
                                                                  URLWithString:url]];
            NSData *response = [NSURLConnection sendSynchronousRequest:request
                                                     returningResponse:nil error:nil];
            NSError *jsonParsingError = nil;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:response
                                                                      options:0 error:&jsonParsingError];
            NSInteger successInt = [[json objectForKey:@"success"] integerValue];
            
            if (successInt == 0){
                [alert show];
            }else{
                [self performSegueWithIdentifier:@"loginIdentifier" sender:nil];
            }
        }
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}

@end


@implementation SSKLoginViewController (UITextFieldDelegate)

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [[self view] endEditing:TRUE];
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    int currentTag = [textField tag];
    id nextResponder = [[self view] viewWithTag:(currentTag + 1)];
    
    if ([nextResponder isKindOfClass:[UITextField class]])
        [nextResponder becomeFirstResponder];
    else
        [self loginCheck:textField];
    
    
    return YES;
}

@end
