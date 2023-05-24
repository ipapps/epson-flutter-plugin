#import "Untitled4Plugin.h"
#import "ePOS2.h"

@implementation Bridge<Epos2DiscoveryDelegate>
//Function that returns 42
- (int) getEposStatus {
    filteroption_  = [[Epos2FilterOption alloc] init];
    [filteroption_ setDeviceType:EPOS2_TYPE_PRINTER];
    printerList_ = [[NSMutableArray alloc]init];
    int result = [Epos2Discovery start:filteroption_ delegate:self];
    return 42;
}

@end
