//
//  DataManager.h
//  WabiSabiCollectionView
//
//  Created by steve on 2018-08-15.
//  Copyright © 2018 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Photo;
@class PhotoCategory;

@interface DataManager : NSObject
- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (Photo *)photoAtIndexPath:(NSIndexPath *)indexPath;
- (PhotoCategory *)photoCategoryAtIndexPath:(NSIndexPath *)indexPath;
@end
