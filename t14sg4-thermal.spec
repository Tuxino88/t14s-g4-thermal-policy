Name:		t14s-g4-thermal-policy
Version:	1
Release:	2
Summary:	personal thermal policy

License:	GPLv3+	
BuildArch:	noarch
Source0: 	thermal.tar.xz

Conflicts:	tlp*
Conflicts:	power-profiles-daemon
Conflicts:	tuned

%description
Thermal policy for thinkpad t14s gen4 i7 Vpro 1365U.

%prep
%autosetup -p1 -n thermal

%build

%install
mkdir -p %{buildroot}/usr/bin/
mkdir -p %{buildroot}/etc/udev/rules.d

cp -a %{_builddir}/thermal/t14s-ac.sh %{buildroot}/usr/bin/
cp -a %{_builddir}/thermal/t14s-bat.sh %{buildroot}/usr/bin/
cp -a %{_builddir}/thermal/99-cTDP.rules %{buildroot}/etc/udev/rules.d/




%files

%{_bindir}/t14s-ac.sh
%{_bindir}/t14s-bat.sh
%{_sysconfdir}/udev/rules.d/99-cTDP.rules

%changelog
none
