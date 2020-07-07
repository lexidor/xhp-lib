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

xhp class text extends element {

  attribute
    string requiredExtensions,
    string systemLanguage,
    unknown lengthAdjust,
    unknown x,
    unknown y,
    // <length-percentage> or <number>
    mixed dx,
    // <length-percentage> or <number>
    mixed dy,
    unknown rotate,
    unknown textLength;

  protected string $tagName = 'text';
}
