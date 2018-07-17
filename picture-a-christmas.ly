% Picture a Christmas
% coded by William Jackson <william@subtlecoolness.com>
% last update 2018-03-31

\version "2.18.2"
\language "english"

\paper {
    #(set-paper-size "letter")
    left-margin = 0.5\in
    bottom-margin = 0.5\in
    top-margin = 0.5\in
    right-margin = 0.5\in
    system-system-spacing #'minimum-distance = #15
    last-bottom-spacing #'minimum-distance = #15
}

\header {
    title = "Picture a Christmas"
    subtitle = "A cappella duet for men"
    poet = \markup {
        \column {
            \line {Patricia Kelsey Graham}
            \line {additional lyrics by William Jackson}
        }
    }
    composer = \markup {
        \right-column {
            \line {Patricia Kelsey Graham}
            \line {arr. William Jackson}
        }
    }
    tagline = ##f
    copyright = \markup {
        \center-column {
            \line {© 2017 William Jackson}
            \line {This work may be copied for incidental, noncommercial church or home use.}
        }
    }
}

BassOneMusic = \relative c {
    \clef bass
    \key c \major
    \time 4/4
    \tempo  4 = 98

    % 1
    a'2( f
    d4 c b) \tuplet 3/2 { b8 c d }
    e4 e f d
    a' g2 \tuplet 3/2 { e8 f g }

    %5
    a4 a b a
    g2. c,4
    a' a g4. g8
    f4 f e4. c8

    %9
    a'4 g f e
    d2. \breathe \tuplet 3/2 { b8 c d }
    e4 e f d
    a' g2 \tuplet 3/2 { e8 f g }

    %13
    a4 a b e,
    c'2. a4
    c c b4. a8
    c4 g g\fermata e8 g

    %17
    a4 a d8 c~ c b
    c1
    a2( f
    d4 c b) \breathe \tuplet 3/2 { b8 c d }

    %21
    e4 e f d
    a' g2 \tuplet 3/2 { e8 f g }
    a4 a b a
    g2. c,4

    %25
    a' a g4. g8
    f4 f e4. c8
    a'4 g f e
    d2. \breathe \tuplet 3/2 { b8 c d }

    %29
    e4 e f d
    a' g2 \tuplet 3/2 { e8 f g }
    a4 a b e,
    c'2. a4

    %33
    c c b4. a8
    c4 g g\fermata e8 g
    a4 a d8 c~ c b
    c1

    %37
    a2( f
    d4 c b) \breathe \tuplet 3/2 { b8 c d }
    e4 e f d
    a' g2 \tuplet 3/2 { e8 f g }

    %41
    a4 a b a
    g2. c,4
    a' a g4. g8
    f4 f e4. c8

    %45
    a'4 g f e
    d2. \breathe \tuplet 3/2 { b8 c d }
    e4 e f d
    a' g2 \tuplet 3/2 { e8 f g }

    %49
    a4 a b e,
    c'2. a4
    c c b4. a8
    c4 g g\fermata e8 g

    %53
    a4 a d8 c~ c b
    c2. \breathe e,8 g
    a2 a
    d4 c~ c b

    %57
    c1~
    c
}

