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
    
    //self.stTitleSelected        = self.destinationTitles[indexPath.row];
    //self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
    //self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
    [self performSegueWithIdentifier: @"Window_Final" sender:self];  //Se realiza la saga llamada Window_Municipios
}
//--------------------------------------------------------------------------------------
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //  if ([segue.destinationViewController isKindOfClass:[DestinationDetails class]]) {
    //      DestinationDetails *destination     = [segue destinationViewController];
    //      destination.destinationTitle        = self.stTitleSelected;
    //      destination.destinationDescription  = self.stDescriptionSelected;
    //      destination.destinationPhoto        = self.stPhotoSelected;
    //
    //   }
}



@end
