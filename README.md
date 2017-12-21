# Demo to be used with CFMX_COMPAT

Demo of the CFMX_COMPAT algorithm within ColdFusion. 
This demo allows you to decrypt strings from a file using the CFMX_COMPAT algorithm.

The ColdFusion `encrypt()` and `decrypt()` functions also encode the result after encryption and automatically decode before decryption. This demo uses the CFMX_COMPAT ruby class that applies the same encoding and decoding behaviours as ColdFusion.

- Base64: the Base64 algorithm, as specified by IETF RFC 2045.
- Hex: the characters A-F0-9 represent the hexadecimal byte values.
- UU: the UUEncode algorithm (DEFAULT).

The Ruby demo here uses the [CFMX_COMPAT ruby implementation](https://github.com/globaldev/cfmx_compat) that is based on from one [found](https://github.com/getrailo/railo/blob/f0da69a7ad62fe760e40d9cd880bdecfd38a51d7/railo-java/railo-core/src/railo/runtime/crypt/CFMXCompat.java) in Railo and a [C# implementation](http://stackoverflow.com/a/4627069) of that.

## Install Ruby
    Follow instructions at [Ruby-Lang.org](https://www.ruby-lang.org/en/documentation/installation/)
    Note:  This version of the demo was tested with 2.2.5 Ruby. Be sure to update the cfmx_compat/.ruby-version before installing

## Installation 
    $ git clone git@github.com:globaldev/cfmx_compat.git
    $ cd cfmx_compat
    $ vi .ruby-version
    $ gem install cfmx_compat
    $ bundle

## Usage

    $ vi decrypt.rb #uncomment the section for UU, HEX, or BASE64 - defaults to UU.
    $ ./demo.rb or ./demo.rb > output.txt

## Results of uuu.txt decrypted
to_decrypt.txt:
328=Z]!/-3ZGA3>FL(:A0*9%^-@``
.?8YU]`Z(&XKK6*>B/,,`
%;8YHZ7<`

to_encrypt.txt:
plain text example
Denise Franke
Test


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License


