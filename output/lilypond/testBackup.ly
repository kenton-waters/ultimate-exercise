\version "2.24.4"

\header
{
    title = "Title"
    poet = "Medium Swing"
    composer = "Jazz Man"
}

<<
    \chords
    {
        \tuplet 3/2 { c1 g:sus4 f } e
    }

    \new Voice \with
    {
        \remove Note_heads_engraver
        \consists Completion_heads_engraver 
    }
    {
        \omit TupletNumber
        \omit TupletBracket

        \time 4/4
        \clef bass

        \tuplet 3/3 { d8 }
        \tuplet 3/3 { d }
        \tuplet 3/3 { d }
        \tuplet 3/3 { d }
        \tuplet 3/3 { d }
        \tuplet 3/3 { d }
        d
        \override Voice.NoteHead.color = #(rgb-color 1 0 0) d
        \override Voice.NoteHead.color = #(rgb-color 0 1 0) d
        \override Voice.NoteHead.color = #(rgb-color 0 0 0) d
        d
        d
        d

        \tuplet 2/1 { c4. d }
        c

        \clef treble

        \tuplet 1/1 { g4 }
        g
        a

        \clef bass

        a

        \time 6/8

        g2
        d
        d

        \time 4/4

        d
        d

        \mark 1

        d
        d
        d
        \key d \minor
        e
        e_1^2
        e
    }
>>