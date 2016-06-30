//
//  ViewController.m
//  Lab05
//
//  Created by Martin Leon Preciado on 29/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *homeArray;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//--------------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//--------------------------------------------------------------------------------------
- (void)initController {
    self.homeArray   = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes",@"Guanajuato",@"Jalisco",@"Michoacan",@"Zacatecas",nil];
}
/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/

- (NSInteger) numberOfSectionsInTableView: (UITableView *)tableView{
    return 1;
}
//--------------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection: (NSInteger) section
{
    return self.homeArray.count;
}
//--------------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath
{
    return 120; //Tamaño de la celda
}
//--------------------------------------------------------------------------------------
- (UITableViewCell *) tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Inicializacion de celdas.
    CellHome *cell = (CellHome *) [tableView dequeueReusableCellWithIdentifier:@"CellHome"];
    
    if (cell==nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"CellHome" bundle:nil]
        forCellReuseIdentifier:@"CellHome"];
        cell= [tableView dequeueReusableCellWithIdentifier:@"CellHome"];
    }
    
    return cell;
}
//--------------------------------------------------------------------------------------
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
}

//--------------------------------------------------------------------------------------
@end
