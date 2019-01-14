//
//  NSObject+DeallocCallback.m
//  irobbin.me
//
//  Created by irobbin on 2018/12/24.
//  Copyright © 2018 irobbin.me. All rights reserved.
//

#import "NSObject+DeallocCallback.h"
#import <objc/runtime.h>

static char * dallocCallbackPropertyKey;

@implementation DALTriggerObject

- (void)dealloc {
    deallocCallback callback = self.deallocCallback;
    if (callback) {
        callback([_fatherInfo copy]);
    }
}

- (void)setFather:(NSObject *)father {
    self.fatherInfo = [NSString stringWithFormat:@"%@ %p", NSStringFromClass(father.class), father];
}

@end

@interface NSObject()

@property (nonatomic, strong) DALTriggerObject * stub;

@end

@implementation NSObject (DeallocCallback)

- (DALTriggerObject *)stub {
    DALTriggerObject * stub = objc_getAssociatedObject(self, &dallocCallbackPropertyKey);
    if (stub == nil) {
        stub = [[DALTriggerObject alloc] init];
        stub.father = self;
        [self setStub:stub];
    }
    return stub;
}

- (void)setStub:(DALTriggerObject *)stub {
    objc_setAssociatedObject(self, &dallocCallbackPropertyKey, stub, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)setDeallocCallback:(deallocCallback)deallocCallback {
    self.stub.deallocCallback = deallocCallback;
}


@end
