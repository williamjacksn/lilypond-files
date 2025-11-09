% 2025-11-09

\version "2.24.0"
\language "english"

#(set-default-paper-size "letter")
#(set-global-staff-size 30)

\header {
  title = "Water"
  composer = "Ellie Jackson"
  tagline = ##f
}

\new PianoStaff <<

  \new Staff {
    \set Staff.pedalSustainStyle = #'bracket
    \relative c' {
      \key fs \major
      \numericTimeSignature
      cs8\pp\sustainOn ds fs gs
      as gs fs ds

      cs ds fs gs
      as gs fs ds

      b ds fs gs
      as gs fs ds

      b ds fs gs
      as gs fs ds

      cs ds fs gs
      as gs fs ds

      cs ds fs gs
      b, fs' gs as

      as, ds fs gs
      as gs fs ds

      cs ds fs gs
      b, fs' gs as

      as, ds fs gs
      as gs fs ds

      < cs fs as cs fs as >1\arpeggio\fermata
    }
  }

>>
