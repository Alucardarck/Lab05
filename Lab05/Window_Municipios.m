//
//  Window_Municipios.m
//  Lab05
//
//  Created by Martin Leon Preciado on 30/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import "Window_Municipios.h"

@interface Window_Municipios ()
@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationImgs;


@end

@implementation Window_Municipios

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//--------------------------------------------------------------------------------------
- (void)initController {
    if(NumTable==0)
    {
        self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Asientos",@"Calvillo",@"Jesus Maria",@"Rincon De Los Romos",@"San Francisco De Los Romo",nil];
        self.destinationImgs   = [[NSMutableArray alloc] initWithObjects: @"Asientos.jpg",@"Calvillo.jpg",@"Jesus_Maria.jpg",@"Rincon_De_Los_Romos.jpg",@"San_Francisco_De_Los_Romo.jpg",nil];
    }
    else if (NumTable==(NSInteger *)1)
    {
        self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Abasolo",@"Jerecuaro",@"Santa Catarina",@"Uriangato",@"Yuriria",nil];
        self.destinationImgs   = [[NSMutableArray alloc] initWithObjects: @"Abasolo.jpg",@"Jerecuaro.jpg",@"Santa_Catarina.jpg",@"Uriangato.jpg",@"Yuriria.jpg",nil];

    }
    else if (NumTable==(NSInteger *)2)
    {
        self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Arenal",@"Atotonilco",@"Juchitlan",@"La Barca",@"Mayutla",nil];
        self.destinationImgs   = [[NSMutableArray alloc] initWithObjects: @"Arenal.gif",@"Atotonilco.gif",@"Juchitlan.gif",@"La_barca.gif",@"Mayutla.jpg",nil];
        
    }
    else if (NumTable==(NSInteger *)3)
    {
        self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Acuitzio",@"Huadacareo",@"Huetamo",@"Numaran",@"Zitacuaro",nil];
        self.destinationImgs   = [[NSMutableArray alloc] initWithObjects: @"Acuitzio.jpg",@"Huadacareo.jpg",@"Huetamo.jpg",@"Numaran.jpg",@"Zitacuaro.jpg",nil];
        
    }
    else if (NumTable==(NSInteger *)4)
    {
        self.destinationTitles   = [[NSMutableArray alloc] initWithObjects: @"Apozol",@"Apulco",@"Genaro Codina",@"Jerez",@"Villa Garcia",nil];
        self.destinationImgs   = [[NSMutableArray alloc] initWithObjects: @"Apozol.jpg",@"Apulco.jpg",@"Genaro_Codina.jpg",@"Jerez.jpg",@"Villa_Garcia.jpg",nil];
        
    }

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
    return 300; //Tamaño de la celda
}
//--------------------------------------------------------------------------------------
- (UITableViewCell *) tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Inicializacion de celdas.
    Cell_2 *cell = (Cell_2 *) [tableView dequeueReusableCellWithIdentifier:@"Cell_2"];
    
    if (cell==nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"Cell_2" bundle:nil]
        forCellReuseIdentifier:@"Cell_2"];
        cell= [tableView dequeueReusableCellWithIdentifier:@"Cell_2"];
    }
    cell.lblMunicipio.text = self.destinationTitles[indexPath.row];
    cell.imgMunicipio.image = [UIImage imageNamed:self.destinationImgs[indexPath.row]];
    
    
    return cell;
}
//--------------------------------------------------------------------------------------
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    stTitleSelected        = self.destinationTitles[indexPath.row];
    stPhotoSelected        = self.destinationImgs[indexPath.row];
    [self performSegueWithIdentifier: @"Window_Final" sender:self];  //Se realiza la saga llamada Window_Municipios
}
//--------------------------------------------------------------------------------------




@end
