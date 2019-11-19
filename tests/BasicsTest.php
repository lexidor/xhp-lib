<?hh // strict
/*
 *  Copyright (c) 2004-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 *
 */

use function Facebook\FBExpect\expect;

class :test:renders-primitive extends :x:element {
  protected function render(): XHPRoot {
    return <x:frag><div>123</div></x:frag>;
  }
}

class BasicsTest extends Facebook\HackTest\HackTest {
  public function testDivWithString(): void {
    $xhp =
      <div>
        Hello, world.
      </div>;
    expect($xhp->toString())->toBeEqual('<div> Hello, world. </div>');
  }

  public function testFragWithString(): void {
    $xhp = <x:frag>Derp</x:frag>;
    expect($xhp->toString())->toBeEqual('Derp');
  }

  public function testDivWithChild(): void {
    $xhp = <div><div>Herp</div></div>;
    expect($xhp->toString())->toBeEqual('<div><div>Herp</div></div>');
  }

  public function testInterpolation(): void {
    $x = "Herp";
    $xhp = <div>{$x}</div>;
    expect($xhp->toString())->toBeEqual('<div>Herp</div>');
  }

  public function testXFrag(): void {
    $x = 'herp';
    $y = 'derp';
    $frag = <x:frag>{$x}{$y}</x:frag>;
    expect($frag->getChildren()->count())->toBeEqual(2);
    $xhp = <div>{$frag}</div>;
    expect($xhp->toString())->toBeEqual('<div>herpderp</div>');
  }

  public function testEscaping(): void {
    $xhp = <div>{"foo<SCRIPT>bar"}</div>;
    expect($xhp->toString())->toBeEqual('<div>foo&lt;SCRIPT&gt;bar</div>');
  }

  public function testElement2Class(): void {
    expect(:xhp::element2class('div'))->toBeEqual(:div::class);
  }

  public function testClass2Element(): void {
    expect(:xhp::class2element(:div::class))->toBeEqual('div');
  }

  public function testRendersPrimitive(): void {
    $xhp = <test:renders-primitive />;
    expect($xhp->toString())->toBeEqual('<div>123</div>');
  }

  public function testJsonSerialize(): void {
    $xhp = <div>Hello world.</div>;
    expect(json_encode(varray[$xhp]))->toBeEqual(
      '["<div>Hello world.<\/div>"]',
    );
  }
}
