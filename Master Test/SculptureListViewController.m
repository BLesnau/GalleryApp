//
//  MyTableViewController.m
//  Master Test
//
//  Created by Brett Lesnau on 2/5/13.
//  Copyright (c) 2013 Vigilante Panda. All rights reserved.
//

#import "SculptureListViewController.h"
#import "ArtObjectCollectionModel.h"
#import "ArtObject.h"
#import "ArtInfoViewController.h"

@interface SculptureListViewController ()

@property ArtObjectCollectionModel *artObjects;

@end

@implementation SculptureListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    self.artObjects = [[ArtObjectCollectionModel alloc] initEmpty];
    
    ArtObject *obj1 = [[ArtObject alloc] initWithImage:@"ImagePath" andArt:@"Sculpture 1" andArtist:@"Bobby Bobberson" andInfo:@"This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot!"];
    ArtObject *obj2 = [[ArtObject alloc] initWithImage:@"ImagePath" andArt:@"Sculpture 2" andArtist:@"Ricky Bobby" andInfo:@"This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot! This is awesome art! And I really really like it and it is cool! I am making an app, so that's pretty cool. I just need a lot of text here. Like, a loooooot!"];
    ArtObject *obj3 = [[ArtObject alloc] initWithImage:@"ImagePath" andArt:@"Sculpture 3" andArtist:@"Cool Artist" andInfo:@"This is super art!"];
    
    [self.artObjects addObject:obj1];
    [self.artObjects addObject:obj2];
    [self.artObjects addObject:obj3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.artObjects.getSize;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    ArtObject *artObj = [self.artObjects getObjectAtIndex:indexPath.row];
    
    cell.textLabel.text = artObj.artName;
    cell.detailTextLabel.text = artObj.artistName;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ArtObject *object = [self.artObjects getObjectAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark - Reference Code

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}

// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{    
    MyDetailViewController *detailViewController = [[MyDetailViewController alloc] init];
    [self.navigationController pushViewController:detailViewController animated:YES];
}
 */

@end
