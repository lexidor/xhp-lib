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

xhp class symbol extends element {

  attribute
    string preserveAspectRatio,
    unknown viewBox,
    // enum{...} or float
    unknown refX,
    // enum{...} or float
    unknown refY,
    float x,
    float y,
    string width,
    string height;

  protected string $tagName = 'symbol';
}
