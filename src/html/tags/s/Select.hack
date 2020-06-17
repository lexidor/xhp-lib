/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\HTML;

use namespace Facebook\XHP\ChildValidation as XHPChild;

xhp class select extends element {
  use \XHPChildValidation;
  attribute
    bool disabled,
    string form,
    bool multiple,
    string name,
    bool required,
    int size;
  category %flow, %phrase, %interactive;

  protected static function getChildrenDeclaration(): XHPChild\Constraint {
    return XHPChild\anyNumberOf(
      XHPChild\anyOf(XHPChild\ofType<option>(), XHPChild\ofType<optgroup>()),
    );
  }

  protected string $tagName = 'select';
}
