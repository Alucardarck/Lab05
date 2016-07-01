//
//  Window_Final.h
//  Lab05
//
//  Created by Martin Leon Preciado on 30/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface Window_Final : UIViewController
@property NSString *destinationTitles;
@property NSString *destinationImgs;

@property (strong, nonatomic) IBOutlet UIImageView *imgFinal;
@property (strong, nonatomic) IBOutlet UILabel *lblFinal;

@end
