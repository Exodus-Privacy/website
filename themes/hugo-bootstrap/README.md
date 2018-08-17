hugo-bootstrap
==============
A theme with bootstrap 4, font-awesome, highlightjs

*NOTE: This theme is copied inspired [Icarus] https://github.com/digitalcraftsman/hugo-icarus-theme
Feel free to make changes and open pull requests.*

You can find a live site using this theme [here](http://mmrath.com/).

## Screenshot

![preview](https://github.com/mmrath/hugo-bootstrap/blob/master/images/screenshot.png)

## Installation

```
$ cd your_site_repo/
$ mkdir themes
$ cd themes
$ git clone https://github.com/mmrath/hugo-bootstrap
```

See the [official Hugo themes documentation](http://gohugo.io/themes/installing) for more info.

## Usage

This theme expects a relatively standard Hugo blog/personal site layout:
```
.
└── content
    ├── post
    |   ├── post1.md
    |   └── post2.md
    ├── page
    |   ├── about-me.md
    |   ├── license.md
    └── other_page.md
```

Just run `hugo --theme=hugo-bootstrap` to generate your site!

## Configuration

Please see the config file of the example site in this repo for details of confguration.

### Hugo

An example of what your site's `config.toml` could look like. All theme-specific parameters are under `[params]` and standard Hugo parameters are used where possible.


## Questions, ideas, bugs, pull requests?

All feedback is welcome! Head over to the [issue tracker](https://github.com/mmrath/hugo-bootstrap/issues).

## License

Open sourced under the [MIT license](https://github.com/enten/hyde-y/blob/master/LICENSE).
