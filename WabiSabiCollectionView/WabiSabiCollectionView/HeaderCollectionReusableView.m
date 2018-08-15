//
//  HeaderCollectionReusableView.m
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

#import "HeaderCollectionReusableView.h"
#import "PhotoCategory.h"

@interface HeaderCollectionReusableView()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end


@implementation HeaderCollectionReusableView
//- (void)setPhotoCategory:(PhotoCategory *)photoCategory {
//  _photoCategory = photoCategory;
//}

- (void)configureWithCategory:(PhotoCategory *)category {
  self.label.text = category.name;
}

@end
