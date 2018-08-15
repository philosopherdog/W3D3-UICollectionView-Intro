  //
  //  PhotoCategory.m
  //  WabiSabiCollectionView
  //
  //  Created by steve on 2018-08-15.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import "PhotoCategory.h"
#import "Photo.h"

@implementation PhotoCategory
- (instancetype)initWithName:(NSString *)name {
  if (self = [super init]) {
    _name = name;
    [self setupPhotosWithName:name];
  }
  return self;
}

- (void)setupPhotosWithName:(NSString *)name {
  NSString *lowerCaseName = name.lowercaseString;
  NSMutableArray<Photo*>*temp = [NSMutableArray array];
  for (NSInteger i = 1; i < 7; ++i) {
    NSString *imageName = [NSString stringWithFormat:@"%@0%ld", lowerCaseName, i];
    UIImage *image = [UIImage imageNamed:imageName];
    Photo *photo = [[Photo alloc] initWithImage:image];
    [temp addObject:photo];
  }
  _photos = [temp copy];
}

@end
