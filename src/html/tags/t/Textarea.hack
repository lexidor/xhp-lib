/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

namespace Facebook\XHP\HTML;

xhp class textarea extends pcdata_element {
  attribute
    enum {'on', 'off'} autocomplete,
    bool autofocus,
    int cols,
    string dirname,
    bool disabled,
    string form,
    int maxlength,
    int minlength,
    string name,
    string placeholder,
    bool readonly,
    bool required,
    int rows,
    enum {'soft', 'hard'} wrap;
  category %flow, %phrase, %interactive;
  protected string $tagName = 'textarea';
}
