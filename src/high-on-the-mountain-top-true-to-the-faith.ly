\version "2.24.0"
\language "english"

\header {
    title = "High on the Mountain Top / True to the Faith"
    tagline = ##f
}

TenorMusic = \relative c' {
    \tempo "With vigor" 4 = 104
    \clef bass
    \key g \major
    \time 2/2
    \partial 4

    r4 R1 R R R R R R
    r2 r4 d
    d b d d
    d2. d4
    d d d d
    d2. d4
    d d cs cs
    d2 d
    b4 b a a
    fs2. r4
    r d fs fs
    a2( g4) b
    b2 a
    a2. r4
    r fs g a
    g( c b) c
    b2 a4( c)
    b2. r4
    R1 R R R R R R R
    b2 b4 b
    b1
    b2 b4 b
    a1
    c2 c4. c8
    d2 g,4 a
    b1
    c
    b2. r4
    R1 R
    r2 r4 d,
    g g g a
    b2. a4
    b d c b
    a2. r4
    R1 R R R
    r4 d, fs fs
    a2( g4) b
    b2 a
    a2. r4
    r fs g a
    g( c b) c
    b2 a4( c)
    b2. r4
    R1 R R R R R
    d,2 g
    \time 4/4
    d'4 d d d8( b)
    ef4( c) d d8 c
    b4 b a g8( e)
    fs2. a8 gs
    a4 a e' ef
    d( cs) d d8 d
    d4 b a a
    \time 2/2
    c1
    c
    \key af \major
    R
    ef2 df
    af af4. af8
    af2 af4 af
    bf bf2 bf4
    bf4.( c8) df2
    bf bf4. bf8
    af4( df) c bf
    df df2 df4
    af4.( bf8) c2
    df df4. df8
    c1
    c2 c4. c8
    bf1
    df2 df4. df8
    c2 af4 bf
    c1
    df
    c ~
    c2 r
    R1 R
    df2 df4. df8
    c2 df4 df
    c1(
    af)
    bf ~
    bf
    af ~
    af ~
    af
    r2 r4
}

TenorLyrics = \lyricmode {
    High on the moun -- tain top
    A ban -- ner is un -- furled.
    Ye na -- tions  now look up;
    It waves to all the world.
    In De -- se -- ret’s __ sweet peace -- ful land,
    On Zi -- on’s mount __ __ be -- hold it __ stand.
    To God’s com -- mand,
    Soul, heart, and hand,
    Faith -- ful and true we will ev -- er stand.
    His house shall there be reared,
    His glo -- ry to dis -- play,
    We’ll now go up __ and serve the Lord,
    O -- bey His truth __ __ and learn His __ word.
    We will work out our sal -- va -- tion,
    We will cleave un -- to the __ truth.
    We will watch and pray and la -- bor with the fer -- vent zeal of youth,
    Yes! Yes! Yes!
    True to the faith that our par -- ents have cher -- ished,
    True to the truth __ for which mar -- tyrs have per -- ished,
    To God’s com -- mand,
    Soul, heart, and hand,
    Faith -- ful and true we will ev -- er stand. __ 
    Faith -- ful and true we will ev -- er __ stand! __ __ 
}

\score {
    \new Staff \with { instrumentName = Tenor }
    \TenorMusic \addlyrics \TenorLyrics
}