BassTwoMusic = \relative c {
    \clef bass
    \key c \major
    \time 4/4

    %1
    r4 c2( a4
    g2 f')
    c2( d4 g,
    c2 bf)

    %5
    f'2( g,
    c1)
    f2( d4 c~
    c b c2)

    %9
    f4( e d c
    f,2 g)
    c( d4 g,
    c2 bf)

    %13
    f'2( e
    a,2.) a4
    f4 c' f4. f8
    c4 b a\fermata r

    %17
    d2.( g,4
    c4) r8 c( d4 e) 
    f( c2 a4
    g2 f'4) \breathe \tuplet 3/2 { g,8 a b }

    %21
    c4 c d g,
    c2 bf4 \tuplet 3/2 { c8 d e }
    f4 f g, g
    c2. c4

    %25
    f f d( c8) c8
    c4 b c4. c8
    f4 e d c
    f,2( g4) \breathe \tuplet 3/2 { g8 a b }

    %29
    c4 c d g,
    c2 bf4 \tuplet 3/2 { c8 d e }
    f4 f e e
    a,2. a4

    %33
    f c' f4. f8
    c4 b a\fermata a8 a
    d4 d g, g8 g
    c4 r8 c( d4 e) 

    %37
    f( c2 a4
    g2 f'4) \breathe \tuplet 3/2 { g,8 a b }
    c4 c d g,
    c2 bf4 \tuplet 3/2 { c8 d e }

    %41
    f4 f g, g
    c2. c4
    f f d( c8) c8
    c4 b c4. c8

    %45
    f4 e d c
    f,2( g4) \breathe \tuplet 3/2 { g8 a b }
    c4 c d g,
    c2 bf4 \tuplet 3/2 { c8 d e }

    %49
    f4 f e e
    a,2. a4
    f c' f4. f8
    c4 b a\fermata a8 a

    %53
    d4 d g, g8 g
    c2. \breathe a8 a
    d2 d
    g, g4 g

    %57
    e'2( f
    e1)
}

BassOneLyrics = \lyricmode {
    Oo __
    Pic -- ture a sta -- ble in Ju -- de -- a.
    Pic -- ture a sa -- cred si -- lent night.
    And can you hear
    The an -- gels near
    And see the star so bright?

    Pic -- ture the lit -- tle ba -- by Je -- sus.
    Think of his life and words so dear.
    Sing praise to him; Re -- mem -- ber him,
    As you pic -- ture Christ -- mas this year.

    Oo __
    Pic -- ture the kind and gen -- tle Jo -- seph.
    Pic -- ture the mo -- ther Mar -- y, fair.
    And can you see
    So rev -- 'rent -- ly
    The shep -- herds kneel -- ing there?

    Pic -- ture the lit -- tle ba -- by Je -- sus.
    Think of his life and words so dear.
    Sing praise to him;
    Re -- mem -- ber him,
    As you pic -- ture Christ -- mas this year.

    Oo __
    Pic -- ture the ser -- vice you can of -- fer.
    Pic -- ture the com -- fort you can give.
    The gifts you bring
    To Christ the King
    Are in the life you live.

    Pic -- ture the lit -- tle ba -- by Je -- sus.
    Think of his life and words so dear.

    Sing praise to him;
    Re -- mem -- ber him,
    As you pic -- ture Christ -- mas this year,
    As you pic -- ture Christ -- mas this year. __
}

BassTwoLyrics = \lyricmode {
    Oo __
    Oo __
    Oo __
    Oo __
    Oo __
    Oo __
    Oo __
    Sing praise to him;
    Re -- mem -- ber him,
    Oo __
    Oo __

    Oo __
    Pic -- ture the kind and gen -- tle Jo -- seph.
    Pic -- ture the mo -- ther Mar -- y, fair.
    And can you see
    So rev -- 'rent -- ly
    The shep -- herds kneel -- ing there?

    Pic -- ture the lit -- tle ba -- by Je -- sus.
    Think of his life and words so dear.
    Sing praise to him;
    Re -- mem -- ber him,
    As you pic -- ture Christ -- mas this year.

    Oo __
    Oo __
    Pic -- ture the ser -- vice you can of -- fer.
    Pic -- ture the com -- fort you can give.
    The gifts you bring
    To Christ the King
    Are in the life you live.

    Pic -- ture the lit -- tle ba -- by Je -- sus.
    Think of his life and words so dear.

    Sing praise to him;
    Re -- mem -- ber him,
    As you pic -- ture Christ -- mas this year,
    As you pic -- ture Christ -- mas this year. __
}

\score {
    \new ChoirStaff
    <<
        \new Staff \with {
            instrumentName = "Tenor "
            shortInstrumentName = "T "
        }
        \BassOneMusic
        \addlyrics \BassOneLyrics

        \new Staff \with {
            instrumentName = "Bass "
            shortInstrumentName = "B "
        }
        \BassTwoMusic
        \addlyrics \BassTwoLyrics
    >>

    \layout { }
    \midi { }
}
