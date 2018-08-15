//
//  Photo.h
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

@import UIKit;

@interface Photo : NSObject
@property (nonatomic) UIImage *image;
- (instancetype)initWithImage:(UIImage *)image;
@end
