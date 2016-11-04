//
//  main.m
//  Patient_and_Doctor
//
//  Created by Justine Herman on 11/3/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *drDre = [[Doctor alloc] initWithName:@"Dr Dre" andSpecialization:@"General Pracitioner"];
        Doctor *drJekyll = [[Doctor alloc] initWithName:@"Dr Jekyll" andSpecialization:@"General Pracitioner"];
        Patient *johnDoe = [[Patient alloc] initWithName:@"John Doe" andAge:29 andHasValidHealthCard:YES];
        Patient *georgeSimpson = [[Patient alloc] initWithName:@"George Simpson" andAge:91 andHasValidHealthCard:YES];
        Patient *lauraMiller = [[Patient alloc] initWithName:@"Laura Miller" andAge:20 andHasValidHealthCard:NO];
        
        [drDre patientAcceptance:johnDoe];
        johnDoe.symptoms = [NSSet setWithObjects:@"Pink Eye", nil];
        [drDre requestMeds:johnDoe];
        
        [drJekyll patientAcceptance:lauraMiller];
        
        [johnDoe visitDoctor:drDre];
        [georgeSimpson visitDoctor:drJekyll];
        
    }
    return 0;
}
