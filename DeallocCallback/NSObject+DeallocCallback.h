//
//  NSObject+DeallocCallback.h
//  irobbin.me
//
//  Created by irobbin on 2018/12/24.
//  Copyright © 2018 irobbin.me. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^deallocCallback)(NSString * objInfo);

@interface DALTriggerObject : NSObject

@property (nonatomic, strong, nullable) deallocCallback deallocCallback;
@property (nonatomic, weak, nullable) NSObject * father;
@property (nonatomic, copy, nullable) NSString * fatherInfo;

@end

@interface NSObject (DeallocCallback)

- (void)setDeallocCallback:(deallocCallback)deallocCallback;

@end

NS_ASSUME_NONNULL_END
