% I Love the Lord
% coded by William Jackson <william@subtlecoolness.com>
% last update 2013-10-15

\version "2.14.2"
\language "english"

\paper {
    #(set-paper-size "letter")
    left-margin = 15
}

\header {
    title = "I Love the Lord"
    poet = \markup {
        \column {
            "poetic paraphrase of"
            "II Nephi 4 by"
            "John S. Tanner"
        }
    }
    composer = "Jean Sibelius"
    arranger = "arr. R. Staheli"
    tagline = ##f
}

TenorOneMusic = \relative c' {
    \clef "treble_8"
    \key f \major
    \time 2/2
    \tempo "Andante" 4 = 120
    r4^\mf^"warm, undriven sound" a g a
    bf2 r4 a
    g a f4. g8 
    g4( a2.)
    r4 a g a \break
    bf2. a4
    g a f4. g8
    a1
    r4 c c c
    d2 r4 a \break
    a c c4. g8
    g4( bf2.)
    r4 bf a g
    a2. f4
    f g g4. a8 \break
    a1
    r4 c c c
    d2. a4
    a c c4. g8
    g4( bf2.) \break
    r4 bf4 a g
    a2. f4
    f g g4. f8
    f1\fermata \bar "||"

    \key bf \minor
    R \break
    R R R R R \break
    R R R R R \break
    R R R R R \break
    R R R R R \break
    R R R \bar "||"

    \key a \major
    \mark \markup { \musicglyph #"scripts.caesura.straight" }
    r4^"bright, rich, brilliant" cs'^\f b cs \break
    d2. cs4
    b cs a4. b8
    b4( cs2.)
    r4 cs b cs
    d2. cs4 \break
    b cs a4. b8
    cs1(
    cs4) e e e
    fs2 r4 cs
    cs e e4. b8 \break
    b4( d2.)
    r4 d cs b
    cs2. a4
    a b b r8 cs--
    cs1 \break
    r4 e^"piu forte" e e
    fs2. cs4
    cs e e4. b8
    b4( d2.)
    r4 d cs b \break
    cs2. a4
    a b b r8 a--
    a1\fermata

    \override BreathingSign #'text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
    \breathe
    r4^\pp^"slower, very free" a g a
    bf2 r4 a \break
    g a f4. g8--
    a1 \bar "|."
}

TenorTwoMusic = \relative c' {
    \clef "treble_8"
    \key f \major
    \time 2/2
    r4^\mf a g f
    f2 r4 a
    g a f4. g8
    g4( a2.)
    r4 a g f
    f2. a4
    g a f4. g8
    a1
    r4 a a a
    a2 r4 a
    a a a4. g8
    g1
    r4 g fs g
    a2. f4
    f f e4. e8
    e1
    r4 a a a
    a2. a4
    a a a4. g8
    g1
    r4 g fs g
    a2. f4
    f g g4. f8
    f1\fermata

    \key bf \minor
    R
    R R R R R
    R R
    r4 af^\mp\< af af
    bf2.^\f f4
    f af af4. ef8
    ef4( gf2.)
    r4 gf f ef
    f2. df4
    df ef ef4. f8
    f1
    R R R R R
    R R R

    \key a \major
    \mark \markup { \musicglyph #"scripts.caesura.straight" }
    r4 a^\f a a
    a2. a4
    gs a a4. gs8
    gs4( a2.)
    r4 a a a
    a2. a4
    gs a a4. gs8
    a4 \breathe e a b
    cs cs cs cs
    cs2 r4 a
    a cs cs4. b8
    b1
    r4 b as b
    cs2. a4
    a b a r8 gs--
    gs1
    r4 cs^"piu forte" cs cs
    cs2. a4
    a cs cs4. b8
    b1
    r4 b as b
    a2. e4
    <e a> q <e gs> r8 e--
    e1\fermata

    \override BreathingSign #'text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
    \breathe
    r4^\pp e4 e e
    f2 r4 e
    d e f4. f8--
    e1
}

TenorMusic = \partcombine \TenorOneMusic \TenorTwoMusic

