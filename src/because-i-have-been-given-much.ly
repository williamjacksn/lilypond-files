% Because I Have Been Given Much
% coded by William Jackson <william@subtlecoolness.com>
% last update 2013-03-14

\version "2.24.1"

#(set-default-paper-size "letter")

\paper {
  top-margin = 1\cm
  bottom-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  print-page-number = ##f
}

\header {
  title = "Because I Have Been Given Much"
  tagline = ##f
}

global = {
  \key aes \major
  \partial 4
}

melody = \relative c' {
  \numericTimeSignature
  \time 2/2

  ees4
  ees ees ees ees
  f f f f
  ees bes c2~
  c2. \break ees4
  aes aes aes aes
  aes aes bes c
  bes f g2~
  g4 \break g aes bes
  c c c des
  bes f g aes
  bes bes bes c
  aes2 \break g4( f)
  ees ees ees ees
  bes'2. ees,4
  aes1~
  aes2.
}

leftHandMusic = \relative c {
  r4
  << {r ees( bes' aes)} \\ aes,1 >>
  << {r4 f'( c' bes)} \\ aes,1 >>
  << {g'4 ees2 ees4} \\ aes,1 >>
  << {r4 ees'2 ees4} \\ {aes,2. g4} >>
  << {r c( aes' f)} \\ f,1 >>
  << {r4 f' aes2} \\ bes,1 >>
  << {r4 bes ees f} \\ ees,1 >>
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Be -- cause I have been giv -- en much, I too must give;
  Be -- cause of thy great boun -- ty, Lord, each day I live
  I shall di -- vide my gifts from thee
  With ev -- 'ry broth -- er that I see
  Who has the need of help from me.
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  Be -- cause I have been shel -- tered, fed by thy good care,
  I can -- not see an -- oth -- er's lack and I not share
  My glow -- ing fire, my loaf of bread,
  My roof's safe shel -- ter o -- ver -- head,
  That he too may be com -- fort -- ed.
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Be -- cause I have been blessed by thy great love, dear Lord,
  I'll share thy love a -- gain, ac -- cord -- ing to thy word.
  I shall give love to those in need;
  I'll show that love by word and deed:
  Thus shall my thanks be thanks in -- deed.
}

\score {
  <<
    \new Staff = "rightHandMusic" <<
      \global \melody
      \addlyrics { \verseOne }
      \addlyrics { \verseTwo }
      \addlyrics { \verseThree }
    >>
    \new Staff = "leftHandMusic" <<
      \clef bass
      \global \leftHandMusic
    >>
  >>

  \layout {
    indent = 0\cm
  }
}
