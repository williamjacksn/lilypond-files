% Come unto Him
% coded by William Jackson <william@subtlecoolness.com>
% last update 2011-08-08

\version "2.12.3"

#(set-default-paper-size "letter")

\header {
    title = "Come unto Him"
    poet = "Theodore E. Curtis"
    composer = "Eric Fisher"
    tagline = ##f
}

global = {
    \key f \major
    \time 3/2
    % \autoBeamOff
    \partial 2.
}

EricMusic = \relative f {
    \clef bass
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 e, d2.
    bes'4 bes bes a2~( a8 g) f4 f e f2.
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 e, d2.
    bes'4 bes bes a2~( a8 g) f4 f e f2.
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 e, d2.
    bes'4 bes bes a2~( a8 g) f4 f e f2.
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 a d2.
    bes4 bes bes a2~( a8 g) f4 f e f2.
    }

MichaelMusic = \relative f {
    \clef bass
    f4 f f f2. f4 f f d2.
    d4 e e e( c d) e d bes c2.
    c4 d e f( g a) f e c c2( bes4)
    d e f f2 d c4 c c2.
    a'4 c f, f2. f4 f f d2.
    d4 e e e( c d) e d bes c2.
    c4 d e f( g a) f e c c2( bes4)
    d e f f2 d c4 c c2.
    f4 f d f2. f4 f f d2.
    f4 e e e( c d) e d d c2.
    c4 d e f2 f e4 c c2( bes4)
    d e f f2 d c4 c c2.
    f4 f f f2. f4 f f d2.
    d4 e e e( c d) e d bes c2.
    c4 d e f( g a) f e c d( c bes)
    d e f f2 d c4 c f,2.
}

StephenMusic = \relative f {
    \clef bass
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 e, d2.
    bes'4 bes bes a2~( a8 g) f4 f e f2.
    a4 c f, a2. a4 bes a f2.
    a4 g g a2( bes4) c bes bes bes2( a4)
    a bes bes a2. a4 a a bes( a g)
    g bes d c2~( c8 bes) a4 g bes a2.
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 e, d2.
    bes'4 bes bes a2~( a8 g) f4 f e f2.
    c'4 c d c2. c4 d d a2.
    a4 g g a2( bes4) c bes bes bes2( a4)
    a bes bes a2. a4 a a bes( a g)
    g bes d c2~( c8 bes) a4 g bes a2.
}

WilliamMusic = \relative f {
    \clef bass
    a4 c f, a2. a4 bes a f2.
    a4 c e, a2. a4 bes d, c2.
    c'4 c c	f2 a,2 c4 e, d2.
    bes'4 bes bes a2~( a8 g) f4 f e f2.
    a4 c f, f2. f4 f f d( e f)
    f c c c2. c4 f f f2.
    a4 g g d( e) f2 c4 c bes2( d4)
    d d d f2 bes, c4 c f2.
    c'4 a bes c2. c4 d d a2.
    d4 c c c( a bes) c bes bes bes2( a4)
    a bes bes a2 c a4 a bes( a g)
    g bes d c2 bes g4 g c2.
    f,4 a bes c2 f,2 d4 d d( e f)
    f c c c2. c4 f f f2.
    a4 g g d( e) f2 c4 c bes2( d4)
    d d d f2 bes, c4 c f2.
}

theWords = \lyricmode {
    I wan -- der through the still of night,
    when sol -- i -- tude is ev' -- ry -- where--
    A -- lone, be -- neath the star -- ry light,
    And yet I know that God is there.
    I kneel up -- on the grass and pray;
    An an -- swer comes with -- out a voice.
    It takes my bur -- den all a -- way
    And makes my ach -- ing heart re -- joice.
    It mat -- ters not what may be -- fall,
    What threat'n -- ing hand hangs o -- ver me;
    He is my ram -- part through it all,
    My re -- fuge from mine en -- e -- my.
    Come un -- to him all ye de -- pressed,
    Ye err -- ing souls whose eyes are dim,
    Ye wea -- ry ones who long for rest.
    Come un -- to him! Come un -- to him!
}

\score {
    \new ChoirStaff <<
        \new Staff <<
            \set Staff.instrumentName = #"Eric "
            \new Voice = "Eric" <<
                \global \EricMusic
            >>
            \lyricsto "Eric" \new Lyrics \theWords
        >>
        \new Staff <<
            \set Staff.instrumentName = #"Michael "
            \new Voice = "Michael" <<
                \global \MichaelMusic
            >>
            \lyricsto "Michael" \new Lyrics \theWords
        >>
        \new Staff <<
            \set Staff.instrumentName = #"Stephen "
            \new Voice = "Stephen" <<
                \global \StephenMusic
            >>
            \lyricsto "Stephen" \new Lyrics \theWords
        >>
        \new Staff <<
            \set Staff.instrumentName = #"William "
            \new Voice = "William" <<
                \global \WilliamMusic
            >>
            \lyricsto "William" \new Lyrics \theWords
        >>
    >>
}
