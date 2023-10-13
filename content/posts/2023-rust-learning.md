---
title: "Rust Learning Resources"
date: 2023-10-13T00:00:00-00:00
tags: [rust]
description: "Thoughts and recommendations on resources for people looking to learn Rust"
---

I've used Rust as a primary language since 2019, and I've been managing
developers using Rust as a primary language since 2021.

For developers new to the language it can seem intimidating at first, but there
are a number of helpful resources available to newer Rust developers to help
understand the more complicated topics.

These resources are all available for free unless otherwise noted. This is not
at all an exhaustive list but it's the things that I've noticed over the years
and my thoughts on them.

# Books

## [The Rust Programming Language](https://doc.rust-lang.org/book/index.html) (aka “The book”)

This was the primary Rust learning material for several years. Written by Steve
Klabnik and Carol Nichols-Goulding, this covers every major feature a
professional Rust developer will need from hello world to a multithreaded web
server from scratch. This book is freely available to anyone online via the link
provided.

## (paid) [Rust in Action](https://www.manning.com/books/rust-in-action)

Tim McNamara's book walks you through building a CPU in Rust to teach
intermediate programmers how to build real systems.

## (paid, biased) [Refactoring to Rust](https://www.manning.com/books/refactoring-to-rust)

This book about incrementally adding Rust to new software projects was written
by me and Joel Holmes. While not directly intended to teach readers every Rust
concept, its intended audience is developers from other programming languages
with limited exposure to the language. Its earlier chapters take the time to
teach important concepts like lifetimes, ownership, traits, error handling and
more.

# Exercises

## [Rustlings](https://github.com/rust-lang/rustlings)

This official project of the Rust foundation is a collection of short Rust
coding exercises that you can do to familiarize yourself with reading and
writing Rust.

## [Excercism Rust track](https://exercism.org/tracks/rust)

Exercism is a free programming exercise site that was one of the first to offer
a Rust track. Their exercises are designed to walk you through learning Rust,
but it may have been eclipsed by other resources at this point.

## (paid) [Ultimate Rust Crash Course](https://www.udemy.com/course/ultimate-rust-crash-course/)

A junior engineer on my team took this course and I was able to see their
learning as they progressed through it. I don't think it's a particularly good
course for people looking to _learn programming_, it glosses over a lot of
fundamental concepts rather quickly. The ownership video for example is 6
minutes long, followed by a 5 minute long references video, and I don't see any
video labeled as talking about lifetimes. That being said, it's quite well
reviewed which makes me think that it may be a good resource for experienced
developers looking to _transition_ into Rust programming.

# Documentation

Learning to read and understand documentation is a critical piece of software
development that is often overlooked. Due to the complex nature of Rust’s strict
type system, auto-generated documentation is often able to walk users through
how to use a crate via clicking the links between methods and types.

You should take some time to familiarize yourself with the structures of the
documentation and learn how to navigate them. Rust crates tend to have large API
surfaces, and you can be a much more effective developer by learning how to
explore APIs via documentation than by trying to rote-memorize the subset of the
API you’re currently using.

There are two key resources that all Rust developers should be familiar with.

## [Standard Library docs](https://doc.rust-lang.org/std/index.html)

The Rust standard library docs contain all of the types/functions/modules
contained in the standard library.

## [docs.rs](https://docs.rs)

Once a side project, now an official part of the Rust foundation, http://docs.rs hosts
auto-generated documentation for every crate published on http://crates.io. You can
navigate to http://docs.rs/CRATE-NAME and get access to the documentation for that
crate, including past versions.

# Videos

In addition to great written content, there is quite some amount of video
content available if you prefer to learn by watching.

## [Official Rust Youtube](https://www.youtube.com/@RustVideos/playlists)

Rust has an official Youtube channel that has video recordings of not just
internal meetings, but also full talks from many Rust conferences like Rustconf,
EuroRust, RustFest, and more!

## [fasterthanlime](https://www.youtube.com/@fasterthanlime)

Amos has a youtube channel where he delves into some more advanced and
interesting Rust topics.

## [Tim McNamara](https://www.youtube.com/timClicks)

Tim makes a _ton_ of Rust learning resources of various types. His youtube
channel is a great resource if you like video content.

## [My Youtube Channel](https://www.youtube.com/@lily-mara)

I don’t post videos often (ever), but I do have some videos on Rust development
that may be interesting.
