\include "header.ly"

akkordeonvorspiel =
	\relative c' {
		#(set-accidental-style 'modern-cautionary)
		\clef violin
		\key e \minor
		\repeat volta 4 {
			\times 2/3 {e8 g h} \times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h}
			\times 2/3 {cis, e a} \times 2/3 {cis, e a} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h}
		}
	}

akkordeon =
	\relative c' {
		#(set-accidental-style 'modern-cautionary)
		\clef violin
		\key e \minor

		\repeat volta 2 {
			\times 2/3 {e g h} \times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h}
			\times 2/3 {cis, e a} \times 2/3 {cis, e a} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h}

			\times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h}
			\times 2/3 {cis, e a} \times 2/3 {cis, e a} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h}

			\times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h}
			\times 2/3 {cis, e a} \times 2/3 {cis, e a} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h}

			}
			\alternative {
				{
					\times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h}
					\times 2/3 {cis, e a} \times 2/3 {cis, e a} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h}
				}
				{
					\times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h} \times 2/3 {e, g h}
					\times 2/3 {e, a c} \times 2/3 {e, a c} \times 2/3 {e, a c} \times 2/3 {e, a c}
				}
			}
		\times 2/3 {dis, fis h} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h} \times 2/3 {dis, fis h}
		e,4 h'8 c h a g fis e4 r2.
	}

akkordeonchords_one = \chordmode {
	\germanChords
	\set chordNameLowercaseMinor = ##t
	\set chordChanges = ##t
	\set noChordSymbol = ""

	e1:m
	a2 h
}

akkordeonchords = \chordmode {
	\germanChords
	\set chordNameLowercaseMinor = ##t
	\set chordChanges = ##t
	\set noChordSymbol = ""

	\repeat volta 2 {
		e1:m
		a2 h

		e1:m
		a2 h
	}
	\alternative {
		{
			e1:m
			a2 h

			e1:m
			a2 h
		}
		{
			e1:m
			a:m
			h
		}
	}
}

akkordeon_mittelteil =
	\relative c' {
		#(set-accidental-style 'modern-cautionary)
		\clef violin
		\key e \minor

		\partial 2
		<d fis>2\fermata

		\repeat volta 3 {
			\times 2/3 {g8 d' g,} \times 2/3 {d' g, d'}
			\times 2/3 {fis, d' fis,} \times 2/3 {d' fis, d'}
			\times 2/3 {g, h d} \times 2/3 {e d g}
			\times 2/3 {d h g} \times 2/3 {h g fis}

			\times 2/3 {e8 g e} \times 2/3 {g e g}
			\times 2/3 {dis fis dis} \times 2/3 {fis dis fis}
			\times 2/3 {e g h} \times 2/3 {e h e}
			\times 2/3 {g e h} \times 2/3 {g h b}

			\times 2/3 {a4:8 c:8 a:8} \times 2/3 {fis:8 d:8 fis:8}
			c4 \times 2/3 {c4 e8} \times 2/3 {d4:8 fis:8 a:8}

		}
		\alternative {
			{
				g8 g h h d d g, g
				\times 2/3 {e8 e e'} \times 2/3{e c a } \times 2/3 {fis a c} \times 2/3 {e d ~ d}
			}
			{
				g,4
				\times 2/3 {d8 g d}
				\times 2/3 {cis g' cis,}
				\times 2/3 {c g' c,}
				\times 2/3 {h4 e8} h d ~ d2\fermata
			}
		}
	}

akkordeonchords_mittelteil = \chordmode {
	\germanChords
	\set chordNameLowercaseMinor = ##t
	\set chordChanges = ##t
	\set noChordSymbol = ""

		\partial 2
			d2

		\repeat volta 3 {
			g2 d     g1
                        e2:m h   e1:m       a2:m d       a:m d
		}
		\alternative {
			g1 a2:m d:7
		}
		{
			g4  g/d  g:m/cis g:m/c
		}
		 h1
}

akkordeon_outro = \relative c' {
	#(set-accidental-style 'modern-cautionary)
	\key e \minor
	%\partial 2.
	e4 h'8 c h a g fis e1\fermata \bar "|."
}

akkordeonchords_outro = \chordmode {
	\germanChords
	\set chordNameLowercaseMinor = ##t
	\set chordChanges = ##t
	\set noChordSymbol = ""

	%\partial 2
	e1:m e4:m
}
