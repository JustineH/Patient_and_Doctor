//
//  Patient.m
//  Patient_and_Doctor
//
//  Created by Justine Herman on 11/3/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(int)age andHasValidHealthCard:(BOOL)healthCard;
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasValidHealthCard = healthCard;
        _prescriptions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)visitDoctor:(Doctor *)doctor {

    [doctor patientAcceptance:self];
    
}

@end
