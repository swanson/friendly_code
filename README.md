# Friendly Code
Generate user-friendly, pseudo-random codes without ambiguous letters or numbers (e.g. 0 vs O vs o).

### Why not just use `SecureRandom.guid`?
For scenarios where only computers will be interacting, this is probably the way to go. But when the interaction involves a human, we want to remove ambiguity to improve accessibility and ease of reading and entering data.

Use cases:
* Entering code sent via SMS into a web page or app
* Entering code from printed material into a web page or app

## Installation
[![Gem Version](https://badge.fury.io/rb/friendly_code.svg)](https://badge.fury.io/rb/friendly_code)
Add it to your Gemfile:

```ruby
gem 'friendly_code'
```

Run the following command to install it:

```console
bundle install
```

## Usage

Generate codes in your application:

```ruby
require 'friendly_code'
FriendlyCode.generate
=> "QQ6C46"

FriendlyCode.generate(8)
=> "TRRT47W4"
```

## Guidelines
This gem generates codes that are all UPPERCASE. However, your application should allow the user to enter the code with any casing (including mixed casing).

By default, the gem will return codes that are 6 digits in length. 

Based on the available characters (below) and length of 6, there are 17^6 unique permutations (~24 Million). It is still recommended that you check for and handle the possibility of duplicates in your application.

You should try to strike a balance between length of the code and how many unique combinations you need. It will be tedious to make your users enter a 35 character code so make this decision with forethought. You can always increase the code length if you are starting to run out of codes or generate collisions.

## Character Set Considerations
Valid character set:
3 6 7 C D F G H J K M N P R T W X

Ambiguous characters are characters that could be confused with another character. Vowels are removed to reduce the chance of generating actual words.

0 => Ambiguous (O, Q)
1 => Ambiguous (I, l)
2 => Ambiguous (Z)
3
4 => Ambiguous (A)
5 => Ambiguous (S)
6
7
8 => Ambiguous (B)
9 => Ambiguous (g)
A => Ambiguous (4), Vowel
B => Ambiguous (8)
C
D
E => Vowel 
F
G
H
I => Ambiguous (1, l), Vowel
J
K
L => Ambiguous (1, I)
M
N
O => Ambiguous (0, Q)
P
Q => Ambiguous (Q)
R
S => Ambiguous (5)
T
U => Ambiguous (V), Vowel
V => Ambiguous (U, Y)
W
X
Y => Vowel, Ambiguous (V)
Z => Ambiguous (2)

## Development Instructions
Install development dependencies and run the tests with:

```console
bundle install
rake
```