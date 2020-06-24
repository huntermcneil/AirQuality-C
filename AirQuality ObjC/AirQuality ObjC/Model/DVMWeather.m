//
//  DVMWeather.m
//  AirQuality ObjC
//
//  Created by Hunter McNeil on 6/24/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import "DVMWeather.h"

@implementation DVMWeather

- (instancetype)initWithWeatherInfo:(NSInteger)temperature humidity:(NSInteger)humidity windSpeed:(NSInteger)windSpeed
{
    self = [super init];
    
    if (self) {
        _temperature = temperature;
        _humidity = humidity;
        _windSpeed = windSpeed;
    }
    return self;
 }
@end

@implementation DVMWeather (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSInteger temperature = [dictionary[@"tp"] integerValue];
    NSInteger humidity = [dictionary[@"hu"] integerValue];
    NSInteger windSpeed = [dictionary[@"ws"] integerValue];
    return [self initWithWeatherInfo:temperature humidity:humidity windSpeed:windSpeed];
}
@end
