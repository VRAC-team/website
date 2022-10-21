# VRAC website

## install

```
    sudo apt install ruby ruby-dev

    echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc

    gem install jekyll bundler

    bundle install
```

## run

> $ bundle exec jekyll serve --livereload

## dependencies

https://github.com/ganlanyuan/tiny-slider

## thumbnails generation

> $ ./generate_thumbnails.sh
