rpm-packaging
=============
##Task 1: create perl-5.20 RPM

Download latest [perl 5.20.0](http://www.cpan.org/src/5.0/perl-5.20.0.tar.gz) and create an RPM package for CentOS 6.5 i386/x86_64.

You'll need to setup local CentOS ([Vagrant](http://www.vagrantup.com) could be useful here), install `rpmbuild`, and `createrepo` utilities, write `perl-5.20.0.el6.spec` file to build your own `perl-5.20.0.el6.{arch}.rpm`.

After all your spec files should be commited to this GitHub repo :)

**Warining:** Note, that CentOS comes with [perl-5.10.1](http://isoredirect.centos.org/centos/6/os/x86_64/Packages/perl-5.10.1-136.el6.x86_64.rpm) and new package should be installed to `/opt/`.

###Materials
For reference: [perl-5.18.2-299.fc21.src.rpm](http://dl.fedoraproject.org/pub/fedora/linux/development/rawhide/source/SRPMS/p/perl-5.18.2-299.fc21.src.rpm) contains both sources and spec file to needed to build package. Could be passed directly to `rpmbuild` tool.
##Documentation

###RedHat Package Manager usage
[RPM and YUM package management](http://www.ibm.com/developerworks/library/l-lpic1-v3-102-5/)

###Building RPM's
[Packaging software with RPM, Part 1: Building and distributing packages](http://www.ibm.com/developerworks/library/l-rpm1/)

[Packaging software with RPM, Part 2: Upgrading and uninstalling software](http://www.ibm.com/developerworks/linux/library/l-rpm2/index.html)

[Packaging software with RPM, Part 3: Accommodating software dependencies](http://www.ibm.com/developerworks/linux/library/l-rpm3/index.html)

[How to create an RPM package](https://fedoraproject.org/wiki/How_to_create_an_RPM_package)