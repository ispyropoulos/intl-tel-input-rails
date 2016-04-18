# intl-tel-input-rails

This gem is a simple wrapper for the [intl-tel-input](https://github.com/jackocnr/intl-tel-input)
library.

[![Gem Version](https://badge.fury.io/rb/intl-tel-input-rails@2x.png)](http://badge.fury.io/rb/intl-tel-input-rails)

## Installation

Add this line to your application's Gemfile:

    gem 'intl-tel-input-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install intl-tel-input-rails

## Usage

Add the following directive to your Javascript manifest file:

    //= require intlTelInput

Coffeescript flavor:

    #= require intlTelInput

If you need to initialize the plugin with the `utilsScript` (enable formatting/validation), add one more line:

    //= require libphonenumber/utils

Add the following directive to your Stylesheet manifest file:
    
    @import "intlTelInput";

Initialize the plugin when needed. Example:

```js
$("#id_of_your_input").intlTelInput({
    formatOnInit: true,
    separateDialCode: true,
    utilsScript: "assets/libphonenumber/utils.js"
});
```
More options for [initializing the plugin](https://github.com/jackocnr/intl-tel-input#options). You can ignore the `utilsScript` option if you have already required the `libphonenumber/utils` as stated above.

## Versioning

intl-tel-input-rails 8.4.9.x == intl-tel-input 8.4.9

Where x is used for gem fixes while keeping the same original library version.
