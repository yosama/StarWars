//
//  YOSStarWarsUniverseViewController.m
//  StarWars
//
//  Created by Yosnier on 14/01/15.
//  Copyright (c) 2015 yos. All rights reserved.
//

#import "YOSStarWarsUniverseViewController.h"
#import "YOSStarWarsUniverse.h"
#import "YOSCharacterViewController.h"

@interface YOSStarWarsUniverseViewController ()

@property (strong, nonatomic) YOSStarWarsUniverse *model;

@end

@implementation YOSStarWarsUniverseViewController


-(id) initWithModel: (YOSStarWarsUniverse*)model style:(UITableViewStyle) style{
    
    if (self = [super initWithStyle:style]){
        
        _model = model;
        self.title = @"Star Wars";
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Devuelvo cantidad de sectiones
    return 2;
}


-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (section == IMPERIALS_SECTION){
        // Section EMPIRE
        return @"Empire";
    }else{
        // Section REBEL ALLIANCE
        return @"Rebel Alliance";
        
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if  (section == IMPERIALS_SECTION){
        return [self.model imperialCount];
    }else{
        return [self.model rebelCount];
        
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    //Reuse ID
    static NSString *cellId = @"StarWarsCell";
    
    // Averiguar de que personaje me esta hablando
    YOSStarWarsCharacter *character;
    if (indexPath.section == IMPERIALS_SECTION){
        
        character = [self.model imperialCharacterAtIndex:indexPath.row];
    } else {
        character = [self.model rebelCharacterAtIndex:indexPath.row];
    }
    
    // Crear una celda
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil){
        // tengo que crear la celda a pelo
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:cellId];
        
    }
    
    // sincronizar modelo(personaje ) -> (vista) (celda)
    cell.imageView.image = character.photo;
    cell.textLabel.text = character.alias;
    cell.detailTextLabel.text = character.name;
    
    
    return cell;
}


/*  // Pregunta si se puede editar
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*  // Dar por bueno la ediccion.
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


#pragma mark - Table Delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // Averiguar de que persona se trata
    YOSStarWarsCharacter *character;
    
    if (indexPath.section == IMPERIALS_SECTION){
        
        character = [self.model imperialCharacterAtIndex:indexPath.row];
    } else{
        character = [self.model rebelCharacterAtIndex:indexPath.row];
    }
    
    //Crear un characterVC
    
    YOSCharacterViewController *charVC = [[YOSCharacterViewController alloc]
                                          initWithModel:character];
    
    //Pushearlo
    [self.navigationController pushViewController:charVC
                                         animated:NO];
}

@end
