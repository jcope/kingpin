//
//  DemoKingpin.m
//  iOS8
//
//  Created by Jeremy Cope on 6/23/15.
//  Copyright (c) 2015 Emma Technologies, L.L.C. All rights reserved.
//

#import "DemoKingpin.h"
#import "KpViewController.h"

@interface DemoKingpin ()
@property KpViewController* app;
@end

@implementation DemoKingpin

- (id)init{
    if (self = [super init]) {
        _app = [self createDemoApp];
    }
    return self;
}

-(KpViewController*)createDemoApp{
    KpViewController* app = [[KpViewController alloc] initWithNibName:@"ViewController" bundle:nil];

    return app;
}

#pragma mark - DemmoApp Delegate
-(NSString*)appName{
    return @"Kingpin";
}
-(NSString*)appDetail{
    return @"A drop-in MKAnnotation clustering library for iOS.";
}
-(UIImage*)appImage{
    return [UIImage imageNamed:@"KingpinScreenshot.png"];
}
-(UIViewController*)mainViewController{
    return _app;
}

@end
