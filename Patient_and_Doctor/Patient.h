//
//  Patient.h
//  Patient_and_Doctor
//
//  Created by Justine Herman on 11/3/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;


@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) NSSet *symptoms;
@property (nonatomic) NSMutableArray *prescriptions;
@property (nonatomic) BOOL hasValidHealthCard;

-(instancetype)initWithName:(NSString *)name andAge:(int)age andHasValidHealthCard:(BOOL)healthCard;
-(void)visitDoctor:(Doctor *)doctor;

@end
