\include "header.ly"
\include "melody.ly"
\include "akkordeon.ly"

#(set-accidental-style 'modern-cautionary)

\markup {
	\column{
	\null
	\null
	\fill-line{
		"Ablauf: Intro (4x) → A (Klarinette) → (Viola) D.S. al Fine → B → Bridge + Impro → A → Outro"
	}
	\null
  }
}

\new StaffGroup <<
	\new ChordNames \akkordeonchords_one
	\new Staff \with {
		instrumentName = Akkordeon
	} {
		\mark "Intro + Bridge"
		\akkordeonvorspiel
	}
>>

\new StaffGroup <<
	\set Score.markFormatter = #format-mark-circle-letters
	\time 4/4

  \new Staff \with {
		instrumentName = \markup { "Klar." \concat{ B \teeny \raise #0.4 \flat }}
	}\transpose b c' {
		\clef violin
		\melody
	}

  \new Staff \with {
  	instrumentName = Violin
  }\transpose c c {
  	\clef violin
  	\melody
  }

	\new ChordNames \akkordeonchords

	\new Staff \with {
		instrumentName = Akkordeon
	} { \akkordeon }
>>

\new StaffGroup <<
		\time 4/4

		\new Staff \with {
			instrumentName = \markup { "Klar." \concat{ B \teeny \raise #0.4 \flat } }
		} \transpose b c' {
			\clef violin
			\melody_mittelteil
		}

    \new Staff \with {
    	instrumentName = Violin
    } \transpose c c {
    	\clef violin
    	\melody_mittelteil
    }

    \new ChordNames \akkordeonchords_mittelteil

    \new Staff \with {
			instrumentName = Akkordeon
		} {\akkordeon_mittelteil}
	>>

\new StaffGroup <<
		\time 4/4
		\new Staff \with {
			instrumentName = \markup { "Klar." \concat{ B \teeny \raise #0.4 \flat } }
		} \transpose b c' {
			\mark "Outro"
			\clef violin
			\outro
		}
		\new ChordNames \akkordeonchords_outro
		\new Staff \with {
			instrumentName = Akkordeon
		} {\akkordeon_outro}
	>>

\new StaffGroup <<
		\time 4/4

		\new Staff \with {
			instrumentName = Viola
		}
    \transpose c c {
			\clef alto
			\melody
		}
	>>
