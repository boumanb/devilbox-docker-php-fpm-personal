# Devilbox PHP-FPM Community Images

[![lint](https://github.com/devilbox/docker-php-fpm-community/workflows/lint/badge.svg)](https://github.com/devilbox/docker-php-fpm-community/actions?workflow=lint)
[![Gitter](https://badges.gitter.im/devilbox/Lobby.svg)](https://gitter.im/devilbox/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Discourse](https://img.shields.io/discourse/https/devilbox.discourse.group/status.svg?colorB=%234CB697)](https://devilbox.discourse.group)
[![License](https://img.shields.io/badge/license-MIT-%233DA639.svg)](https://opensource.org/licenses/MIT)

**Available Architectures:**  `amd64`, `arm64`

Devilbox PHP-FPM community maintained docker images.

| Docker Hub | Upstream Project |
|------------|------------------|
| <a href="https://hub.docker.com/r/devilbox/php-fpm-community"><img height="82px" src="http://dockeri.co/image/devilbox/php-fpm-community" /></a> | <a href="https://github.com/cytopia/devilbox" ><img height="82px" src="https://raw.githubusercontent.com/devilbox/artwork/master/submissions_banner/cytopia/01/png/banner_256_trans.png" /></a> |


## :wrench: Projects

Find the currently available projects here. Click on the project for corresponding docker tags and more details.

<!-- PROJECTS_START -->
| Project                               | Author                                          | build                                         | Architecture                          | Docker Tag                   |
|---------------------------------------|-------------------------------------------------|-----------------------------------------------|---------------------------------------|------------------------------|
| :file_folder: [devilbox/]             | :octocat: [cytopia] (cytopia)                   | [![devilbox_build]](https://github.com/devilbox/docker-php-fpm-community/actions/workflows/devilbox_action.yml)<br/>[![devilbox_nightly]](https://github.com/devilbox/docker-php-fpm-community/actions/workflows/devilbox_action_schedule.yml)| :computer: amd64<br/>:computer: arm64 | `<V>-devilbox`               |
| :file_folder: [devilbox-docker-php-fpm-personal/]| :octocat: [boumanb] (Billy Bouman)              | [![devilbox-docker-php-fpm-personal_build]](https://github.com/devilbox/docker-php-fpm-community/actions/workflows/devilbox-docker-php-fpm-personal_action.yml)<br/>[![devilbox-docker-php-fpm-personal_nightly]](https://github.com/devilbox/docker-php-fpm-community/actions/workflows/devilbox-docker-php-fpm-personal_action_schedule.yml)| :computer: amd64<br/>:computer: arm64 | `<V>-devilbox`               |


[devilbox/]: Dockerfiles/devilbox
[cytopia]: https://github.com/cytopia
[devilbox_build]: https://github.com/devilbox/docker-php-fpm-community/workflows/devilbox_build/badge.svg
[devilbox_nightly]: https://github.com/devilbox/docker-php-fpm-community/workflows/devilbox_nightly/badge.svg
[devilbox-docker-php-fpm-personal/]: Dockerfiles/devilbox-docker-php-fpm-personal
[boumanb]: https://github.com/boumanb
[devilbox-docker-php-fpm-personal_build]: https://github.com/devilbox/docker-php-fpm-community/workflows/devilbox-docker-php-fpm-personal_build/badge.svg
[devilbox-docker-php-fpm-personal_nightly]: https://github.com/devilbox/docker-php-fpm-community/workflows/devilbox-docker-php-fpm-personal_nightly/badge.svg
> <sup> :information_source: `<V>` in the Docker tag above stands for the PHP version. E.g.: `5.4` or `8.1`, etc</sup>
<!-- PROJECTS_END -->


## :computer: Build

You can build the images locally via:
```shell
# Build PHP 5.2 of devilbox project
make build VERSION=5.5 FLAVOUR=devilbox

# Build PHP 5.2 of devilbox project (force arm64 arch)
make build VERSION=5.5 FLAVOUR=devilbox ARCH=linux/arm64
```


## :octocat: Contributing

You can easily and automatically generate your own project via:

```shell
make create-project
```

See **[Contributing guidelines](CONTRIBUTING.md)** for how to best update Docker images in this repository or how to create your own project and have it bundled<sup>[1]</sup> with this repository.

> <sup>[1] Every bundled project in this repository has automated CI pipelines including nightly builds.</sup>


## :page_facing_up: License

**[MIT License](LICENSE)**

Copyright (c) 2022 **[cytopia](https://github.com/cytopia)**
