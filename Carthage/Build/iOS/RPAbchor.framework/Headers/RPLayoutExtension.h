//
//  RPLayoutExtension.h
//  StudentsMarch
//
//  Created by rp.wang on 2020/10/29.
//  Copyright © 2020 西安博信信息科技有限公司. All rights reserved.
//

#ifndef RPLayoutExtension_h
#define RPLayoutExtension_h

#define rp_weakSelf(object) autoreleasepool   {} __weak  typeof(object) weak##object = object;
#define rp_strongSelf(object) autoreleasepool {} __strong  typeof(weak##object) object = weak##object;

#endif /* RPLayoutExtension_h */
