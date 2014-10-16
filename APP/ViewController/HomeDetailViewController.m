//
//  HomeDetailViewController.m
//  Base
//
//  Created by Justin on 14/8/28.
//  Copyright (c) 2014年 wang shuguan. All rights reserved.
//

#import "HomeDetailViewController.h"
@import MapKit;
@import CoreLocation;
@interface HomeDetailViewController ()
//<CLLocationManagerDelegate,MKMapViewDelegate>
{
    
//    __weak IBOutlet MKMapView *_mapView;
//    CLLocationManager *locationManager;
}

@end
@interface MYAnnotation:NSObject< MKAnnotation >
+(id)annotationWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subTitle:(NSString *)subTitle;
@end
@implementation MYAnnotation
@synthesize coordinate,title,subtitle;
+(id)annotationWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subTitle:(NSString *)subTitle{
    MYAnnotation *n = [[MYAnnotation alloc] initWithTitle:title subTitle:subTitle coordinate:coordinate];
    return n;
}
-(id)initWithTitle:(NSString *)t subTitle:(NSString *)stitle coordinate:(CLLocationCoordinate2D)c{
    self = [super init];
    if (self) {
        title = t;
        subtitle = stitle;
        coordinate = c;
    }
    return self;
}
@end
@implementation HomeDetailViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
    
    
//    locationManager = [[CLLocationManager alloc] init];
//    locationManager.delegate = self;
//    locationManager.distanceFilter = 1000;
//    locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;
//    [locationManager startUpdatingLocation];
//    _mapView.showsUserLocation = YES;
}
//-(void)dealloc{
//    [locationManager stopUpdatingLocation];
//}
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
//    if (locations.count>0) {
//        CLLocation *l = locations[0];
//        URLLog(@"%f,%f",l.coordinate.latitude,l.coordinate.longitude);
//        [_mapView setCenterCoordinate:l.coordinate animated:YES];
//        [_mapView setRegion:MKCoordinateRegionMakeWithDistance(l.coordinate, 1000, 1000)];
//        [_mapView addAnnotation:[MYAnnotation annotationWithCoordinate:l.coordinate title:@"teset" subTitle:@"adsf"]];
//    }
//}
//#pragma mark - MKMapViewDelegate
//- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
//    // 重用
//    MKPinAnnotationView* pinView = (MKPinAnnotationView*)\
//    [mapView dequeueReusableAnnotationViewWithIdentifier:@"ID"];
//    if (pinView == nil)
//    {
//        pinView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
//                                                  reuseIdentifier:@"ID"];
//    }
//    
//    //能显示Call信息上面那些图字(很重要哦)
//    pinView.canShowCallout = YES;
//    
//    //只有三种
//    pinView.pinColor = MKPinAnnotationColorPurple;
//    
//    //显示动画 - 从天上落下
//    pinView.animatesDrop = YES;
//    UIButton* button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    pinView.rightCalloutAccessoryView = button;
//    return pinView;
//}
@end
