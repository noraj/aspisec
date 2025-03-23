# Installation

## Production

<!-- tabs:start -->

### **rubygems.org (universal)**

```bash
gem install aspisec
```

Gem: [aspisec](https://rubygems.org/gems/aspisec)

### **BlackArch**

!> **Warning**: TODO: not published yet

From the repository:

```bash
pacman -S aspisec
```

From git:

```bash
blackman -i aspisec
```

PKGBUILD: [aspisec](https://github.com/BlackArch/blackarch/blob/master/packages/aspisec/PKGBUILD)

### **ArchLinux**

Manually:

```bash
git clone https://aur.archlinux.org/aspisec.git
cd aspisec
makepkg -sic
```

With an AUR helper ([Pacman wrappers](https://wiki.archlinux.org/index.php/AUR_helpers#Pacman_wrappers)), eg. pikaur:

```bash
pikaur -S aspisec
```

AUR: [aspisec](https://aur.archlinux.org/packages/aspisec/)

<!-- tabs:end -->

## Development

It's better to use [ASDM-VM](https://asdf-vm.com/) to have the latest version of ruby and to avoid trashing your system ruby.

<!-- tabs:start -->

### **rubygems.org**

```bash
gem install --development aspisec
```

### **git**

Just replace `x.x.x` with the gem version you see after `gem build`.

```bash
git clone https://github.com/noraj/aspisec.git aspisec
cd aspisec
gem install bundler
bundler install
gem build aspisec.gemspec
gem install aspisec-x.x.x.gem
```

Note: if an automatic install is needed you can get the version with `$ gem build aspisec.gemspec | grep Version | cut -d' ' -f4`.

### **No install**

Run the library in irb without installing the gem.

From local file:

```bash
irb -Ilib-ruby -raspisec
```

Same for the CLI tool:

```bash
ruby -Ilib-ruby -raspisec bin-ruby/aspisec
```

<!-- tabs:end -->
