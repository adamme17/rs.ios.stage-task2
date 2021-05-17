#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger count = 0;
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array.count; j++) {
            NSInteger el = [[array objectAtIndex:i] intValue] - [[array objectAtIndex:j] intValue];
            if (el == [number intValue]) count++;
        }
        
    }
    
    return count;
}

@end
