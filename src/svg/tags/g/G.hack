/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */
namespace Facebook\XHP\SVG;

use namespace Facebook\XHP\HTML;
use namespace Facebook\XHP\ChildValidation as XHPChild;

xhp class g
  extends element
  implements Cat\ContainerElement, Cat\RenderableElement, Cat\StruturalElement {
  use \XHPChildValidation;

  attribute
    string requiredExtensions,
    string systemLanguage;

  protected static function getChildrenDeclaration(): XHPChild\Constraint {
    return XHPChild\anyNumberOf(XHPChild\anyOf(
      XHPChild\ofType<Cat\AnimationElement>(),
      XHPChild\ofType<Cat\DescriptiveElement>(),
      XHPChild\ofType<Cat\PaintServerElement>(),
      XHPChild\ofType<Cat\ShapeElement>(),
      XHPChild\ofType<Cat\StruturalElement>(),
      XHPChild\ofType<a>(),
      // technically incorrect, we may only allow `SVG\a`
      // but let's not punish you for using the wrong `<a>`
      XHPChild\ofType<HTML\a>(),
      XHPChild\ofType<HTML\audio>(),
      XHPChild\ofType<HTML\canvas>(),
      XHPChild\ofType<clipPath>(),
      XHPChild\ofType<filter>(),
      XHPChild\ofType<foreignObject>(),
      XHPChild\ofType<HTML\iframe>(),
      XHPChild\ofType<image>(),
      XHPChild\ofType<marker>(),
      XHPChild\ofType<mask>(),
      XHPChild\ofType<HTML\script>(),
      XHPChild\ofType<HTML\style>(),
      XHPChild\ofType<namespace\switch>(),
      XHPChild\ofType<text>(),
      XHPChild\ofType<HTML\video>(),
      XHPChild\ofType<view>(),
    ));
  }

  protected string $tagName = 'g';
}
