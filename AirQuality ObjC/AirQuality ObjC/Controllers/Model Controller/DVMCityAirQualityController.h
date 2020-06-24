//
//  DVMCityAirQualityController.h
//  AirQuality ObjC
//
//  Created by Hunter McNeil on 6/24/20.
//  Copyright © 2020 RYAN GREENBURG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DVMCityAirQuality.h"

NS_ASSUME_NONNULL_BEGIN

@interface DVMCityAirQualityController : NSObject

+ (void)fetchSupportedCountries:(void (^) (NSArray<NSString *> *_Nullable, NSError *error)) completion;

+ (void)fetchSupportedStatesInCountry:(NSString *)country completion:(void (^) (NSArray<NSString *> *_Nullable, NSError *error)) completion;

+(void)fetchSupportedCitiesInState:(NSString *)state country:(NSString *)country completion:(void (^) (NSArray<NSString *> *_Nullable, NSError *error))completion;

+(void)fetchDataForCity:(NSString *)city state:(NSString *)state country:(NSString *)country completion:(void (^) (DVMCityAirQuality *_Nullable, NSError *error))completion;

@end

NS_ASSUME_NONNULL_END
