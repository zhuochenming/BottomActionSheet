//
//  BottomActionSheet.h
//  BottomActionSheet
//
//  Created by Zhuochenming on 16/2/26.
//  Copyright © 2016年 Zhuochenming. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BottomActionSheet;
@protocol BottomActionSheetDelegate <NSObject>

@required
- (void)actionSheet:(BottomActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface BottomActionSheet : UIView

@property (nonatomic, weak) id<BottomActionSheetDelegate> delegate;

- (instancetype)initWithDelegate:(id<BottomActionSheetDelegate>)delegate
                       labelText:(NSString *)title
                     CancelTitle:(NSString *)cancelTitle
                     OtherTitles:(NSString *)otherTitles ,... NS_REQUIRES_NIL_TERMINATION;

- (void)show;

@end
