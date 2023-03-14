% Invocation
% coded by William Jackson <william@subltecoolness.com>
% last update 2013-10-20

\version "2.14.2"
\language "english"

\paper {
    #(set-paper-size "letter")
}

\header {
    title = "Invocation"
    composer = "Marilyn Barry"
    tagline = ##f
}

MusicSoprano = \relative c' {
    \clef treble
    \key g \major
    \time 4/4
    \partial 8

    d8^\mp
    g4. g8 a4. g8
    a( b) b4 r b8 d
    e,2. fs8 a \break
    d,2. r8 d
    e4. e8 fs4 e8 fs
    g4 a8( b) c4. c8
    c([ b)] a( g) g( a) fs4
    fs8( g) g2 r8 d
    g4. g8 a4. g8
    a( b) b2 b8 d
    e,2. fs8^"In" a^"His" \break
    d,2. d4
    e4. e8 fs4 e8 fs
    g4 a8( b) c4. \breathe c8
    c([ b)] a( g) g( a) fs4 \pageBreak
    fs8( g) g2 r8 e

    \repeat volta 2 {
        e4. e8 e4 fs
        fs8 g g2 g4
        g4. g8 g4 a \break
        a8( b) b2 b4^\cresc
        c4. c8 c4 d
        d8 e e4. g,8--^\< g--[ g--]
        g'(^\f fs e d e2
        d~ d4) \breathe d8 d
        d g,^"of them" g4.( a8) a([ fs)]
    }

    \alternative {
        { fs( g) g2 r8 e }
        { fs( g) g2\fermata r8 d^\p }
    }

    g4. g8 a4. g8
    a( b) b2 b8 d
    e,2. fs8^"In" a^"my"
    d,2. d4
    e4. e8 fs4 e8 fs
    g4 a8( b) c4.^"rit." c8
    c([ b)] a( g) g( a) fs4
    fs8( g) g2\fermata \bar "|."
}

MusicAlto = \relative c' {
    \clef treble
    \key g \major
    \time 4/4
    \partial 8

    d8
    g4. g8 a4. g8
    a( b) b4 s b8 d
    e,2. fs8 a
    d,2. s8 d
    e4. e8 fs4 e8 fs
    g4 a8( b) c4. c8
    c([ b)] a( g) g( a) fs4
    fs8( g) g2 s8 d
    g4. fs8 e4. e8
    d4 g2 d8 d
    d4( c8 b a4) d
    a2( b4) b
    c4. c8 d4 d8 d
    d4 d g4. \breathe g8
    a([ g)] fs( e) e4 d
    d d2 s8 e

    \repeat volta 2 {
        e4. d8 c4 b
        b8 e e2 e4
        e4. e8 e4 fs
        fs8( g) g2 d4
        f4. f8 f4 g
        g8 g g4. g8-- g--[ g--]
        c2~( c8 b a g
        a g fs e d4) \breathe g8 g
        d4. d8 e( d) d4
    }

    \alternative {
        { d d2 s8 e }
        { d4 d2\fermata s8 d }
    }

    g4. fs8 e4. e8
    d4 g2 d8 d
    d4( c8 b a4) d
    a2( b4) b
    c4. c8 d4 d8 d
    d4 d g4. g8
    a([ g)] fs( e) e4 d
    d d2\fermata
}

MusicTenor = \relative c {
    \clef bass
    \key g \major
    \time 4/4
    \partial 8

    r8
    R1 R R R R R R
    r2 r4 r8 d
    g4. b8 c4. a8
    c( d) d2 g,8 g
    g2( fs4) a
    fs2( g4) g
    g4. b8 a4 a8 a
    g4 g c4. \breathe c8
    d4 b c8( b) a4
    a8( b) b2 r4

    \repeat volta 2 {
        R1
        r2 r4 d
        c4. b8 a4 d
        d d2 g,4
        a4. a8 a4 b
        b8 c c4. g8-- g--[ g--]
        e'1(
        fs8 e d c b4) c8 c
        b4. b8 c( b) a4
    }

    \alternative {
        { a8( b) b2 r4 }
        { a8( b) b2\fermata r8 d, }
    }

    g4. b8 c4. a8
    c( d) d2 g,8 g
    g2( fs4) a
    fs2( g4) g
    g4. b8 a4 a8 a
    g4 g c4. c8
    d4 b c8( b) a4
    a8( b) b2\fermata    
}

MusicBass = \relative c {
    \clef bass
    \key g \major
    \time 4/4
    \partial 8

    s8
    s1 s s s s s s
    s2 s4 s8 d
    g4. g8 g4. g8
    g4 g2 g8 b,
    c2. c4
    b2( e4) e
    c4. c8 c4 c8 c
    b8([ d)] g( f) e4. \breathe e8
    d4 e c d
    <g, d'> q2 s4

    \repeat volta 2 {
        s1
        s2 s4 d''
        c4. b8 a4 d
        g, g2 g4
        f4. e8 d4 g
        c,8 c c4. g'8-- g--[ g--]
        c2( a
        d,) \breathe g8(_"To" fs) e4_"the"
        d4. d8 d4 d
    }

    \alternative {
        { <g, d'> q2 s4 }
        { <g d'>4 q2\fermata s8 d' }
    }

    g4. g8 g4. g8
    g4 g2 g8 b,
    c2. c4
    b2( e4) d
    c4. c8 c4 c8 c
    b([ d)] g( f) e4. e8
    d4 e c d
    <g, d'> q2\fermata
}

LyricsSoprano = \lyricmode {
    Where two or three are gath -- ered,
    In His name, In His name.
    There shall He be in the midst of them,
    the midst of them that love Him.
    Where two or three are gath -- ered
    In His name, In His name.
    There shall He be in the midst of them,
    the midst of them that love Him.
    We gath -- er in His ho -- ly name,
    to thank Him and to bless Him.
    To give and to re -- ceive the love that from Him flows. __ 
    To the midst of them that love Him. We love Him.
    Where two or three are gath -- ered,
    In my name, In my name,
    There shall I be in the midst of them,
    the midst of them that love me.
}

LyricsAlto = \lyricmode {
    Where two or three are gath -- ered,
    In His name, In His name.
    There shall He be in the midst of them,
    the midst of them that love Him.
    Where two or three are gath -- ered
    In His name, __ His name.
    There shall He be in the midst of them,
    the midst of them that love Him.
    We gath -- er in His ho -- ly name,
    to thank Him and to bless Him.
    To give and to re -- ceive the love that from Him flows. __ 
    To the midst of them that love Him. We love Him.
    Where two or three are gath -- ered,
    In my name, My name, __ 
    There shall I be in the midst of them,
    the midst of them that love me.
}

LyricsTenor = \lyricmode {
    Where two or three are gath -- ered
    In His name, __ His name.
    There shall He be in the midst of them,
    the midst of them that love Him.
    to thank Him and to bless Him.
    To give and to re -- ceive the love that from Him flows. __ 
    To the midst of them that love Him. love Him.
    Where two or three are gath -- ered,
    In my name, __  My name, __ 
    There shall I be in the midst of them,
    the midst of them that love me.
}

\score { <<
    \new Staff
    <<
        \new Voice = soprano { \voiceOne \MusicSoprano }
        \new Voice = alto { \voiceTwo \MusicAlto }
        \new Lyrics \lyricsto alto \LyricsAlto
    >>
    \new Staff
    <<
        \new Voice = tenor { \voiceThree \MusicTenor }
        \new Voice = bass { \voiceFour \MusicBass }
    >>
>>
}