BassOneMusic = \relative c {
    \clef bass
    \key f \major
    \time 2/2
    r4^\mf f e f
    d2 r4 f
    f f d4. e8
    e4( f2.)
    r4 f e f
    d2. f4
    f f d4. e8
    f1
    r4 f f f
    f2 r4 f
    f e e4. e8
    e4( d2.)
    r4 d d d
    f2. c4
    d d d4. cs8
    cs1
    r4 f4 f f
    f2. f4
    f e e4. e8
    e4( d2.)
    r4 d d d
    f2. c4
    f f e4. f8
    f1\fermata

    \key bf \minor
    r4 f^\p ef f
    gf2 r4 f
    ef f df4. ef8
    ef4( f2.)
    r4 f ef f
    gf2 r4 f
    ef f df4. ef8
    f1~\<
    f4 f f f
    f2.^\f f4
    f af af4. ef8
    ef4( gf2.)
    r4 gf f ef
    f2. df4
    df df df4. c8
    c1
    r4 af'4^\mp af af
    bf2 r4 f
    f af af4. ef8
    ef4( gf2.)
    r4 gf\> f ef
    f2 r4 df
    df ef ef4. df8
    df1^\p\fermata

    \key a \major
    \mark \markup { \musicglyph #"scripts.caesura.straight" }
    r4 e^\f d e
    fs2. e4
    e e fs4. d8
    e1
    r4 e d e
    fs2. e4
    e e fs4. d8
    e4 \breathe e cs e
    a a a <gs a>
    <fs a>2 r4 fs
    fs gs gs4. gs8
    gs4( fs2.)
    r4 fs fs fs
    a2. e4
    fs fs fs r8 es--
    es1
    r4 a^"piu forte" a <gs a>
    <fs a>2. fs4
    fs gs gs4. gs8
    gs4( fs2.)
    r4 fs fs fs
    e2. cs4
    cs d d r8 cs--
    cs1\fermata

    \override BreathingSign #'text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
    \breathe
    r4^\pp cs b cs
    d2 r4 cs
    b cs d4. d8--
    cs1
}

BassTwoMusic = \relative c {
    \clef bass
    \key f \major
    \time 2/2
    r4 c c c
    c2 r4 c
    bf c c4. c8
    c1
    r4 c c c
    c2. c4
    bf c c4. c8
    c1
    r4 f f e
    d2 r4 d
    d a a4. c8
    c4( g2.)
    r4 g a bf
    c2. a4
    bf bf bf4. a8
    a1
    r4 f f' e
    d2. d4
    d a a4. c8
    c4( g2.)
    r4 g4 a bf
    c2. a4
    a c c4. c8
    f,1\fermata

    \key bf \minor
    R
    R R R R R
    R
    r4 ef'^\mp\< af gf
    f ef df c
    bf2.\f bf4
    bf df df4. af8
    af4( bf2.)
    r4 bf bf c
    df2. df4
    bf bf gf4. f8
    f1
    R R R R R
    R R R

    \key a \major
    \mark \markup { \musicglyph #"scripts.caesura.straight" }
    r4 a^\f a a
    a2. a4
    d cs d4. b8
    b4( a2.)
    r4 a a a
    a2. a4
    d cs d4. b8
    a1(
    a4) a a gs
    fs2 r4 fs
    fs cs' cs4. e8
    e4( b2.)
    r4 b cs d
    e2. cs4
    d d d r8 cs--
    cs1
    r4 a^"piu forte" a gs
    fs2. fs4
    fs cs' cs4. e8
    e4( b2.)
    r4 b cs d
    e2 <e, e'>
    q4 q q r8 a--
    a1\fermata

    \override BreathingSign #'text = \markup {
        \musicglyph #"scripts.caesura.straight"
    }
    \breathe
    r4^\pp a a a
    a2. a4
    a a a4. bf8--
    a1
}

BassMusic = \partcombine \BassOneMusic \BassTwoMusic

LyricsVerseOneA = \lyricmode {
    I love the Lord. In him my soul de -- lights.
}

LyricsVerseOneB = \lyricmode {
    Up -- on his word, I pon -- der day and night.
    He’s heard my cry, brought vis -- ions to my sleep,
    And kept me safe o’er des -- erts and the deep.
    He’s filled my heart with his con -- sum -- ing love,
    And borne me high on wings of his great dove.
}

LyricsVerseTwoA = \lyricmode {
    Yet oft I groan, “O wretch -- ed man am I!”
    My flesh is weak and I’m en -- com -- passed by
}

LyricsVerseTwoB = \lyricmode {
    A world of sin, which holds me in its thrall,
}

LyricsVerseTwoC = \lyricmode {
    A world of sin, a world of sin, which holds me in its thrall,
}

LyricsVerseTwoD = \lyricmode {
    If I give in and to temp -- ta -- tions fall.
}

LyricsVerseTwoE = \lyricmode {
    Then strength grows slack, I waste in sor -- row’s vale.
    My peace des -- troyed, my en -- e -- mies pre -- vail.
}

LyricsVerseThreeA = \lyricmode {
    A -- wake, my soul! No long -- er droop in sin.
}

LyricsVerseThreeB = \lyricmode {
    Re -- joice, my heart! And let me praise a -- gain
}

LyricsVerseThreeC = \lyricmode {
    Re -- joice, my heart! And let me praise a -- gain, O let me praise
}

LyricsVerseThreeD = \lyricmode {
    The Lord my God, who is my rock and stay
    To keep me strict up -- on his straight, plain way.
    O let me shake at the first sight of sin
    And thus es -- cape my foes with -- out and in.
}

TenorOneLyrics = {
    \LyricsVerseOneA
    \LyricsVerseOneB
    \LyricsVerseThreeA
    \LyricsVerseThreeB
    \LyricsVerseThreeD
    \LyricsVerseOneA
}

TenorTwoLyrics = {
    \LyricsVerseOneA
    \LyricsVerseOneB
    \LyricsVerseTwoB
    \LyricsVerseTwoD
    \LyricsVerseThreeA
    \LyricsVerseThreeC
    \LyricsVerseThreeD
    \LyricsVerseOneA
}

BassOneLyrics = {
    \LyricsVerseOneA
    \LyricsVerseOneB
    \LyricsVerseTwoA
    \LyricsVerseTwoB
    \LyricsVerseTwoD
    \LyricsVerseTwoE
    \LyricsVerseThreeA
    \LyricsVerseThreeC
    \LyricsVerseThreeD
    \LyricsVerseOneA
}

BassTwoLyrics = {
    \LyricsVerseOneA
    \LyricsVerseOneB
    \LyricsVerseTwoC
    \LyricsVerseTwoD
    \LyricsVerseThreeA
    \LyricsVerseThreeB
    \LyricsVerseThreeD
    \LyricsVerseOneA
}

\score {
    <<
        \new ChoirStaff
        <<
            \new Staff \with {
                instrumentName = #"Tenor I "
                shortInstrumentName = #"T I "
            }
            \TenorOneMusic
            \addlyrics \TenorOneLyrics

            \new Staff \with {
                instrumentName = #"Tenor II "
                shortInstrumentName = #"T II "
            }
            \TenorTwoMusic
            \addlyrics \TenorTwoLyrics

            \new Staff \with {
                instrumentName = #"Bass I "
                shortInstrumentName = #"B I "
            }
            \BassOneMusic
            \addlyrics \BassOneLyrics

            \new Staff \with {
                instrumentName = #"Bass II "
                shortInstrumentName = #"B II "
            }
            \BassTwoMusic
            \addlyrics \BassTwoLyrics
        >>

        \new PianoStaff
        <<
            \new Staff \with {
                instrumentName = #"Tenors "
                shortInstrumentName = #"TT "
                printPartCombineTexts = ##f
            } \TenorMusic

            \new Staff \with {
                instrumentName = #"Basses "
                shortInstrumentName = #"BB "
                printPartCombineTexts = ##f
            } \BassMusic
        >>
    >>

    \layout { }
    \midi { }

}
