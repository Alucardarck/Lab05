//
//  ViewController.m
//  Lab05
//
//  Created by Martin Leon Preciado on 29/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationImgs;
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
    self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes",@"Guanajuato",@"Jalisco",@"Michoacan",@"Zacatecas",nil];
    
    self.destinationImgs   = [[NSMutableArray alloc] initWithObjects: @"Aguascalientes.jpg",@"Guanajuato.jpg",@"Jalisco.jpg",@"Michoacan.jpg",@"Zacatecas.jpg",nil];
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
    return self.destinationTitles.count;
}
//--------------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath
{
    return 190; //Tamaño de la celda
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
    cell.lblEstado.text = self.destinationTitles[indexPath.row];
    cell.imgEstado.image = [UIImage imageNamed:self.destinationImgs[indexPath.row]];
    
    
    return cell;
}
//--------------------------------------------------------------------------------------
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
}

//--------------------------------------------------------------------------------------
@end
