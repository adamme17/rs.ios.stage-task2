#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    @try {
        
        if (array.count == 0) return @[];
        
        NSArray * flattenedArray = [array valueForKeyPath:@"@unionOfArrays.self"];
        
        return [flattenedArray sortedArrayUsingSelector:@selector(compare:)];
    }
    @catch (NSException *ex) {
        return @[];
    }
}

@end
