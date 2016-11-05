//
//  Doctor.m
//  Patient_and_Doctor
//
//  Created by Justine Herman on 11/3/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "Doctor.h"


@interface Doctor()

@property (nonatomic) NSMutableSet *acceptedPatients;
@property (nonatomic) NSDictionary *medication;

@end

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _acceptedPatients = [[NSMutableSet alloc] init];
        _medication = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"Rizatriptan", @"Migraine",
                          @"Polysporin", @"Pink Eye",
                          @"Advil", @"Arthritis",
                          @"Loratadine", @"Ragweed Allergy", nil];
    }
    return self;
}

-(void)patientAcceptance:(Patient *)patient {
    if (patient.hasValidHealthCard) {
        [self.acceptedPatients addObject:patient];
        NSLog(@"%@", [NSString stringWithFormat:@"\n%@ accepted %@ as a patient.", self.name, patient.name]);
    } else {
        NSLog(@"\nSorry, %@ needs health insurance to see %@.", patient.name, self.name);
    }
}

-(void)requestMeds:(Patient *)patient {
    
    BOOL canReceiveMeds = false;
    
    if ([self.acceptedPatients containsObject:patient]) {
        canReceiveMeds = true;
        //
    } else if (patient.prescriptions.count > 0) {
        canReceiveMeds = true;
    }
    
    if ([self.acceptedPatients containsObject:patient]) {
        for (NSString *symptom in patient.symptoms) {
            [patient.prescriptions addObject:[self.medication objectForKey:symptom]];
            NSLog(@"\n%@ perscribed %@ for %@ to %@.", self.name, [self.medication objectForKey:symptom], symptom, patient.name);
        }
    } else {
        NSLog(@"\n%@ cannot perscribe medication to %@.", self.name, patient.name);
    }
}


@end





