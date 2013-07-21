Install Essential Packages  Cookbook
=============
This cookbook install all of the debian packages that are essential for
doing development work on Insights, they include:
 
- `curl`
- `build-essential`
- `libyaml-dev`
- `libxml2`
- `libxml2-dev`
- `libxslt1-dev`
- `openssl`
- `libssl-dev`
- `bison`
- `libreadline6`
- `libreadline6-dev`
- `zlib1g`
- `zlib1g-dev`
- `autoconf`
- `libc6-dev`
- `ncurses-dev`
- `automake`
- `libtool`

Requirements
------------
This cookbook is designed to run on any Ubuntu installation greater than
or equal to 12.04

#### Required Packages
- `apt` - Apt is needed to ensure that we are installing the latest
version of these packages

Attributes
----------
#### install_essential_packages::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['default']['packages']</tt></td>
    <td>Array</td>
    <td>A list of the packages that you wish to install on the system</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### base::default
Just include `install_essential_packages` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[install_essential_packages]"
  ]
}
```

License and Authors
-------------------
Authors: Joseph DelCioppio
