# qcom-diag-lisa
A simple Magisk module that enables the Qualcomm diag interface on Xiaomi 11 Lite 5G NE (lisa) custom ROMs.

# Requirements
```
simg2img
lpunpack
erofs-utils
```

# Compatibility
This has been tested on LineageOS 23.2 only, but it should work fine on other custom ROMs too.

Regardless of the ROM you're using, take a backup and precautions to avoid boot loops. The author assumes absolutely 0 responsibility.

# Installation
No pre-built bundles of this software are officially provided.

You have to build the Magisk module archive yourself following the instructions below.

## Gathering the base Magisk module files
Grab the full source code of this repo from the latest [GitHub Release](https://github.com/DottoXD/qcom-diag-lisa/releases).

The source code already contains the skeleton of the Magisk module, but it is missing a few proprietary core files.


## Obtaining an official `vendor.img`
You need to gather those core files from the `vendor.img` file inside any official Xiaomi HyperOS build.
qcom-diag-lisa has been tested with the files from HyperOS build `2.0.6.0.UKOEUXM`.

You can download the official ROM files from [Xiaomi Community](https://new.c.mi.com/global/miuidownload/detail/device/1900401).

## Extracting the image
Once you've downloaded the full ROM zip, extract the archive.

As soon as the archive has been extracted, open it and enter the "images" folder.

Now run the following command to convert `super.img` into `super.raw.img` (from sparse to raw):
```bash
simg2img super.img super.raw.img
```

Unpack the raw image with the following command:
```bash
mkdir unpack
lpunpack super.raw.img unpack
```

Enter the newly created `unpack` folder and run the following commands to unpack the vendor image:
```bash
mkdir vendor
fsck.erofs --extract=vendor vendor_a.img
```

We have now successfully extracted the vendor image containing the files we need. You now have to copy the following files:
```
vendor/bin/diag-router
vendor/lib64/vendor.qti.diaghal@1.0.so
vendor/etc/vintf/manifest/vendor.qti.diag.hal.service.xml
```

Into their respective folder inside the Magisk module's skeleton:
```
system/vendor/bin/
system/vendor/lib64/
system/vendor/etc/vintf/manifest/
```

Remove the .empty files (if you want to), compress the Magisk module's files and then flash the zip in Magisk.

Now, your diag interface (`/dev/diag` or `/dev/ffs-diag*/*`) should be working correctly!

# License
```
MIT License

Copyright (c) 2026 DottoXD

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```