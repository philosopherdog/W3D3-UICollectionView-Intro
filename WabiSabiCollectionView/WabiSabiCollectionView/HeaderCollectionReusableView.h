//
//  HeaderCollectionReusableView.h
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoCategory;

@interface HeaderCollectionReusableView : UICollectionReusableView
//@property (nonatomic) PhotoCategory *photoCategory;
- (void)configureWithCategory:(PhotoCategory *)category;
@end
