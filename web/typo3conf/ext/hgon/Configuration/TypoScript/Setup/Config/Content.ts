tt_content.stdWrap.innerWrap.cObject = CASE
tt_content.stdWrap.innerWrap.cObject {
    key.field = layout

    # Highlight - nur Abstand oben
    11 = TEXT
    11.value = <header class="section__header"><div class="wrap wrap--text / align-center">|</div></header>

    # Highlight - plus Abstand unten
    12 = TEXT
    12.value = <header class="section__header / pb-2"><div class="wrap wrap--text / align-center">|</div></header>

    13 = TEXT
    13.value = <blockquote class="quote / align-center mt-4 mb-4">|</blockquote>

    14 = TEXT
    14.value = <div class="flex-item c-4"><article class="card card--shadow">|</article></div>

    20 = TEXT
    20.value = |

    #############
    # Gridlements
    #############
    50 = TEXT
    50.value = <div class="section__content"><div class="flex-container space-between gutter valign-stretch">|</div></div>

    60 = TEXT
    60.value = <div class="section__content"><div class="slider js-slider">|</div></div>
}

/*
tt_content.header =< lib.contentElement
tt_content.header {
    templateName = Header
}
*/