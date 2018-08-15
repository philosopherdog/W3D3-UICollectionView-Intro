//
//  WabiSabiCollectionViewCell.m
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

#import "WabiSabiCollectionViewCell.h"
#import "Photo.h"

@interface  WabiSabiCollectionViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end

@implementation WabiSabiCollectionViewCell

- (void)setPhoto:(Photo *)photo {
  self.photoImageView.image = photo.image;
  _photo = photo;
}


@end
