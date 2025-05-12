\version "2.24.0"

#(set-default-paper-size "letter")
#(set-global-staff-size 30)

\header {
  tagline = ##f
}

\new PianoStaff <<

\new Staff {
    \relative {
        \numericTimeSignature
        \partial 4 s
        s2. c'8-1 d
        c2 s
        s c8 s c e
        d2. s4
        s2 c8 s e c
        a'2^\markup { \tiny "L.H." } s4 c,8 s
        e4 c8 s s2
        s1
    }
}

\new Staff {
    \clef "bass"
    \relative {
        \numericTimeSignature
        \partial 4 e4_5
        a2_2 b4_1 s
        s2 e,4_5 e
        a_2 b_1 s8 a s4
        s2. e4
        a b s8 a s4
        s2 a4 s8 a
        s4 s8 a e4 e8 e
        a1
    }
}

>>
