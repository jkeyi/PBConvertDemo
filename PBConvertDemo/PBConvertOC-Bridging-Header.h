//
//  PBConvertOC-Bridging-Header.h
//  PBConvertDemo
//
//  Created by ByteDance on 2025/5/8.
//

#ifndef PBConvertOC_Bridging_Header_h
#define PBConvertOC_Bridging_Header_h

#import <PBConvertFramework/pb_convert.h>

@interface PBConvert (Swift)
- (instancetype)initWithPBDescPath:(NSString*)pbDescPath;
@end

#endif /* PBConvertOC_Bridging_Header_h */
