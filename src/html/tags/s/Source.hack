/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\HTML;

xhp class source extends singleton {
  attribute
    string media,
    string sizes,
    string src,
    string srcset,
    string type;
  protected string $tagName = 'source';
}
