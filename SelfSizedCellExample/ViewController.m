//
//  ViewController.m
//  SelfSizedCellExample
//
//  Created by 钟天任 on 15/12/9.
//  Copyright © 2015年 钟天任. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate> {
    UITableView *tableV;
}

@end

static NSString *Identifier = @"asfd";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    tableV = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableV.frame = CGRectOffset(tableV.frame, 0, 20);
    tableV.delegate = self;
    tableV.dataSource = self;
    tableV.rowHeight = UITableViewAutomaticDimension;
    tableV.estimatedRowHeight = 100;
    [tableV registerNib:[UINib nibWithNibName:@"TestCell" bundle:nil] forCellReuseIdentifier:Identifier];
    
    [self.view addSubview:tableV];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.tLabel.text = @"fdjkdfsasdfsadfasdfsadf11";
            
            break;
        case 1:
            cell.tLabel.text = @"fdjkdfsafdjkdfsasdfsadfasdfsadfsdfsadfasdfsadf11";
            break;
        case 2:
            cell.tLabel.text = @"fdjkdfsasfdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadfdfsadfasdfsadf11";
            break;
        case 3:
            cell.tLabel.text = @"fdjkdfsasdffdjkdfsasdfsadfasdfsadffdjkdfsasdfsasdfsadfdfsasdfsadfdfsasdfsadfdfsasdfsadfdfsadfasdfsadffdjkdfsasdfsadfasdfsadffdjkdfsasdfsadfasdfsadfsadfasdfsadf1111";
            break;
            
        default:
            break;
    }
        return cell;
}


@end