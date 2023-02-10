# Password generator

Author(s): Julio Estrada
Status: [Draft]
Last update: 09-02-2023

## Contents

- Links
- Objective
- Goals
- Non-goals
- Background
- Overview
- Detail design
    - Solution one
    - Solution two
- Considerations
- Metrics

## Links

- [Inspiration](https://www.youtube.com/watch?v=gRQIPvDFuts&t=6771s)
- [Password policy description](https://support.microsoft.com/en-us/windows/create-and-use-strong-passwords-c5cebb49-8c53-4f5e-2bc4-fe357ca048eb)

## Objective

- We are building this to give people an easy way to generate a strong password,
  mee up-to-date industry standards.

## Goals

- Build a strong password generator.
- Deploy it for free use.

## Non-goals

- Build a password vault.

## Background

My family has the worst cybersecurity habits and password complexity is one of them. Additionally, some days ago I
started to learn Elixir lang and that situation allows me to start a new practice with a real-life problem.

## Overview

- We need an easy-to-use strong password generator.
- Each user may specify the desired length of their password (with a minimum of 6), while adhering to the password
  security recommendations outlined for the project.

First version only will have complex string with numbers, symbols, uppercase and lowercase letters.

Characters allowed will be:

```text
A B C D E F G H I J K L M
N O P Q R S T U V W X Y Z
```

```text
a b c d e f g h i j k l m
n o p q r s t u v w x y z
```

```text
0 1 2 3 4 5 6 7 8 9
```

```text
! # $ % & ' ( ) * + , - . 
/ : ; < = > ? @ [ \ ] ^ _ 
` { | } ~
```

Additionally, a minimum of one character per list is required to meet the password requirements.

## Detail Design

### Solution one

### Solution two

## Considerations

- Initially, The application is building in elixir for learning purposes.
