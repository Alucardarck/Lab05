//
//  Window_Final.m
//  Lab05
//
//  Created by Martin Leon Preciado on 30/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import "Window_Final.h"

@interface Window_Final ()

@end

@implementation Window_Final

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblFinal.text = stTitleSelected;
    self.imgFinal.image = [UIImage imageNamed:stPhotoSelected];
    

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
