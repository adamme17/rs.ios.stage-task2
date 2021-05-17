#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
//    NSString *string = @"" ;
    
    NSMutableArray *arr = [NSMutableArray array];
    UInt8 result = '\0';
    
//    NSUInteger x = n;

    while (n > 0) {
        [arr addObject:@(n % 2)];
        n /= 2;
    }
    
    if (arr.count < 8) {
        for (long j = [arr count]; j < 8; j++) {
            [arr addObject:@0];
        }
    }
    
    NSMutableArray* reversedArr = [NSMutableArray arrayWithArray: [[arr reverseObjectEnumerator] allObjects]];
    
    for (int i = 0; i < reversedArr.count; i++) {
        result += [reversedArr[i] intValue] * pow(2, i);
    }
    
    
    
//    NSString *newString = @"%d";
//     for (int i = string.length-1; i >-1; i--) {
//       // get the substirng to append
//       NSString *charString = [string substringWithRange:NSMakeRange(i,1)];
//       // append to the new string
//       newString = [NSString stringWithFormat:@"%d", newString,charString];
//     }
//
    
    
//    const char* utf8String = [newString UTF8String];
//    const char* endPtr = NULL;
//    int foo = strtol( utf8String, &endPtr, 2);
    
    return result;
}
