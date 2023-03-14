\version "2.14.2"
\language "english"

\header {
    title = "Be Still"
    tagline = ##f
}


TenorMusic = \relative c' {
    \clef bass
    \key c \major
    \time 4/4
    \tempo "Dramatic, rubato" 4 = 72

    R1 R R R
    r8 g g g g b b g
    f1
    r8 g g g g e e g
    g( a) a2.
    r8 a a g g f f g
    b a a4 g8 b g b
    c4 r c8 c a a
    a4 c b2
    r8 g g g g e e g
    f1
    r8 g g g g e e g
    f4( a) a( gs)
    a r8 a g4 e8( g)
    c4 b g2
    r4 a8 g f4 a
    c2( b)

    \key ef \major
    R1
    r8 c, c d d ef ef f
    bf2. r4
    c c ef d
    ef8 r ef d c d d ef
    d1
    r4 c8 d ef d d c
    bf2. bf4
    af4. af8 bf2(
    c) r4 c

    \key c \major
    c1~
    c
    r2 r4 r8 g
    a4 b c d
    g,2. r4
    b a b c
    r8 f, f g g a a b
    d c c4 b8 g e g
    a4 r g8 a f f
    a4 c b2

    \key ef \major
    r8 bf bf bf bf g g bf
    af1
    r8 bf bf bf bf bf bf bf
    af4( c) c( b)
    c r8 c d4 g,8( bf)
    c4 d bf2
    r4 c8 bf af4 c
    c2( b4) r

    \key c \major
    r g d' c
    c2 c
    d8 r g,4 c c
    c2 c
    bf2. r4
    d2( f4) r
    e1(
    f)
    R R
    r8 g, g g g b b g
    f1
    r8 g g g g e e g
    a2 r4 g
    g2 r4 bf
    df r df2
    c1~
    c
}

TenorLyrics = \lyricmode {
    Be still and know that I am  God.
    Be still and know that I am with __ you.
    Be still and know that I will com -- fort you when you come to Me
    in your hour, your hour of need.
    Be still and know that I am God.
    Be still and know that I am here __ for __ you;
    and I will __ wipe your tears;
    you will be re -- newed. __ 
    Come un -- to Me, My child, be still.
    I will give you rest.
    I am pre -- sent in your pain
    and I al -- ways will re -- main your Com -- for -- ter __ and Friend. __ 
    Be still, know I am God. I am with you.
    Be still and know that I will com -- fort you when you come to Me
    in your hour, your hour of need.
    Be still and know that I am God.
    Be still and know that I am here __ for __ you;
    and I will __ wipe your tears;
    you will be re -- newed. __ 
    My peace I leave with you;
    My peave I give you.
    Peace. Peace. __ Peace. __ 
    Be still and know that I am God.
    Be still and know that I am God.
    Be still. Be still. Be still. __ 
}

\score {
    \new Staff \TenorMusic \addlyrics \TenorLyrics
}
