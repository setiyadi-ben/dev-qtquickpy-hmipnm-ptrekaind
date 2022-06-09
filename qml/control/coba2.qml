import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../control" //import folder qml untuk kustom button

Item {
    elemen {
    }
    taggd__button {
      width: 20
      height: 20
      background: #fff
      border: 5
      borderradius: 100
      webkitanimation: pulse white 2s ease-out infinite;
      animation: pulse-white 2s ease-out infinite;
      -moz-transition: all .2s ease-out 0;
      -o-transition: all .2s ease-out 0;
      -webkit-transition: all .2s ease-out;
      -webkit-transition-delay: 0;
      transition: all .2s ease-out 0;
    }
    taggd__button {
      display: block;
      height: 100%;
      width: 100%;
      padding: 0;
      border: 0;
      margin: 0;
      background-color: rgba(0,0,0,.25);
      background-image: none;
      text-align: left;
    }
    button, html input[type="button"], input[type="reset"], input[type="submit"] {
      -webkit-appearance: button;
      cursor: pointer;
      *overflow: visible;
    }
    button, select {
      text-transform: none;
    }
    button, input {
      line-height: normal;
    }
    button, html, input, select, textarea {
      font-family: sans-serif;
    }
    *, ::after, ::before {
      box-sizing: border-box;
      outline: none;
    }
    .text-center {
      text-align: center;
    }
    body {
      font-family: Manrope,sans-serif !important;
      text-rendering: optimizeLegibility;
      font-variant-ligatures: common-ligatures;
      -webkit-text-size-adjust: 100%;
      -moz-text-size-adjust: 100%;
      font-size: 14px;
      color: #727272;
      font-style: normal;
      font-kerning: normal;
      font-feature-settings: "onum" 1,"kern" 1;
    }
    html {
      color: #000;
      font-size: 100%;
      -webkit-text-size-adjust: 100%;
    }
    0% {
      box-shadow: 0 0 #fff;
      transform: scale(1);
    }
    50% {
      box-shadow: 0 0 0 8px transparent;
      transform: scale(1.1);
    }
    100% {
      box-shadow: 0 0 transparent;
      transform: scale(1);
    }
    0% {
      box-shadow: 0 0 #b02222;
      transform: scale(1);
    }
    50% {
      box-shadow: 0 0 0 8px #f0eeeead;
      transform: scale(1.1);
    }
    100% {
      box-shadow: 0 0 #0004ff;
      transform: scale(1);
    }
    margin
    border
    padding
    11.6×11.6
    21.2×21.2
    static
      box-sizing
      border-box
      display
      block
      float
      none
      line-height
      normal
      position
      static
      z-index
      auto
}
}
