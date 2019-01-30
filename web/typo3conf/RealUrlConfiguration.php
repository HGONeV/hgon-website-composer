<?php
$TYPO3_CONF_VARS['EXTCONF']['realurl'] = array(

    //===============================================
    // Configuration for ALL domains (fallback)
    '_DEFAULT' => array(

        //===============================================
        // Setup
        'init' => array(
            'enableCHashCache' 			=> 1,
            'appendMissingSlash' 		=> 'ifNotFile,redirect',
            'adminJumpToBackend'        => 1,
            'enableUrlDecodeCache' 		=> 1,
            'enableUrlEncodeCache' 		=> 1,
            'emptyUrlReturnValue'       => '/'
        ),

        //===============================================
        // Redirects
        'redirects' => array(

        ),

        //===============================================
        // Basic variables which are prepended
        'preVars' => array(

            // No-Cache
            array(
                'GETvar' => 'no_cache',
                'valueMap' => array(
                    'nc' => 1,
                ),
                'noMatch' => 'bypass',
            ),

            // type
            array(
                'GETvar' => 'type',
                'valueMap' => array(
                    'pagetype-print' 			=> 	'98',
                    'pagetype-xml'				=>	'150',
                    'pagetype-content-only' 	=> 	'160',
                    'pagetype-plaintext'		=>	'170',
                    'pagetype-csv'				=>	'180',

                    // types from extensions
                    // have to be set here, because otherwise they get ignored in linkBuilder!
                    'pagetype-alerts-ajax'           => 1446640418,
                    'pagetype-consultant-ajax'       => 1449742214,
                    'pagetype-infolayer-ajax'        => 1417609477,
                    'pagetype-registration-ajax'     => 1449722003,
                    'pagetype-search-ajax'           => 1433770902,
                    'pagetype-search-not-found'      => 1444893030,
                    'pagetype-socialcomments-ajax'   => 1417692531,
                    'pagetype-basics-google-sitemap' => 1453279478,
                    'pagetype-wepstra-ajax'          => 1470640639,
                    'pagetype-wepstra-print'         => 1470640673,
                    'pagetype-rss'                   => 1449588488,
                    'pagetype-instantarticles'       => 1449588489,
                    'pagetype-order-ajax'            => 1510210402,
                    'pagetype-tools-ajax'            => 1512989710,
                    'pagetype-ecosystem-ajax'        => 1513597215,
                    'pagetype-ecosystem-print'       => 1513597216,
                    'pagetype-newletter'             => 1536732477,
                ),
                'noMatch' => 'bypass',
            ),


            // Language
            array(
                'GETvar' => 'L',
                'valueMap' => array(
                    'de' => '0',
                    'en' => '1',
                    'fr' => '2',
                    'ru' => '3',
                    'it' => '4'
                ),
                'noMatch' => 'bypass',
            ),
        ),


        //===============================================
        // Params for path-processing
        'pagePath' => array(
            'type' 				=> 'user',
            # 'userFunc' 			=> 'EXT:rkw_tools/Classes/RealUrlV1/class.tx_rkwtools_realurl_advanced.php:&tx_rkwtools_realurl_advanced->main',
            'userFunc'          => 'EXT:realurl/class.tx_realurl_advanced.php:&tx_realurl_advanced->main',
            'spaceCharacter' 	=> '-',
            'languageGetVar' 	=> 'L',
            'expireDays' 		=> 3,
            'rootpage_id' 		=> 1,
        ),


        //===============================================
        // Variables without keyword based grouping
        'fixedPostVarSets' => array(

        ),


        //===============================================
        // Variables with keyword based grouping
        'postVarSets' => array(

            '_DEFAULT' => array(


                //===============================================
                // Search
                'tx-rkw-search' => array (
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[controller]' ,
                        'valueMap' => array(
                            'search' => 'Search',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[page]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[maxResults]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[containerId]' ,
                     ),
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[noAutoloadMore]' ,
                        'valueMap' => array(
                            'noautoload' => 1,
                        ),
                    ),
                    array(
                        'GETvar' => 'autocomplete' ,
                        'valueMap' => array(
                            'autocomplete' => 1,
                        ),
                    ),
                ),

                //===============================================
                // Alerts
                'tx-rkw-alerts' => array (
                    array(
                        'GETvar' => 'tx_rkwalerts_rkwalerts[controller]',
                        'valueMap' => array(
                            'alerts' => 'Alerts',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwalerts_rkwalerts[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwalerts_rkwalerts[alert]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwsearch_rkwsearch[maxResults]' ,
                    ),
                ),

                //===============================================
                // Registration
                'tx-rkw-registration' => array (
                    array(
                        'GETvar' => 'tx_rkwregistration_rkwregistration[controller]' ,
                        'valueMap' => array(
                            'register' => 'Registration',
                            'service' => 'Service',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwregistration_rkwregistration[action]' ,
                    ),

                    array(
                        'GETvar' => 'tx_rkwregistration_rkwregistration[token]',
                    ),
                ),

                //===============================================
                // Socialcomments
                'tx-rkw-comments' => array (
                    array(
                        'GETvar' => 'tx_rkwsocialcomments_pagecomments[controller]',
                        'valueMap' => array(
                            'comment' => 'Comment',
                            'report' => 'Report'
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwsocialcomments_pagecomments[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwsocialcomments_pagecomments[comment]',
                    )
                ),

                //===============================================
                // Watchlist
                'tx-rkw-bookmarks' => array (
                    array(
                        'GETvar' => 'tx_rkwwatchlist_mywatchlist[controller]',
                        'valueMap' => array(
                            'bookmark' => 'Watchlist',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwwatchlist_mywatchlist[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwwatchlist_mywatchlist[item]' ,
                    ),
                ),

                //===============================================
                // Order
                'tx-rkw-order' => array (
                    array(
                        'GETvar' => 'tx_rkworder_rkworder[controller]',
                        'valueMap' => array(
                            'order' => 'Order',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkworder_rkworder[action]' ,
                    ),
                ),


                //===============================================
                // Consultants
                'tx-rkw-consultant' => array (
                    array(
                        'GETvar' => 'tx_rkwconsultant_rkwconsultant[controller]',
                        'valueMap' => array(
                            'consultant' => 'Consultant',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwconsultant_rkwconsultant[action]' ,
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_rkwconsultant_rkwconsultant[consultant]' ,
                        'lookUpTable' => array(
                            'table' => 'tx_rkwconsultant_domain_model_consultant',
                            'id_field' => 'uid',
                            'alias_field' => 'company',
                            'addWhereClause' => ' AND NOT deleted AND NOT hidden',
                            'useUniqueCache' => 1,
                            'useUniqueCache_conf' => array(
                                'strtolower' => 1,
                                'spaceCharacter' => '-',
                            ),
                        ),
                    ),

                ),

                'tx-rkw-myconsultant' => array (
                    array(
                        'GETvar' => 'tx_rkwconsultant_rkwconsultantmyconsultant[controller]',
                        'valueMap' => array(
                            'consultant' => 'Consultant',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwconsultant_rkwconsultantmyconsultant[action]' ,
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_rkwconsultant_rkwconsultantmyconsultant[consultant]',
                        'lookUpTable' => array(
                            'table' => 'tx_rkwconsultant_domain_model_consultant',
                            'id_field' => 'uid',
                            'alias_field' => 'company',
                            'addWhereClause' => ' AND NOT deleted AND NOT hidden',
                            'useUniqueCache' => 1,
                            'useUniqueCache_conf' => array(
                                'strtolower' => 1,
                                'spaceCharacter' => '-',
                            ),
                        ),
                    ),
                ),


				//===============================================
				// Authors
				'tx-rkw-authors' => array (

					array(
						'GETvar' => 'tx_rkwauthors_rkwauthorsdetail[controller]',
						'valueMap' => array(
							'authors' => 'Authors',
						),
					),
					array(
						'GETvar' => 'tx_rkwauthors_rkwauthorsdetail[action]' ,
					),

					// look-up table - param has to be set in cHash-ignore in Install-Tool!
					array(
						'GETvar' => 'tx_rkwauthors_rkwauthorsdetail[author]' ,
						'lookUpTable' => array(
							'table' => 'tx_rkwauthors_domain_model_authors',
							'id_field' => 'uid',
							'alias_field' => 'CONCAT(first_name, "-", last_name)',
							'addWhereClause' => ' AND NOT deleted AND NOT hidden',
							'useUniqueCache' => 1,
							'useUniqueCache_conf' => array(
								'strtolower' => 1,
								'spaceCharacter' => '-',
							),
						),
					),

				),

                //===============================================
                // Events
                'tx-rkw-events' => array (
                    array(
                        'GETvar' => 'tx_rkwevents_pi1[controller]',
                        'valueMap' => array(
                            'event' => 'Event',
                            'poll' => 'EventPoll',
                            'reservation' => 'EventReservation',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwevents_pi1[action]' ,
                    ),

                    // look-up table - param has to be set in cHash-ignore in Install-Tool!
                    array(
                        'GETvar' => 'tx_rkwevents_pi1[event]' ,
                            'lookUpTable' => array(
                            'table' => 'tx_rkwevents_domain_model_event',
                            'id_field' => 'uid',
                            'alias_field' => 'CONCAT(title, "-", uid)',
                            'addWhereClause' => ' AND NOT deleted AND NOT hidden',
                            'useUniqueCache' => 1,
                            'useUniqueCache_conf' => array(
                                'strtolower' => 1,
                                'spaceCharacter' => '-',
                            ),
                        ),
                    ),
                ),

				//===============================================
				// WePstra
				'tx-rkw-wepstra' => array (
					array(
						'GETvar' => 'tx_rkwwepstra_rkwwepstra[controller]',
						'valueMap' => array(
							'step' => 'Step',
							'data' => 'Data'
						),
					),
					array(
						'GETvar' => 'tx_rkwwepstra_rkwwepstra[action]' ,
					),
					array(
						'GETvar' => 'tx_rkwwepstra_rkwwepstra[token]',
					),
				),

                //===============================================
                // Related
                'tx-rkw-related' => array (
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent[controller]',
                        'valueMap' => array(
                            'more' => 'More',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent[ttContentUid]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent[pageNumber]' ,
                    ),
                ),

                'tx-rkw-related2' => array (
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent2[controller]',
                        'valueMap' => array(
                            'more' => 'More',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent2[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent2[ttContentUid]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontent2[pageNumber]' ,
                    ),
                ),

                'tx-rkw-related3' => array (
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontentpublication[controller]',
                        'valueMap' => array(
                            'more' => 'More',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontentpublication[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontentpublication[ttContentUid]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwrelated_morecontentpublication[pageNumber]' ,
                    ),
                ),


                //===============================================
                // Webcheck
                'tx-rkw-webcheck' => array (
                    array(
                        'GETvar' => 'tx_rkwwebcheck_check[controller]',
                        'valueMap' => array(
                            'check' => 'Webcheck',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwwebcheck_check[action]' ,
                    ),
                ),

                //===============================================
                // Survey
                'tx-rkw-survey' => array (
                    array(
                        'GETvar' => 'tx_rkwsurvey_survey[controller]',
                        'valueMap' => array(
                            'survey' => 'Survey',
                        ),
                    ),
                    array(
                        'GETvar' => 'tx_rkwsurvey_survey[action]' ,
                    ),
                    array(
                        'GETvar' => 'tx_rkwsurvey_survey[surveyResult]',
                    ),
                ),
            ),
        ),

        //==================================================
        // map some type to file name: rss.xml = &typo=100
        /*
        'fileName' => array(
            'defaultToHTMLsuffixOnPrev' => 0,
            'acceptHTMLsuffix'			=> 0,

            'index' => array(
                'rss.xml' => array(
                    'keyValues' => array(
                        'type' => 100,
                    ),
                ),

                'rss091.xml' => array(
                    'keyValues' => array(
                        'type' => 101,
                    ),
                ),

                'rdf.xml' => array(
                    'keyValues' => array(
                        'type' => 102,
                    ),
                ),

                'atom.xml' => array(
                    'keyValues' => array(
                        'type' => 103,
                    ),
                )
            )
        )
        */
    )
);

// Configuration for another domains
$TYPO3_CONF_VARS['EXTCONF']['realurl']['mein.rkw.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['mein.rkw.de']['pagePath']['rootpage_id'] = 3577;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['wepstra-app.rkw-kompetenzzentrum.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['wepstra-app.rkw-kompetenzzentrum.de']['pagePath']['rootpage_id'] = 2854;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.aprodi-projekt.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.aprodi-projekt.de']['pagePath']['rootpage_id'] = 3865;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.baumitbim.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.baumitbim.de']['pagePath']['rootpage_id'] = 4367;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.eanpc.eu'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.eanpc.eu']['pagePath']['rootpage_id'] = 3881;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.frauenambau.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.frauenambau.de']['pagePath']['rootpage_id'] = 3684;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.karriereseiten-check.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.karriereseiten-check.de']['pagePath']['rootpage_id'] = 3942;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.ressinnobau.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.ressinnobau.de']['pagePath']['rootpage_id'] = 3673;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw.de']['pagePath']['rootpage_id'] = 4347;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-sachsenanhalt.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-sachsenanhalt.de']['pagePath']['rootpage_id'] = 3471;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-thueringen.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-thueringen.de']['pagePath']['rootpage_id'] = 3757;

// =================================================
$TYPO3_CONF_VARS['EXTCONF']['realurl']['bremen.rkw-kompetenzzentrum.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['bremen.rkw-kompetenzzentrum.de']['pagePath']['rootpage_id'] = 4763;

$TYPO3_CONF_VARS['EXTCONF']['realurl']['nord.rkw-kompetenzzentrum.de'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['_DEFAULT'];
$TYPO3_CONF_VARS['EXTCONF']['realurl']['nord.rkw-kompetenzzentrum.de']['pagePath']['rootpage_id'] = 3595;


/**
 * Development environment
 * TYPO3_CONTEXT Development
 */
if(\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->isDevelopment()) {

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['mein.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['mein.rkw.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['wepstra-app.rkw-kompetenzzentrum.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['wepstra-app.rkw-kompetenzzentrum.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['aprodi-projekt.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.aprodi-projekt.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['baumitbim.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.baumitbim.de'];

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['eanpc.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.eanpc.eu'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['frauenambau.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.frauenambau.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['karriereseiten-check.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.karriereseiten-check.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['ressinnobau.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.ressinnobau.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['rkw-sachsenanhalt.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-sachsenanhalt.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['rkw-thueringen.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-thueringen.de'];

    # ==========================================
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['bremen.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['bremen.rkw-kompetenzzentrum.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['nord.rkw.local'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['nord.rkw-kompetenzzentrum.de'];

}

/**
 * Staging environment
 * TYPO3_CONTEXT Production/Staging
 */
if(
    (\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->isProduction())
    && (\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->__toString() === 'Production/Staging')
){

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['mein.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['mein.rkw.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['wepstra-app.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['wepstra-app.rkw-kompetenzzentrum.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['aprodi-projekt.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.aprodi-projekt.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['baumitbim.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.baumitbim.de'];

    $TYPO3_CONF_VARS['EXTCONF']['realurl']['eanpc.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.eanpc.eu'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['frauenambau.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.frauenambau.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['karriereseiten-check.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.karriereseiten-check.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['ressinnobau.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.ressinnobau.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['rkw-sachsenanhalt.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-sachsenanhalt.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['rkw-thueringen.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['www.rkw-thueringen.de'];

    # ==========================================
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['bremen.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['bremen.rkw-kompetenzzentrum.de'];
    $TYPO3_CONF_VARS['EXTCONF']['realurl']['nord.rkw.codes'] = $TYPO3_CONF_VARS['EXTCONF']['realurl']['nord.rkw-kompetenzzentrum.de'];
    
}

