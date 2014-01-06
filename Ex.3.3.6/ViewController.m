//
//  ViewController.m
//  Ex.3.3.6
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPageViewControllerDataSource>{
    NSArray *data;
}
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController



-(NSInteger)numberOfComponetsInPickerView: (UIPickerView*)pickerView{return 2;
}

-(NSInteger)pickerView: (UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(0 == component)
        
        return 10;
    else
        return [data count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if(0 == component){
        
        return [NSString stringWithFormat:@"Row: %d",row];
    }
    else {
        return  [data objectAtIndex:row];
    }
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSString *item = [self pickerView:pickerView titleForRow:row forComponent:component];
    _label.text = [NSString stringWithFormat:@"컴포넌트 %d 로우 %d, 항목:%@",  component,row,item];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


data = [[NSArray alloc]initWithObjects:@"Item1",@"Item2",@"Item3",@"Item4",@"Item5",  nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
