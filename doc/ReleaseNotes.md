<a href="https://omniosce.org">
<img src="https://omniosce.org/OmniOSce_logo.svg" height="128">
</a>

# Release Notes for OmniOSce v11 r151032

## r151032an (2020-08-04)
Weekly release for w/c 3rd of August 2020.
> This is a non-reboot update

# Changes

* Update `pkg` to fix bugs with conditional dependency handling.

<br>

---

## r151032am (2020-07-27)
Weekly release for w/c 27th of July 2020.
> This is a non-reboot update

# Changes

* Fix for race in multi-threaded python applications using wrapped TLS sockets

<br>

---

## r151032al (2020-07-20)
Weekly release for w/c 20th of July 2020.
> This is a non-reboot update

# Changes

 * Updated OpenJDK8 to 1.8.0\_262
 * Updated rsync to 3.2.2

<br>

---

## r151032ai (2020-07-01)
Weekly release for w/c 29th of June 2020.
> This is a non-reboot update

# Security Fixes

* Curl updated fixing
  [CVE-2020-8169](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-8169),
  [CVE-2020-9177](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-9177)

<br>

---

## r151032ah (2020-06-22)
Weekly release for w/c 22nd of June 2020.
> This update requires a reboot

# Security Fixes

* Intel microcode updated to 20200616.

<br>

---

## r151032af (2020-06-08)
Weekly release for w/c 8th of June 2020.
> This is a non-reboot update

# Security Fixes

* `perl` updated to 5.30.3 fixing
  [CVE-2020-10543](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-10543),
  [CVE-2020-10878](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-10878)
  and
  [CVE-2020-12723](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-12723).

* `nghttp2` patched fixing
  [CVE-2020-11080](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-11080).

<br>

---

## r151032ae (2020-06-01)
Weekly release for w/c 01st of June 2020.
> This is a non-reboot update

# Changes

* Fix bug in the `pkgdepend` package dependency generator.
  (Required to consistently build gate after 12708 is integrated)

<br>

---

## r151032ab (2020-05-11)
Weekly release for w/c 11th of May 2020.
> This update requires a reboot

# Security Fixes

* Fix for a kernel panic when running an NFS client within an lx-branded zone

# Other Changes

* `w` and `whodo` produced error messages about processes in non-global zones

* `onu` to illumos-gate now works with installed zones

* `pkglint` now detects duplicated pkg attributes in legacy actions

<br>

---

## r151032z (2020-04-25)
Weekly release for w/c 27th of April 2020.
> This update requires a reboot

# Security Fixes

* `openssl` updated to 1.1.1g

* `git` update to 2.23.3 fixing
  [CVE-2020-5260](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-5260)
  and
  [CVE-2020-11008](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-11008).

