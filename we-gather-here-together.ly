% We Gather Here Together
% coded by William Jackson <william@subtlecoolness.com>
% last update 2023-03-14

\version "2.24.0"

#(set-default-paper-size "letter")

\paper {
  top-margin = 1\in
  bottom-margin = 1\in
  left-margin = .75\in
  right-margin = .75\in
  print-page-number = ##f
}

\header {
  title = "We Gather Here Together"
  subtitle = "arranged by Dr. Linda Bolding"
  % composer = "Dr. Bolding"
  tagline = ##f
}

global = {
    \key g \major
    \time 4/4
}

SopranoMusic = \relative g' {
    s2. d4
    g a b b
    a4.( g8) fis4 d
    e8( fis) g4 g fis
    g2. d4
    g a b b
    a4.( g8) fis4 d
    e8( fis) g4 g fis
    g2. b8 c
    d4. e8 d4 c
    b2 b4 a
    b c d c8( b)
    a2. a4
    b b g g
    a2 fis4 d
    e8( fis) g4 g fis
    g2.^\fermata s4 \bar "|."
}

AltoMusic = \relative g' {
    s2. d4
    g fis g g
    c,( e) d d
    c8( d) e4 c c
    d2. d4
    g fis g g
    c,( e) d d
    c8( d) e4 c c
    d2. g8 a
    b4. c8 b4 a
    g2 g4 fis
    g g fis g
    fis2. fis4
    fis fis e d
    e2 d4 d
    c8( d) e4 c c
    d2.^\fermata s4
}

TenorMusic = \relative g' {
    \clef "treble_8"
    s2. d4
    d d d d
    c2 a4 a
    g g g a
    b2. d4
    d d d d
    c2 a4 a
    g g g a
    b2. r4
    r2 r4 b8 c
    d2 d4 d
    d e d e
    d2. b4
    dis dis e d
    c2 a4 a
    g g g a
    b2.^\fermata s4
}

BassMusic = \relative g' {
    \clef "bass"
    s2. d4
    b a g fis
    e( c) d fis
    e8( d) c( b) a4 d
    g,2. d''4
    b a g fis
    e( c) d fis
    e8( d) c( b) a4 d
    g,2. r4
    r2 r4 b'8 c
    d2 d4 d,
    g e b c8( cis)
    d2. dis4
    b b c b
    a2 d4 fis
    e8( d) c( b) a4 d
    g,2.^\fermata s4
}

WomenWords = \lyricmode {
    We ga -- ther here to -- ge -- ther
    with joy -- ful heart and mind.
    We raise our voi -- ces e -- ver
    our dis -- tant souls to bind
    To re -- mem -- ber in this mo -- ment
    of friend -- ship, love, and joy;
    To sing a song for -- e -- ver:
    sal -- va -- tion of man -- kind!
}

MenWords = \lyricmode {
    We ga -- ther here to -- ge -- ther
    with joy -- ful heart and mind.
    We raise our voi -- ces e -- ver
    our dis -- tant souls to bind
    To re -- mem -- ber
    of friend -- ship, love, and joy;
    To sing a song for -- e -- ver:
    sal -- va -- tion of man -- kind!
}

\score {
    \new ChoirStaff <<
        \new Staff <<
            \set Staff.instrumentName = #"Soprano "
            \set Staff.shortInstrumentName = #"S "
            \new Voice = "Soprano" <<
                \global \SopranoMusic
            >>
            \new Lyrics \lyricsto "Soprano" \WomenWords
        >>
        \new Staff <<
            \set Staff.instrumentName = #"Alto "
            \set Staff.shortInstrumentName = #"A "
            \new Voice = "Alto" <<
                \global \AltoMusic
            >>
            \new Lyrics \lyricsto "Alto" \WomenWords
        >>
        \new Staff <<
            \set Staff.instrumentName = #"Tenor "
            \set Staff.shortInstrumentName = #"T "
            \new Voice = "Tenor" <<
                \global \TenorMusic
            >>
            \new Lyrics \lyricsto "Tenor" \MenWords
        >>
        \new Staff <<
            \set Staff.instrumentName = #"Bass "
            \set Staff.shortInstrumentName = #"B "
            \new Voice = "Bass" <<
                \global \BassMusic
            >>
            \new Lyrics \lyricsto "Bass" \MenWords
        >>
    >>
}
