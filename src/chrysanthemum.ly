\version "2.24.0"

#(set-default-paper-size "letter")
#(set-global-staff-size 30)

\header {
  title = "Chrysanthemum"
  composer = "Ellie Jackson"
  tagline = ##f
}

\new PianoStaff <<

  \new Staff {
    \relative {
      \numericTimeSignature
      c'4 e g e
      b e g e
      bes e f g
      g2 f4 d8 e
      f4 f f e8 d
      e4 c c c8 e
      d4 b c d
      c1
      \break

      c'4 e g e
      b e g e
      bes e f g
      g2 f4 d8 e
      f4 f f e8 d
      e4 c c c8 e
      d4 c d8 c d4
      c1

      c,4 e g e
      b e g e
      bes e f g
      g2 f4 d8 e
      f4 f f e8 d
      e4 c c c8^"rit." e
      d4 b c d
      c'1\fermata
    }
  }

  \new Staff {
    \clef "bass"
    \set Staff.pedalSustainStyle = #'bracket
    \relative {
      \numericTimeSignature
      R1\sustainOn
      R\sustainOff\sustainOn
      R\sustainOff\sustainOn
      < g b d >\sustainOff\sustainOn
      < f a c >\sustainOff\sustainOn
      < e g b >\sustainOff\sustainOn
      < d f a >\sustainOff\sustainOn
      < c e g >\sustainOff\sustainOn

      < c e g >\sustainOff\sustainOn
      R\sustainOff\sustainOn
      R\sustainOff\sustainOn
      < g' b d >\sustainOff\sustainOn
      < f a c >\sustainOff\sustainOn
      < e g b >\sustainOff\sustainOn
      < d f a >\sustainOff\sustainOn
      < c e g >\sustainOff\sustainOn

      < c e g >\sustainOff\sustainOn
      < b e g >\sustainOff\sustainOn
      < bes e g >\sustainOff\sustainOn
      < g' b d >\sustainOff\sustainOn
      < f a c >\sustainOff\sustainOn
      < e g b >\sustainOff\sustainOn
      < d f a >\sustainOff\sustainOn
      r2\sustainOff\sustainOn < c e g >\fermata
    }
  }

>>