* [12523](https://www.illumos.org/issues/12523)
  Buffer overflow in `w` and `whodo`

# Other Changes

* `python` 2.7 updated to 2.7.18, the last python 2.7 release

* [11825](https://www.illumos.org/issues/11825)
   PKCS#11 CKM\_AES\_CBC\_PAD decryption can fail

* [12336](https://www.illumos.org/issues/12336)
  Boot hang caused by x2apic probe using incorrect local apic id

* [OS-8141](https://smartos.org/bugview/OS-8141)
  lx futex called with NULL timeout causes panic

<br>

---

## r151032w (2020-04-03)
Weekly release for w/c 06th of April 2020.
> This is a non-reboot update

# Changes

* `openssl` updated to 1.1.1f

<br>

---

## r151032v (2020-03-28)
Weekly release for w/c 30th of March 2020.
> This is a non-reboot update

# Changes

* `openssl` updated to 1.1.1e

* `fio` would crash on pre-haswell systems

<br>

---

## r151032p (2020-02-17)
Weekly release for w/c 17th of February 2020.
> This update requires a reboot

# Security Fixes

* sudo updated to fix
  [CVE-2019-18634](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-18634)

# Other Changes

* PKCS#11 CKM\_AES\_CBC\_PAD decryption could fail
  [illumos 11825](https://www.illumos.org/issues/11825)

* Fix for divide-by-zero bug in the i40e network driver
  [illumos 9601](https://www.illumos.org/issues/9601)

* Fix problem with the `hal-storage-mount` service where it would fail to
  mount things like Virtualbox guest additions

* Update `pkg` to better handle packages with broken metadata

<br>

---

## r151032l (2020-01-21)
Weekly release for w/c 20th of January 2020.
> This is a non-reboot update

# Changes

* It was not always possible to create a new boot environment from within a
  sparse-branded zone.

* Package information could not be viewed via the pkg/server HTTP server.

<br>

---

## r151032h (2019-12-23)
Weekly release for w/c 23rd of December 2019.
> This is a non-reboot update

# Security Fixes

* OpenSSL 1.0 updated to 1.0.2u, fixing
  [CVE-2019-1551](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-1551)

# Other Changes

* Installation media updated to fix an installer bug which caused the system
  domain name to be truncated to 20 characters.

* The beta UEFI 2.7 firmware for bhyve has been updated and should now work
  with more systems. This firmware can be selected by setting the *bootrom*
  zone attribute to *BHYVE_RELEASE-beta*

<br>

---

## r151032e (2019-12-03)
Weekly release for w/c 2nd of December 2019.
> This update requires a reboot.

# Security Fixes

* Update Intel CPU Microcode to 20191115.

# Other Changes

* KVM zones could lose network connectivity to other zones on the same
  machine.

* Improvements to support for recent Linux distributions in lx zones.

* Fixes to support for large (> 2TB) USB hard disks.

* Fixes for zfs diff between encrypted datasets.

* 8-bit colour modes did not work properly after boot.

* Several updates and bug fixes for SMB.

* make -C could cache wrong directory contents.

* Fix (rare) crash if zone root cannot be mounted during boot.

* OpenJDK updated to 1.8.0\_232-09.

<br>

---

## r151032b (2019-11-13)
Weekly release for w/c 11th of November 2019.
> This update requires a reboot

# Bug fixes

* Fix ZFS bug that could prevent pool import following an unclean export
  in certain circumstances -
  [illumos 11942](https://www.illumos.org/issues/11942)

* Changing the encryption key on dataset with unencrypted children caused
  a panic -
  [illumos 11880](https://www.illumos.org/issues/11880)

* Fix incremental recursive encrypted receive -
  [illumos 11872](https://www.illumos.org/issues/11872)

* Correct errors in timezone data

<br>

---

Stable Release, 4th of November 2019

`uname -v` shows `omnios-r151032-702376803e`

r151032 release repository: https://pkg.omniosce.org/r151032/core

## Upgrade Notes

When first rebooting to this new release, the system will automatically restart
once in order to upgrade the boot archive.

It is only possible to upgrade to this release from `r151030`. If starting from
an earlier release, upgrade in stages following the guide at
<https://omniosce.org/upgrade>

## New features since r151030

### System Features

* OmniOS now supports UEFI boot. Any existing system which has space for an
  EFI system partition (ESP) on the root pool disks will automatically become
  UEFI-boot enabled following upgrade.

* ZFS now has support for native encryption, allocation classes and more.

* Many improvements to the in-kernel SMB/CIFS support, including support for
  SMB3 and some Apple extensions for SMB2.

* It is now possible to disable Simultaneous Multithreading (SMT) /
  hyperthreading if desired. This can be done at runtime via `psradm -aS`
  or at boot time by adding `smt_enabled=0` to a file under `/boot/conf.d/`

* Support for plugabble TCP congestion control algorithms, configured via
  `ipadm`
  ```terminal
  omnios# ipadm show-prop tcp -p congestion_control
  PROTO PROPERTY              CURRENT      POSSIBLE
  tcp   congestion_control    sunreno      sunreno,newreno,cubic
  ```

* The new `C.UTF-8` locale is available. This has all the characteristics of
  the default C locale, other than having UTF-8 as its character map. It is
  useful when one needs to have default messages, default collation rules
  but take advantage of Unicode characters.

* Improvements to the Enlightened Hyper-V drivers for running under Hyper-V
  or Microsoft Azure.

* The default crypt algorithm for passwords is now SHA512 (it was previously
  SHA256).

* The OmniOS kernel is now built with retpolines and other mitigations against
  CPU side-channel attacks.

* The default resolution for the framebuffer console after boot is now
  1024x768 with a font size of 10x18. This can be overridden by creating a file
  under `/boot/conf.d/` assigning the desired values to the
  `boot_resolution` and `boot_font` variables. Available fonts can be seen
  in the `/boot/fonts/` directory.
  ```terminal
  omnios# cat /boot/conf.d/bootres
  boot_resolution=1280x1024
  boot_font=12x24
  ```
  To disable the framebuffer console and boot in VGA mode, set
  `boot_resolution` to `off`.

* Time specifications within crontab files can now include step values. For
  example, `*/2` in the minutes field means every two minutes. More complex
  expressions are possible, see the crontab(1) man page for more examples.

### Commands and Command Options

* A new `penv` command is available for viewing the environment of a process
  or core file; this is equivalent to `pargs -e`

* A new `pauxv` command is available for viewing the auxiliary vector of a
  process or core file; this is equivalent to `pargs -x`

* A new `connstat` command is available for monitoring per-connection
  TCP statistics.

* `netstat` now supports the `-u` option to show information about the
  process that is associated with open sockets.

* `nm` now supports the `-i` option to output symbols in the same order as
  they are present in the symbol table.

* `zoneadm list` now supports the `-n` option to show non-global zones
  only.

* `praudit` now supports the `-p` and `-g` flags in order that it can use
  a specified version of the *passwd* and *group* files when parsing audit
  logs.

* `ps` now supports the `-F` option which generates a full listing (as `-f`)
   but shows the full current process arguments and not the truncated start
   arguments. The current arguments may have changed since the process was
   started.
   ```
   omnios# ps -ef | grep sendmail
      smmsp   623     1   0 23:18:54 ? 0:00 /usr/lib/smtp/sendmail/sendmail -Ac -q15m
   omnios# ps -eF | grep sendmail
      smmsp   623     1   0 23:18:54 ? 0:00 sendmail: Queue runner@00:15:00 for /var/spool/clientmqueue
    ```

* `pgrep` and `pkill` also now support the `-F` option in addition to the
  existing `-f`. As for ps, this matches against and displays the current
  process arguments instead of the truncated start arguments.
  ```
   omnios# pgrep -Fl sendmail:
     623 sendmail: Queue runner@00:15:00 for /var/spool/clientmqueue
   omnios# pgrep -fl sendmail
     623 /usr/lib/smtp/sendmail/sendmail -Ac -q15m
  ```

* `ps auxww` no longer shows truncated process start arguments when run without
  root privileges; the output is now consistent regardless.

* `ptree` supports the new `-s` option to filter the output to processes
  started by an SMF service.

### LX zones

* Improved support for newer Linux distributions.

* The sendmmsg() and recvmmsg() system calls are now supported.

* Improved emulation of SO\_REUSEADDR.

* Support Linux congestion control interfaces.

### Bhyve

* Performance improvements.

* Support for emulated NVME devices.

* A bhyve guest will now receive multicast packets from the network.

* LSO support for virtual network interfaces.

* Beta bhyve UEFI firmware has been added.

### ZFS

* Support for native encryption.

* Support for
  [pool allocation classes](https://zfs.datto.com/2017\_slides/brady.pdf).

* ZFS now uses sorted scans (scrubs/resilvers) which can significantly
  improve performance of these operations.

* Support for specifying a desired `ashift` at pool creation time via
  `zpool create -o ashift=XX pool ...`. This can also be specified during
  device attach or replacement to override pool requirements at the expense
  of performance, which can be useful if it is necessary to add a 4K-sector
  drive to an existing pool with ashift=9.

### Hardware Support

* Several updates to the `nvme` driver to fix problems and increase
  hardware support.

* Updated `cxgbe` firmware.

* Several improvements to the `i40e` driver.

* Support for FTDI FT230XQ USB transceivers.

* Support for new Cascade Lake instructions.

* Support for XHCI polled mode support for USB keyboards.

### Installer

* Support for enabling UEFI boot during installation.

* New post-installation configuration option to enable the serial console.

* Automatically install hypervisor support packages if installing inside a
  virtual machine.

* `nvmeadm` is now available from the installer shell.

* `dmesg` now works from the installer shell.

### Developer Features

* The illumos components of OmniOS are now built with GCC 7.

* NMI behaviour can now be easily set at boot time via the `nmi` boot option.
  For example, placing `nmi=kmdb` in a file under `/boot/conf.d/` will select
  this behaviour on each boot.

* Improvements to, and new commands in, `mdb`.

* Improved CTF tools and new `developer/debug/ctf` package.

* Perl has been upgraded to 5.30.

* `nawk` has been updated - see
  [illumos issue 11552](https://www.illumos.org/issues/11552)
  for more details.

* A `python-37` package is now available. The next release of OmniOS will move
  to this version and deprecate the existing `python-35` package and
  associated modules.

* Extensions the Device Driver Interface (DDI) so that drivers have a standard
  mechanism for reporting firmware information.

* The `reallocf(3C)` function is now available.

### Deprecated features

* The gcc5 package has been removed from this release.

* Python 2.7 is deprecated and reaches end-of-support at the end of 2019.
  OmniOS has mostly transitioned to Python 3. A Python 2 package is still
  available but most previously-shipped modules have been obsoleted.

* OpenSSL 1.0.x is deprecated and reaches end-of-support at the end of 2019.
  OmniOS has completely transitioned to OpenSSL 1.1.1 but retains the
  OpenSSL 1.0.2 libraries for backwards compatibility.

### Package changes ([+] Added, [-] Removed, [\*] Changed)

| Package | Old Version | New Version |
| :------ | :---------- | :---------- |
| compress/bzip2 | 1.0.7 | 1.0.8
| data/iso-codes | 4.2 | 4.3
| database/sqlite-3 | 3.28.0 | 3.29.0
| ~~developer/gcc5~~ | 5.5.0 | _Removed_
| developer/parser/bison | 3.3.2 | 3.4.2
| developer/swig | 3.0.12 | 4.0.1
| developer/versioning/git | 2.21.0 | 2.23.0
| developer/versioning/mercurial | 4.9.1 | 5.1.1
| **driver/cpu/sensor** | _New_ | 0.5.11
| editor/vim | 8.1.1413 | 8.1.1909
| file/gnu-findutils | 4.6.0 | 4.7.0
| library/c++/sigcpp | 2.99.12 | 3.0.0
| library/glib2 | 2.60.0 | 2.62.0
| library/ncurses | 6.1.20190323 | 6.1.20190921
| library/nghttp2 | 1.37.0 | 1.39.2
| library/python-2/setuptools-27 | 40.8.0 | 41.2.0
| library/python-3/cffi-35 | 1.12.2 | 1.12.3
| library/python-3/cheroot-35 | 6.5.4 | 6.5.8
| library/python-3/cherrypy-35 | 18.1.1 | 18.2.0
| library/python-3/contextlib2-35 | 0.5.5 | 0.6.0
| library/python-3/coverage-35 | 4.5.3 | 4.5.4
| library/python-3/cryptography-35 | 2.6.1 | 2.7
| library/python-3/jsonschema-35 | 3.0.1 | 3.0.2
| library/python-3/mako-35 | 1.0.8 | 1.1.0
| library/python-3/meson-35 | 0.50.1 | 0.51.2
| library/python-3/more-itertools-35 | 7.0.0 | 7.2.0
| library/python-3/portend-35 | 2.3 | 2.5
| library/python-3/pycurl-35 | 7.43.0.2 | 7.43.0.3
| library/python-3/pyrsistent-35 | 0.14.11 | 0.15.4
| library/python-3/pytz-35 | 2019.1 | 2019.2
| library/python-3/setuptools-35 | 40.8.0 | 41.2.0
| **library/python-3/setuptools-37** | _New_ | 41.2.0
| library/python-3/tempora-35 | 1.14 | 1.14.1
| library/python-3/zc.lockfile-35 | 1.4 | 2.0
| network/dns/bind | 9.11.6 | 9.11.11
| network/openssh | 7.9.1 | 8.0.1
| network/openssh-server | 7.9.1 | 8.0.1
| **network/socat** | _New_ | 1.7.3.3
| runtime/perl | 5.28.2 | 5.30.0
| runtime/perl-64 | 5.28.2 | 5.30.0
| runtime/perl/manual | 5.28.2 | 5.30.0
| **runtime/python-37** | _New_ | 3.7.4
| service/network/ntpsec | 1.1.3 | 1.1.7
| service/network/smtp/dma | 0.11 | 0.12
| shell/bash | 5.0.9 | 5.0.11
| shell/tcsh | 6.20.0 | 6.21.0
| system/bhyve/firmware | 20180309 | 20190904
| system/cpuid | 1.7.2 | 1.7.3
| **system/header/header-drm** | _New_ | 0.5.11
| system/library/dbus | 1.12.12 | 1.12.16
| system/library/libdbus | 1.12.12 | 1.12.16
| **system/network/tests** | _New_ | 0.5.11
| system/pciutils/pci.ids | 2.2.20190312 | 2.2.20190911
| system/test/fio | 3.13 | 3.16
| system/virtualization/azure-agent | 2.2.41 | 2.2.42
| terminal/tmux | 2.8 | 2.9.1
| text/gawk | 5.0.0 | 5.0.1
| text/gnu-gettext | 0.19.8.1 | 0.20.1
| text/less | 530 | 551

