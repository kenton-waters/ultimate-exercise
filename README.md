# The Ultimate Exercise
Generate sheet music to improve sightreading, fretboard knowledge, and improvisation.

## Dependencies
* lilypond 2.24.4 (music engraving software)
* ghcup 0.1.40.0
* haskell-language-server 2.9.0.1
* Stack 3.1.1
* cabal 3.12.1.0
* GHC 9.4.8
* haskell.haskell 2.4.4 (Haskell for Visual Studio Code)

## Features
* Invoke LilyPond
* Sanitize filename
* Write string to file

## Roadmap
* Serialize notes
* Define tune format

## Notes
Braces are required in lilypond files. Header goes outside braces. 

Tune:
    Title
        https://lilypond.org/doc/v2.24/Documentation/notation/creating-titles-headers-and-footers
    Composer
    Style
        \tempo "Andante"
    List (Sequence?) of musical objects

Musical objects:
    Section heading (A,B, etc...)
        \mark 1 for A
        Put marks AFTER a note tied over into the new section.
    Clef
        \clef treble
        \clef bass
    Key signature
        \key d \major
        \key d \minor
    Time signature
        \time 6/8
        Time signature in the middle of a bar changes the sig of the current bar.
        IT IS STILL WEIRD.
        But put time signature change AFTER a note tied over into the new time signature
    Chord symbol
        https://lilypond.org/doc/v2.24/Documentation/notation/common-chord-modifiers
        https://lilypond.org/doc/v2.25/Documentation/notation/extended-and-altered-chords
        
    Note
        Pitch class
            cis for c#
            ees for eb
            isis for ##
            eses for bb
            You CAN write the accidentals without them being printed as reminders! Yay!
        Octave
            ' for octave up
            , for octave down
            c' is middle C (C4)
            Octave 3 has no ' or ,
            A new octave starts on C: b' -> c''
        Duration
            following number specifies subdivision:
            c'2 = half note
            c'2. = dotted half note
            8th note triplets: \tuplet 3/2 { f''8 g a }
                
        Fingerings
            Auto: e4-5
            Above: e4^4
            Below: e4_3
        Color
            Red:
            \override Voice.NoteHead.color = #(rgb-color 1 0 0)


