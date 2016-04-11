//
//  StudentTableViewController.m
//  Course
//
//  Created by Bridestory DevOps on 3/29/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "StudentTableViewController.h"

@interface StudentTableViewController()

@end

@implementation StudentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell2" bundle: nil] forCellReuseIdentifier: @"HeaderCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell3" bundle: nil] forCellReuseIdentifier: @"Cell"];
    self.navigationItem.title = self.student.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (instancetype)initWithStudent:(Student *)student{
    self = [super initWithNibName: @"StudentTableViewController" bundle: nil];
    if(self){
        self.student = student;
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0){
        return 1;
    }
    else if(section == 1){
        return [self.student.courses count];
    }
    
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
        return 190;
    }
    else{
        return 110;
    }
        
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 1){
       return @"List of Courses";
    }
    
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"HeaderCell";
    static NSString *identifier2 = @"Cell";
    if(indexPath.section == 0){
        self.headerCell = (TableViewCell2 *)[tableView dequeueReusableCellWithIdentifier: identifier];
        [self.headerCell setStudent: self.student];
        __weak __typeof__(self) weakSelf = self;
        [self.headerCell setupTapEmailHandler:^{
            __strong __typeof__(self) strongSelf = weakSelf;
            NSArray *recipients = [[NSArray alloc] initWithObjects: strongSelf.student.email, nil];
            NSString *string = @"Hi, ";
            NSString *string2 = @" !";
            MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc] init];
            mailController.mailComposeDelegate = strongSelf;
            [mailController setMessageBody:[[string stringByAppendingString: strongSelf.student.name] stringByAppendingString: string2] isHTML: NO];
            [mailController setToRecipients: recipients];
            [strongSelf presentViewController: mailController animated: YES completion: NULL];
        }];
        return self.headerCell;
    }
    else{
        self.cell = (TableViewCell3 *)[tableView dequeueReusableCellWithIdentifier: identifier2];
        self.cell.coursePicture.image = [UIImage imageNamed: [[self.student.courses objectAtIndex:indexPath.row] picture]];
        self.cell.labelSubject.text = [[self.student.courses objectAtIndex:indexPath.row] subject];
        self.cell.labelQuota.text = [[[self.student.courses objectAtIndex:indexPath.row] quota] stringValue];
        self.cell.labelTeacher.text = [[self.student.courses objectAtIndex:indexPath.row] teacher].name;
        return self.cell;
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
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
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
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

@end
