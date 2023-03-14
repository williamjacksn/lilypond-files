% A Wedding Song
% coded by William Jackson <william@subtlecoolness.com>
% last update 2023-03-14

\version "2.24.0"

#(set-default-paper-size "letter")

\paper {
  top-margin = 1\in
  bottom-margin = 1\in
  left-margin = 1\in
  right-margin = 1\in
  print-page-number = ##f
}

\header {
  title = "A Wedding Song"
  subtitle = "for Piano"
  composer = "Jonathan Funk (1984 - )"
  meter = "Andante, with Feeling"
  tagline = ##f
}

global = {
  \key c \major
  \partial 4
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
}

rightHandMusic = \relative c''' {

  \set Score.tempoHideNote = ##t

  \time 4/4
  \tempo 4 = 108

  g8\mp f
  e[ f g] g~ g4. a8
  g4 f e d
  c8[ d e] e~ e4. f8
  e4 d c b
  \break

  a8[ b c] c~ c2
  g4\< b8 c~ c2
  f4\mf\> e8 d8~ d4 c8 d
  d1\mp
  \break

  << { e8[\p\< f g] g~ g4 a } \\ { c,2 s } >>
  << { g'4\mp f\prall e d } \\ { b2 s } >>
  << { c8[ d e] e~ e4 f } \\ { a,2 s } >>
  e'4 d\prall c b
  \break

  << { a8[ b c] c~ c2 } \\ { f,2 s } >>
  < e g >4\< b'8 c~ c4 g
  < a c f >\arpeggio\mf\> e'8 d~ d4 c8 g'
  < c, d g >4.\arpeggio\mp < b d g >8~ q2
  \break
  
  \time 3/4
  \tempo \markup { \italic "Allegro" } 4 = 128
  
  d8[ c g] d' c g
  d'[ c g] d' c g
  d'[ e~ e] d f e
  d[ c b] c b a
  \break
  
  d[ c g] d' c g
  d'[ c g] d' c g
  g' c, f c e c
  f c e c d c
  \break
  
  d[ c g] d' c g
  d'[ c g] d' c g
  c2.~
  c
  \break

  \time 4/4
  \tempo \markup { \italic "a tempo" } 4 = 108
  
  << { e8[ f g] g~ g4 a } \\ { c,4. < c e >8~ q2 } >>
  << { g'4 f } \\ { < b, d >2 } >> c'4 b
  << { c,8[ d e] e~ e4 f } \\ { a,4. < a c >8~ q2 } >>
  << { e'4 d } \\ { < g, b >2 } >> c'4 b
  \break
  
  << { a,8[ b c] } \\ { f,4. } >> < f a c >8~ q2
  < e g >4 b'8 c~ c g8[ b c]
  << { f4 e8 d~ d c4 } \\ { < a c >2 s } >>
  < c d g >4. < b d g >8~ q2
  \break

  a8[_\markup { \italic "rit." } b c] c~ c2
  g4 b8 c~\< c2
  f4\mf\> e8 d~ d4 c8[ g']
  g2~\mp g8 c,[ b c]
  < c g e >1

}

leftHandMusic = \relative c {

  \time 4/4
  
  r4
  c2 c'
  b, b'
  a, a'
  g, g'

  f, f'
  e, e'
  f, f'
  g, g'

  c,4 g' c g
  b, g' b g
  a, e' a e
  g, e' g e

  f, c' f c
  e, c' e c
  f, c' f c
  g d' g d
  
  \time 3/4
  
  f, c' f
  g, d' g
  c, g' c
  a, e' a

  f, c' f
  g, d' g
  c, g' c
  a, e' a

  f, c' f
  g, d' g
  c, g' c
  d c g

  \time 4/4
  
  c, g' c g
  b, g' b g
  a, e' a e 
  g, e' g e
  
  f, c' f c
  e, c' e c
  f, c' f c
  g d' g d

  f,2 f'
  e, e'
  f, f'
  g, g'
  < c c, >1

}

\score {
  \new PianoStaff <<
    \new Staff = "rightHandMusic" <<
      \global \rightHandMusic
    >>
    \new Staff = "leftHandMusic" <<
      \clef bass
      \global \leftHandMusic
    >>
  >>
  
  \midi { }
  
  \layout {
    indent = 0\cm
  }
}
