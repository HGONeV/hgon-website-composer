// remove RkwBasics fields
TCEFORM.pages {
    tx_rkwbasics_department.disabled = 1
    tx_rkwbasics_document_type.disabled = 1
}

TCEFORM {
    tt_content {
        # Layout
        layout {
            //altLabels {
            addItems {
                //0 = Normale Box
                /*
                1 = Eindeutiger Name 1
                2 = Eindeutiger Name 2
                3 =  Eindeutiger Name 3
                4 = Eindeutiger Name 4

                */
                11 = Highlight - nur Abstand oben
                12 = Highlight - plus Abstand unten
                13 = Zitat
                14 = 3 Spalten Element: Bild + Text
                20 = Slider Element: Bild + Text

                50 = Layout: 3 Spalten
                60 = Layout: Slider
            }
            removeItems = 1,2,3,4,5,6,7,8,9,10
        }
        # Header layout
        header_layout {
            addItems {
                20 = h2 - Zwischenüberschrift
                21 = h3 - Elementüberschrift
                30 = Zitat
            }
        }

    }
}
