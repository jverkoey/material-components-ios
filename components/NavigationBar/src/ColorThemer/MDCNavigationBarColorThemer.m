/*
 Copyright 2017-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "MDCNavigationBarColorThemer.h"

@implementation MDCNavigationBarColorThemer

+ (void)applySemanticColorScheme:(nonnull id<MDCColorScheming>)colorScheme
                 toNavigationBar:(nonnull MDCNavigationBar *)navigationBar {
  [self applySemanticColorScheme:colorScheme
                 toNavigationBar:navigationBar
                    usingVariant:MDCNavigationBarColorThemerVariantPrimary];
}

+ (void)applySemanticColorScheme:(nonnull id<MDCColorScheming>)colorScheme
                 toNavigationBar:(nonnull MDCNavigationBar *)navigationBar
                    usingVariant:(MDCNavigationBarColorThemerVariant)variant {
  switch (variant) {
    case MDCNavigationBarColorThemerVariantPrimary:
      navigationBar.backgroundColor = colorScheme.primaryColor;
      navigationBar.titleTextColor = colorScheme.onPrimaryColor;
      navigationBar.tintColor = colorScheme.onPrimaryColor;
      break;

    case MDCNavigationBarColorThemerVariantSurface:
      navigationBar.backgroundColor = colorScheme.surfaceColor;
      navigationBar.titleTextColor = colorScheme.onSurfaceColor;
      navigationBar.tintColor = colorScheme.onSurfaceColor;
      break;
  }
}

+ (void)applyColorScheme:(id<MDCColorScheme>)colorScheme
         toNavigationBar:(MDCNavigationBar *)navigationBar {
  navigationBar.backgroundColor = colorScheme.primaryColor;
}

@end
