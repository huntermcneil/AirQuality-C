//
//  DVMPollution.m
//  AirQuality ObjC
//
//  Created by Hunter McNeil on 6/24/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import "DVMPollution.h"

@implementation DVMPollution

-(instancetype)initWithInt:(NSInteger)aqi
{
    
    self = [super init];
    
    if (self) {
        _airQualityIndex = aqi;
    }
    return self;
}

@end

@implementation DVMPollution (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSInteger aqi = [dictionary[@"aqius"] integerValue];
    return [self initWithInt:aqi];
}

@end
