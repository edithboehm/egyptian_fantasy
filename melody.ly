\include "header.ly"

melody =
	\relative c' {
		#(set-accidental-style 'modern-cautionary)
			\key e \minor

			\mark A
			\repeat volta 2 {
				r4 e8 g h e, g h  \mark \markup { \musicglyph #"scripts.segno" } e4 ~ e8 h8 h ~ h4.
				r4 g8 a h a g a h4 ~ h8 g h2

			}
			\alternative {
				{
					r4 g8 a h g a h a4. fis8 a2
					r4 fis8 g a fis g a g4. e8 g2
				}
				{ r4 g8 a h g a h a4 c2 h4}
			}
			fis4 a2 g4 e \mark \markup{Fine} r2.
			r4 e8 g h e, g h
			\once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
			\once \override Score.RehearsalMark.self-alignment-X = #RIGHT
			\mark "D.S. al Fine"
		}

melody_mittelteil =
	\relative c' {
		#(set-accidental-style 'modern-cautionary)
			\key e \minor
			\partial 2
			d2\fermata
			\mark B
			\repeat volta 3 {
				h'4-. h-- ais-. ais-- h r h8. e16 r8 h32 (a g fis) e4-. e--
				dis-. dis-- d r r2 d4 \times 2/3 {r8 r e}
				fis d ~ \times 2/3 {d e fis} h8 h4 r8 r2

			}
			\alternative {
				{
					g4 \times 2/3 {r8 r a} h4 \times 2/3 {g8 a h}
					e8 h ~ \times 2/3{h g e} e' d4 ~ d8
				}
				{
					g,4
					\times 2/3 {d8 g d}
					\times 2/3 {cis g' cis,}
					\times 2/3 {c g' c,}
				}
			}
			\times 2/3 {h4 e8} h d ~ d2\fermata

		}
outro = \relative c' {
	#(set-accidental-style 'modern-cautionary)
		\key e \minor
		%\partial 2.
		e4 h'8 c h c cis dis e1\fermata \bar "|."
	}

begleitung_mittelteil =
	\relative c' {
		#(set-accidental-style 'modern-cautionary)
			\key e \minor
			\partial 2
			d2
		}
