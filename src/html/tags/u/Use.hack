/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\HTML;

/**
* https://developer.mozilla.org/en-US/docs/Web/SVG/Element/use
*/
final xhp class use extends svg {
  attribute string xlink:href;
  protected string $tagName = 'use';
}