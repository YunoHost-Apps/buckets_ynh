<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Buckets for YunoHost

[![Integration level](https://dash.yunohost.org/integration/buckets.svg)](https://dash.yunohost.org/appci/app/buckets) ![Working status](https://ci-apps.yunohost.org/ci/badges/buckets.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/buckets.maintain.svg)

[![Install Buckets with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=buckets)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Buckets quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

The relay service for the Buckets budgeting app

### Features

- No JavaScript or ads
- All requests go through the backend, client never talks to Twitter
- Prevents Twitter from tracking your IP or JavaScript fingerprint
- Uses Twitter's unofficial API (no rate limits or developer account required)
- Lightweight (for @nim_lang, 60KB vs 784KB from twitter.com)
- RSS feeds
- Themes
- Mobile support (responsive design)


**Shipped version:** 0.2.0.1~ynh1

**Demo:** https://relay.budgetwithbuckets.com/v1/
## Disclaimers / important information

### Configuration

* Installation in single user mode only for the moment
* The relay can't work behind the SSO, so it will be installed into public mode by default
## Documentation and resources

* Official app website: <https://budgetwithbuckets.com>
* Official admin documentation: <https://www.budgetwithbuckets.com/guide/app/sharing/>
* Upstream app code repository: <https://github.com/buckets/relay>
* YunoHost documentation for this app: <https://yunohost.org/app_buckets>
* Report a bug: <https://github.com/YunoHost-Apps/buckets_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/buckets_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/buckets_ynh/tree/testing --debug
or
sudo yunohost app upgrade buckets -u https://github.com/YunoHost-Apps/buckets_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
