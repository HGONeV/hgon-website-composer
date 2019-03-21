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
                14 = Flex Container Element: Bild + Text
                20 = Slider Element: Bild + Text
                25 = Seiten Teaser mit Bild links + Verweise rechts
                26 = Seiten Teaser mit Bild rechts + Verweise im Fußbereich
                30 = Header: Bild + Text (Home)
                31 = Header: Bild + Text
                40 = Sidebar: Gelber Hintergrund
                41 = Sidebar: Gelb-grüner Hintergrund + Bild
                42 = Sidebar: Blauer Hintergrund
                50 = Sitemap: Menü vertikal
                51 = Sitemap: Menü horizontal

            #    50 = Layout: 3 Spalten
            #    60 = Layout: Slider
            }
            removeItems = 1,2,3,4,5,6,7,8,9,10
        }
        # Header layout
        header_layout {
            altLabels {
                1 = h1 - Hauptüberschrift
                2 = h2 - Zwischenüberschrift
                3 = h3 - Elementüberschrift
                4 = h4 - Elementüberschrift
                5 = h5 - Elementüberschrift
                6 = h6 - Elementüberschrift
            }
        }

    }
}
