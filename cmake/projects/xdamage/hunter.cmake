# Copyright (c) 2016 Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

# http://www.x.org/releases/individual/lib/
hunter_add_version(
    PACKAGE_NAME
    xdamage
    VERSION
    "1.1.4"
    URL
    "http://www.x.org/releases/individual/lib/libXdamage-1.1.4.tar.bz2"
    SHA1
    c3fc0f4b02dce2239bf46c82a5f06b06585720ae
)

hunter_configuration_types(xdamage CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT xdamage)
hunter_cacheable(xdamage)
hunter_download(
    PACKAGE_NAME xdamage
    PACKAGE_INTERNAL_DEPS_ID "1"
    PACKAGE_UNRELOCATABLE_TEXT_FILES
    "lib/pkgconfig/xdamage.pc"
    "lib/libXdamage.la"
)
