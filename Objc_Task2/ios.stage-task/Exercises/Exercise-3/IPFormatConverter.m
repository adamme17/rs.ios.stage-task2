#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray.count == 0) {
        return @"";
    }
    
    for (int i = 0; i < numbersArray.count; i++) {
        if ([numbersArray[i] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if ([numbersArray[i] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        }
    }
    
    NSMutableArray *muArr = [[NSMutableArray alloc]initWithArray:numbersArray];
    
    if (muArr.count > 4) {
        for (int j = 0; j < muArr.count - 3; j++) {
            [muArr removeLastObject];
        }
    }
    if (muArr.count < 4) {
        for (int k = 0; k < 4 - numbersArray.count; k++) {
            [muArr insertObject: @"0" atIndex: k + numbersArray.count];
        }
    }
    
    NSMutableString * result = [[muArr valueForKey:@"description"] componentsJoinedByString:@"."];
    
    
//    
//    [result insertString:@"." atIndex:3];
//    [result insertString:@"." atIndex:7];
//    [result insertString:@"." atIndex:9];
//    
    return result;
}

@end
