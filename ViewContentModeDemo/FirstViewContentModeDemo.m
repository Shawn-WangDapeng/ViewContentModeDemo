//
//  FirstViewContentModeDemo.m
//  ViewContentModeDemo
//
//  Created by 王鹏 on 9/1/15.
//  Copyright (c) 2015 dianping.com. All rights reserved.
//

#import "FirstViewContentModeDemo.h"


@interface FirstViewContentModeDemo ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIButton *fillButton;
@property (nonatomic, strong) UIButton *aspectFitButton;
@property (nonatomic, strong) UIButton *aspectFillButton;
@property (nonatomic, strong) UIButton *rightButton;
@end

@implementation FirstViewContentModeDemo

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *viewContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 300)];
    viewContainer.layer.borderWidth = 2.0f;
    viewContainer.layer.borderColor = [[UIColor greenColor] CGColor];
    [self.view addSubview:viewContainer];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 350, 250)];
    _imageView.image = [UIImage imageNamed:@"monkey"];
    _imageView.contentMode = UIViewContentModeCenter;
    _imageView.layer.borderColor = [[UIColor orangeColor] CGColor];
    _imageView.layer.borderWidth = 1.0f;
    [viewContainer addSubview:_imageView];
    
    _fillButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _fillButton.tag = 1;
    _fillButton.frame = CGRectMake(1, 410, 90, 30);
    _fillButton.backgroundColor = [UIColor blackColor];
    [_fillButton setTitle:@"scaleToFit" forState:UIControlStateNormal];
    _fillButton.titleLabel.font = [UIFont systemFontOfSize:10.0f];
    [self.view addSubview:_fillButton];
    
    _aspectFitButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _aspectFitButton.tag = 2;
    _aspectFitButton.frame = CGRectMake(110, 410, 90, 30);
    _aspectFitButton.backgroundColor = [UIColor blackColor];
    [_aspectFitButton setTitle:@"aspectToFit" forState:UIControlStateNormal];
    _aspectFitButton.titleLabel.font = [UIFont systemFontOfSize:10.0f];
    [self.view addSubview:_aspectFitButton];
    
    _aspectFillButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _aspectFillButton.tag = 3;
    _aspectFillButton.frame = CGRectMake(220, 410, 90, 30);
    _aspectFillButton.backgroundColor = [UIColor blackColor];
    [_aspectFillButton setTitle:@"aspectToFill" forState:UIControlStateNormal];
    _aspectFillButton.titleLabel.font = [UIFont systemFontOfSize:10.0f];
    [self.view addSubview:_aspectFillButton];
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _rightButton.tag = 4;
    _rightButton.frame = CGRectMake(1, 460, 90, 30);
    _rightButton.backgroundColor = [UIColor blackColor];
    [_rightButton setTitle:@"right" forState:UIControlStateNormal];
    _rightButton.titleLabel.font = [UIFont systemFontOfSize:10.0f];
    [self.view addSubview:_rightButton];
    
    
    
}

- (void)changeContentMode:(id)sender {
    UIButton *button = (UIButton *)sender;
    switch (button.tag) {
        case 1:
            self.imageView.contentMode = UIViewContentModeScaleToFill;
            break;
        case 2:
            self.imageView.contentMode = UIViewContentModeScaleAspectFit;
            break;
        case 3:
            self.imageView.contentMode = UIViewContentModeScaleAspectFill;
            break;
        case 4:
            self.imageView.contentMode = UIViewContentModeRight;
            break;
        default:
            break;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.rightButton addTarget:self action:@selector(changeContentMode:) forControlEvents:UIControlEventTouchUpInside];
    [self.aspectFillButton addTarget:self action:@selector(changeContentMode:) forControlEvents:UIControlEventTouchUpInside];
    [self.fillButton addTarget:self action:@selector(changeContentMode:) forControlEvents:UIControlEventTouchUpInside];
    [self.aspectFitButton addTarget:self action:@selector(changeContentMode:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
