tt_content.stdWrap.innerWrap.cObject = CASE
tt_content.stdWrap.innerWrap.cObject {
    key.field = layout

    /*
    # Highlight - nur Abstand oben
    11 = TEXT
    11.value = <header class="section__header"><div class="wrap wrap--text / align-center">|</div></header>

    # Highlight - plus Abstand unten
    12 = TEXT
    12.value = <header class="section__header / pb-2"><div class="wrap wrap--text / align-center">|</div></header>
    */

    # Zitat
    13 = TEXT
    13.value = <blockquote class="quote / align-center mt-4 mb-4">|</blockquote>

    # Sidebar
    40 = TEXT
    40.value = <aside class="aside color-bg-cta has-shadow">|</aside>
    41 = TEXT
    41.value = <aside class="aside color-bg-tertiary">|</aside>
    42 = TEXT
    42.value = <aside class="aside color-bg-secondary color-font-white">|</aside>

    # Sitemap
    50 = TEXT
    50.value = <ul class="menu menu--list">|</ul>
    51 = TEXT
    51.value = <ul class="menu menu--inline">|</ul>


}

/*
tt_content.header =< lib.contentElement
tt_content.header {
    templateName = Header
}
*/