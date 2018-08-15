//
//  Photo.m
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

#import "Photo.h"

@implementation Photo
- (instancetype)initWithImage:(UIImage *)image {
  if (self = [super init]) {
    _image = image;
  }
  return self;
}
@end
