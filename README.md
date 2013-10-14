puppet-cpanel
=============

Stripped down Puppet module for cPanel installations.

NOTE: this only manages the first installs of cpanel, it has no further impact on maintaining cpanel managed software e.g. perl, apache etc, i have also assumed that at the very least wget is available on the system - i've erred on the side of not making sure it is installed to avoid any conflicts for example if you have your own set of base packages defined in another module which includes wget

### Software installed:
* cPanel

### Optional Extras:
* SEO Attracta
* Softaculous
* Imagemagick

### Usage:

For basic install of cpanel (note this will take a long time!) - This wont break anything if applied to existing cpanel servers as it does a very basic check first to see if cpanel is installed

```puppet
class { 'cpanel':
}
```

or even simpler

```puppet
include cpanel
```

If you want to enable some of the optional features, simply call its subclass in addition to the core class, eg for softaculous:

```puppet
include cpanel::softaculous
```