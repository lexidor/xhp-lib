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

xhp class rect extends element {

  attribute
    string requiredExtensions,
    string systemLanguage,
    float pathLength,
    float x,
    float y,
    string width,
    string height,
    unknown rx,
    unknown ry;

  protected string $tagName = 'rect';
}
