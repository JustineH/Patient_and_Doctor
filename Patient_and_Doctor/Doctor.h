//
//  Doctor.h
//  Patient_and_Doctor
//
//  Created by Justine Herman on 11/3/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;


-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
-(void)patientAcceptance:(Patient *)patient;
-(void)requestMeds:(Patient *)patient;

@end
