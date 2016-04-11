//
//  CourseViewController.m
//  Course
//
//  Created by Bridestory DevOps on 3/24/16.
//  Copyright (c) 2016 Bridestory DevOps. All rights reserved.
//

#import "CourseViewController.h"

@interface CourseViewController () <UITableViewDataSource, UITableViewDelegate/*, NSURLConnectionDelegate*/>{
    NSMutableData *dataFromResponse;
    NSArray *objects;
    NSArray *students;
}

@end

@implementation CourseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"http://private-anon-5c3260a05-icikicik.apiary-mock.com/courses"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL: url];
    request.HTTPMethod = @"GET";
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest: request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject){
        NSLog(@"JSON : %@", responseObject);
        NSDictionary *courses = responseObject;
        NSArray *data = courses[@"data"];
        objects = [MTLJSONAdapter modelsOfClass: jsonModel.class fromJSONArray: data error: nil];
        for(jsonModel *jsonModel in objects){
            for(StudentJSON *student in jsonModel.students){
                NSLog(@"%@", student.name);
                 NSLog(@"%@", student.number);
            }
        }
    }
    failure:^(AFHTTPRequestOperation *operation, NSError *error){
        NSLog(@"Error : %@", error);
    }];
    [[NSOperationQueue mainQueue] addOperation: operation];
    /*
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://private-anon-5c3260a05-icikicik.apiary-mock.com/courses"]];
    request.HTTPMethod = @"GET";
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest: request delegate: self];
    if (!connection) {
        dataFromResponse = nil;
    }
    [connection start];
    */
    
    self.labelSubject.text = self.course.subject;
    self.labelCredits.text = [self.course.credits stringValue];
    self.labelQuota.text = [self.course.quota stringValue];
    self.labelTeacher.text = self.course.teacher.name;
    self.coursePicture.image = [UIImage imageNamed:self.course.picture];
    self.teacherPicture.image = [UIImage imageNamed:self.course.teacher.picture];
    
    [self.teacherPicture.layer setCornerRadius: self.teacherPicture.frame.size.width/2];
    self.teacherPicture.clipsToBounds = YES;
    
    self.navigationItem.title = @"Course Detail";
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.course.students count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier: identifier];
    cell.studentNim.text = [[self.course.students objectAtIndex:indexPath.row] nim];
    cell.studentName.text = [[self.course.students objectAtIndex:indexPath.row] name];
    cell.studentGender.text = [[self.course.students objectAtIndex:indexPath.row] gender];
    cell.studentImage.image = [UIImage imageNamed: [[self.course.students objectAtIndex:indexPath.row] picture]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.student = [[Student alloc] initWithNim: [[self.course.students objectAtIndex:indexPath.row] nim] thenName: [[self.course.students objectAtIndex:indexPath.row] name] thenGender: [[self.course.students objectAtIndex:indexPath.row] gender] thenEmail: [[self.course.students objectAtIndex:indexPath.row] email] thenKelas: [[self.course.students objectAtIndex:indexPath.row] kelas] thenPicture: [[self.course.students objectAtIndex:indexPath.row] picture]];
    [self.student loadCourses:[[self.course.students objectAtIndex:indexPath.row] courses]];
    StudentTableViewController *studentTableViewController = [[StudentTableViewController alloc] initWithStudent: self.student];
    [self.navigationController pushViewController: studentTableViewController animated: YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Attendees";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithCourse:(Course *)course{
    self = [super initWithNibName:@"CourseViewController" bundle:nil];
    if(self){
        self.course = course;
    }
    return self;
}
/*
#pragma mark NSURLConnection Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    // A response has been received, this is where we initialize the instance var you created
    // so that we can append data to it in the didReceiveData method
    // Furthermore, this method is called each time there is a redirect so reinitializing it
    // also serves to clear it
    [dataFromResponse setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    // Append the new data to the instance variable you declared
    NSError *jsonError;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];
    NSArray *jsons = json[@"data"];
    objects = [MTLJSONAdapter modelsOfClass: jsonModel.class fromJSONArray: jsons error: nil];
        for(jsonModel *model1 in objects){
            for(StudentJSON *model2 in model1.students){
                NSLog(@"%@", model2.email);
            }
        }
    }

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection
                  willCacheResponse:(NSCachedURLResponse*)cachedResponse {
    // Return nil to indicate not necessary to store a cached response for this connection
    return nil;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    // The request is complete and data has been received
    // You can parse the stuff in your instance variable now
    connection = nil;
    dataFromResponse = nil;
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    // The request has failed for some reason!
    // Check the error var
    connection = nil;
    dataFromResponse = nil;
    NSLog(@"Connection failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
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
