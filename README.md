# CAS Metabase Builder image

[![CircleCI](https://circleci.com/gh/bcgov/cas-ggircs-metabase-builder.svg?style=svg)](https://circleci.com/gh/bcgov/cas-ggircs-metabase-builder)

This repository contains the code creating a s2i builder image for the [Metabase](github.com/metabase/metabase) project, allowing you to deploy a version of Metabase built from source to OpenShift.

The [cas-ggircs-metabase-builder](openshift/build/buildconfig/cas-ggircs-metabase-builder.yml) build config creates an image based on the [Dockerfile](Dockerfile).

The dockerfile installs the build dependencies for metabase (OpenJDK 8, NodeJS, Yarn, Leiningen), and git (which is needed to help with incremental builds, see below).

It also copies the s2i scripts (located in docker/metabase-builder/s2i/) into `$STI_SCRIPTS_PATH` (which is defined in the base docker image).

The resulting image is used by the [cas-ggircs-metabase-build](github.com/bcgov/cas-ggircs-metabase-build) repository.
