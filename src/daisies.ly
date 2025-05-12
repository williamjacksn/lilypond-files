\version "2.24.0"

#(set-default-paper-size "letter")
#(set-global-staff-size 30)

\header {
  title = "Daisies"
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

        c'4 e g e
        
    }
}

\new Staff {
    \clef "bass"
    \relative {
        \numericTimeSignature
        R1*3
        < g b d >2. r4
        < f a c >2. r4
        < e g b >2. r4
        < d f a >1
        < c e g >
    }
}

>>
