/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */
namespace Facebook\XHP\SVG;

use namespace Facebook\XHP\ChildValidation as XHPChild;

xhp class feDisplacementMap extends element {

  attribute
    string clip,
    enum {
      'auto',
      'optimizeSpeed',
      'optimizeQuality',
      'inherit',
    } color-rendering,
    string enable-background,
    string fill,
    string font,
    enum {'auto', 'isolate'} isolation,
    unknown marker,
    unknown x,
    unknown y,
    string width,
    string height,
    string result,
    string in,
    string in2,
    unknown scale,
    unknown xChannelSelector,
    unknown yChannelSelector;

  protected string $tagName = 'feDisplacementMap';
}
