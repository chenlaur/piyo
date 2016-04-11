#import "CourseListTableViewController.h"

@interface CourseListTableViewController (){
    NSArray *courses;
}

@end

@implementation CourseListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Data *data = [[Data alloc] init];
    courses = [data getData:@"Course"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [courses count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [[courses objectAtIndex:indexPath.row] subject];
    return cell;
    }

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *subject = [[courses objectAtIndex:indexPath.row] subject];
    NSNumber *credits = [[courses objectAtIndex:indexPath.row] credits];
    NSString *picture = [[courses objectAtIndex: indexPath.row] picture];
    Teacher *temp = [[courses objectAtIndex: indexPath.row] teacher];
    self.course = [[Course alloc] initWithSubject: subject thenCredits: credits thenPicture: picture thenTeacher: temp];
    [self.course loadStudents: [[courses objectAtIndex:indexPath.row] students]];
    CourseViewController *courseViewController = [[CourseViewController alloc] initWithCourse: self.course];
    [self.navigationController pushViewController: courseViewController  animated: YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"List of Courses";
}

@end
