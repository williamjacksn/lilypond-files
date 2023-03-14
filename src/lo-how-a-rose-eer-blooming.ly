% Lo, How a Rose E'er Blooming
% coded by William Jackson <william@subtlecoolness.com>
% last update 2011-04-24

\version "2.12.3"

#(set-default-paper-size "letter")

\header {
    title = "Lo, How a Rose E'er Blooming"
    poet = "English Translation by Theodore Baker"
    composer = "Michael Praetorius"
    tagline = ##f
}

global = {
    \key f \major
    \time 4/4
    % \autoBeamOff
    \partial 2
}

sopranoMusic = \relative f'' {
    c2 c4 c d c c2 a bes a4 g( g) f2 e4 \break
    f2\fermata c'2 c4 c d c c2 a bes a4 g( g) f2 e4 \break
    f2\fermata r4 a g e f d c2 r4 c' c c d c \break
    c2 a bes a4 g( g) f2 e4 f2\fermata \bar "|."
}

altoMusic = \relative f' {
    a2 a4 f f f e2 d f f4 d c2. c4
    c2 a' a4 f f f e2 d f f4 d c2. c4
    c2 r4 f c c d8 c b4 c2 r4 e c f f f
    e2 d d f4 d c2. c4 c2
}

tenorMusic = \relative f' {
    c2 c4 a bes a g2 f d' c4 g a2( g4) c
    a2 c c4 a bes a g2 f d' c4 g a2( g4) c
    a2 r4 c c c a g8 f e d e4 r g g a bes a
    g2 fis g c4 bes a4.( f8 g4) g a2
}

bassMusic = \relative f {
    f2 f4 f bes, f' c2 d bes c4 bes a4.( bes8 c4) c
    f,2\fermata f' f4 f bes, f' c2 d bes c4 bes a4.( bes8 c4) c
    f,2\fermata r4 f' e a, d g, c2 r4 c e f bes, f'
    c2 d g, a4 bes c2. c4 f,2\fermata
}

verseOne = \lyricmode {
    \set stanza = "1. "
    Lo, how a rose e'er bloom -- ing
    From ten -- der stem hath sprung!
    Of Jes -- se's lin -- eage com -- ing,
    As men of old have sung.
    It came a flow' -- _ ret bright,
    A -- mid the cold of win -- ter,
    When half -- spent was the night.
}

verseTwo = \lyricmode {
    \set stanza = "2. "
    I -- sai -- ah 'twas fore -- told it,
    The rose I have in mind.
    With Ma -- ry we be -- hold it,
    The Vir -- gin mo -- ther kind.
    To show God's love _ a -- right
    She bore to them a Sav -- ior,
    When half -- spent was the night.
}

\score {
    \new ChoirStaff <<
        \new Staff = women <<
            \new Voice = "sopranos" {
                \voiceOne
                << \global \sopranoMusic >>
            }
            \new Voice = "altos" {
                \voiceTwo
                << \global \altoMusic >>
            }
            \addlyrics { \verseOne }
            \addlyrics { \verseTwo }
        >>
        \new Staff = men <<
            \clef bass
            \new Voice = "tenors" {
                \voiceOne
                << \global \tenorMusic >>
            }
            \new Voice = "basses" {
                \voiceTwo
                << \global \bassMusic >>
            }
        >>
    >>

    \layout {
        indent = 0\cm
    }
}
