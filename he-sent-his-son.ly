% He Sent His Son
% coded by William Jackson <william@subtlecoolness.com>
% last update 2023-03-14

\version "2.24.0"
\language "english"

\paper {
    #(set-paper-size "letter")
    two-sided = ##t
}

\header {
    title = "He Sent His Son"
    composer = "Michael Finlinson Moody"
    arranger = "Arr. by Sharon Austad Bagley"
    poet = "Mabel Jones Gabbott"
    tagline = ##f
}

MusicSoprano = \relative c'' {
    \clef treble
    \key g \major
    \time 3/4
    \tempo "Expressively" 4 = 85

    \override MultiMeasureRest.staff-position = #2

    R2. | R | R | R |

    b8\rest d,^\mp d[ g] g[ b] | b8. a16 a2 | b8\rest d, d[ fs] fs[ a] | a4( g2) |
    b8\rest b b[ e] d[ b] | b8. g16 g4. e8 | d4. b'8 b[ g] | a2. |

    d2.^\pp^\<( | e | d | b4\! g f) |
    b8\rest c^\> c[ b] b[ a] | d[ b] g4. e8 | d4. g8 g[ fs] | g2.\!^\mp |

    b8\rest e,8 e[ g^\<] g[ c] | b8. g16 e4. e8 | a g fs4. e8 | ds2 ds4\! |
    e4.^\< fs8 fs[ a] | a8. b16 b4. g8 | a4. a8 b[ c] | d2.~\!^\f | d2 b4\rest |

    \override BreathingSign.text = \markup {
        \musicglyph "scripts.caesura.straight"
    }

    b8\rest d,^\mf d[ g] g[ b] | b8. a16 a2 | b8\rest fs fs[ g] g[^\markup { \italic "poco rit." } a] | a4( b) \breathe g^\mp |

    \revert BreathingSign.text

    c8 c b4. a8 | d b g4. e8 | d b' b4. a8 | g2.~ |
    g4 b8\rest d,^\markup { \italic rit. } d[ a'] | a2.\fermata | a4^\p g fs | g2.~ | g2. |
}

MusicAlto = \relative c' {
    s2. | s | s | s |
    s8 d d[ g] g[ b] | b8. a16 a2 | s8 d, d[ fs] fs[ a] | a4( g2) |
    s8 g e[ g] g[ fs] | e8. cs16 cs4. cs8 | b4. d8 d[ b] c2. |
    << { b'2.~ b4 c2 c2. a4 } { g2.~ g a f4 } >> e d |
    s8 e g[ e] ef[ ef] | g[ g] e4. cs8 | b4. b8 c[ c] | b2.
    s8 e e[ g] g[ c] | b8. g16 e4. e8 | a g fs4. e8 | ds2 b4 |
    c4. d8 d[ e] | ef8. b16 e4. g8 | e4. e8 e[ e] | g2( fs4~ | fs2) s4 |
    s8 d d[ g] g[ b] | b8. a16 a2 | s8 fs fs[ g] g[ a] | a4( b) g |
    g8 e g4. fs8 | g g e4. e8 | b d <c e>4( d8) c | b2.~ |
    b4 s8 b b[ b] | c2.\fermata | c4 c c | b2.~ | b2. |

}

MusicTenor = \relative c {
    \clef bass
    \key g \major

    \override MultiMeasureRest.staff-position = #2

    R2. | R | R | R |

    R | R | R | R |
    d8\rest b' b[ b] b[ b] | g8. e16 a4. g8 | g4. g8 g[ g] | g2( fs4) |

    d8\rest d^\mf d[ g] g[ b] | b8. a16 a2 | d,8\rest fs fs[ g] g[ a] | a4( b2)
    d,8\rest g e[ g] g[ a] | b b b4. g8 | g4. g8 d[ d] | d2. |

    d8\rest g g[ c] c[ e] | d8. b16 g4. g8 | c8 b a4. g8 | fs2 a4 |
    g4. a8 a[ a] | fs8. fs16 g4. b8 | c4. c8 c[ c] | c2.~ | c2 d,4\rest | 

    \override BreathingSign.text = \markup {
        \musicglyph "scripts.caesura.straight"
    }

    d8\rest d d[ g] g[ d] | g8. e16 e2 | d8\rest ds ds[ e] e[ fs] | fs4( g) \breathe b |

    \revert BreathingSign.text

    c8 c b4. c8 | b b b4. g8 | g g g4( fs8) fs | d2.~ |
    d4 d8\rest fs e[ d] | e2( ef4\fermata) | ef4 ef ef | d2.~ | d2. |
}

MusicBass = \relative c {
    s2. | s | s | s |
    s | s | s | s |
    s8 e g[ e] d[ d] | cs8. e16 e4. a,8 | d4. d8 d[ d] | d2. |
    s8 d d[ g] g[ b] | b8. a16 a2 | s8 fs fs[ g] g[ a] | a4( b2) |
    s8 c, c[ e] c[ c] | d d cs4. e8 | d4. d8 a[ d] | g,2. |
    s8 g' g[ c] c[ e] | d8. b16 g4. g8 | c b a4. g8 | fs2 fs4 |
    c4. c8 c[ c] | b8. ds16 e4. e8 | a4. c8 a[ a] | d,2.~ | d2 s4 |
    s8 d d[ g] g[ d] | g8. e16 e2 | s8 ds  ds[ e] e[ fs] | fs4 g f |
    e8 g ef4. ef8 | d d cs4. cs8 | d d d4. d8 | g,2.~ |
    g4 s8 g g[ g] | g2.\fermata | g4 g g | g2.~ | g2. |
}

LyricsSoprano = \lyricmode {
    How could the Fa -- ther tell the world of love and ten -- der -- ness? __ 
    He sent his Son, a new -- born babe, with peace and ho -- li -- ness. __ 
    Oo __ __ __ __ __ 
    He sent his Son to walk with men on earth, that we may know.
    How could the Fa -- ther tell the world of sac -- ri -- fice, of death?
    He sent his Son to die for us and rise with liv -- ing breath. __ 
    What does the Fa -- ther ask of us? What do the scrip -- tures say? __ 
    Have faith, have hope, live like his Son, help oth -- ers on __ their way.
    What does he ask? Live like his Son. __ 
}

LyricsTenor = \lyricmode {
    "" "" "" "" "" "" "" "" "" "" "" "" "" "" 
    How could the Fa -- ther show the world the path -- way we should go? __ 
}

\score
{
    \new ChoirStaff
    <<
        \new Staff
        <<
            \new Voice = soprano { \voiceOne \MusicSoprano }
            \new Voice = alto { \voiceTwo \MusicAlto }
            \new Lyrics \lyricsto soprano \LyricsSoprano
        >>
        \new Staff
        <<
            \new Voice = tenor { \voiceThree \MusicTenor }
            \new Voice = bass { \voiceFour \MusicBass }
            \new Lyrics \lyricsto tenor \LyricsTenor
        >>
    >>
}
