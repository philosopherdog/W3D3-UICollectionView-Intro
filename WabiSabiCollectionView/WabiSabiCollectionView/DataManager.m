//
//  DataManager.m
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

#import "DataManager.h"
#import "PhotoCategory.h"
#import "Photo.h"

@interface DataManager()
@property (nonatomic)NSArray<PhotoCategory *>*categories;
@end

@implementation DataManager
- (instancetype)init {
  if (self = [super init]) {
    [self setupCategories];
  }
  return self;
}

- (void)setupCategories {
  PhotoCategory *ceramic = [[PhotoCategory alloc] initWithName:@"Ceramic"];
  PhotoCategory *zen = [[PhotoCategory alloc] initWithName:@"Zen"];
  PhotoCategory *nature = [[PhotoCategory alloc] initWithName:@"Nature"];
  self.categories = @[ceramic, zen, nature];
}

- (NSInteger)numberOfSections {
  return self.categories.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
  PhotoCategory *category = self.categories[section];
  return category.photos.count;
}

- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath {
  // get the category at the section
  PhotoCategory *category = self.categories[indexPath.section];
  // get the photo at the row/item of that section
  Photo *photo = category.photos[indexPath.item];
  return photo;
}

- (PhotoCategory *)photoCategoryAtIndexPath:(NSIndexPath *)indexPath {
  NSInteger section = indexPath.section;
  return self.categories[section];
}
@end
