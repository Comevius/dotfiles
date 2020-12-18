// Only whitelisted protocol handlers (Linux and OS X)
user_pref("network.protocol-handler.warn-external-default",  true);
user_pref("network.protocol-handler.expose-all",             false);
// True if protocol should be handled by browser or external application
user_pref("network.protocol-handler.expose.http",	           true);
user_pref("network.protocol-handler.expose.https",	         true);
user_pref("network.protocol-handler.expose.javascript",	     true);
user_pref("network.protocol-handler.expose.moz-extension",   true);
user_pref("network.protocol-handler.expose.ftp",	           true);
user_pref("network.protocol-handler.expose.file",	           true);
user_pref("network.protocol-handler.expose.about",	         true);
user_pref("network.protocol-handler.expose.chrome",	         true);
user_pref("network.protocol-handler.expose.blob",	           true);
user_pref("network.protocol-handler.expose.data",	           true);
user_pref("network.protocol-handler.expose.magnet",          true);
// False if protocol should not be handled by external application
user_pref("network.protocol-handler.external.http",	         false);
user_pref("network.protocol-handler.external.https",	       false);
user_pref("network.protocol-handler.external.javascript",    false);
user_pref("network.protocol-handler.external.moz-extension", false);
user_pref("network.protocol-handler.external.ftp",	         false);
user_pref("network.protocol-handler.external.file",	         false);
user_pref("network.protocol-handler.external.about",	       false);
user_pref("network.protocol-handler.external.chrome",	       false);
user_pref("network.protocol-handler.external.blob",	         false);
user_pref("network.protocol-handler.external.data",	         false);
user_pref("network.protocol-handler.external.magnet",        true);

// ------------------------------------------------------------------------

// Network connectivity service
user_pref("network.connectivity-service.enabled",            true);
// Captive portal detection
user_pref("network.captive-portal-service.enabled",          false);
user_pref("captivedetect.canonicalURL",                      "");

// Cookie
user_pref("network.cookie.cookieBehavior",                   1);
user_pref("network.cookie.lifetimePolicy",                   2);

// Offline status
user_pref("network.manage-offline-status",                   false);

// Prefetching
user_pref("network.dns.disablePrefetch",                     true);
user_pref("network.dns.disablePrefetchFromHTTPS",            true);
user_pref("network.predictor.enabled",                       false);
user_pref("network.http.speculative-parallel-limit",         0);

// Proxy
user_pref("network.proxy.type",                              0);

// Send referer
user_pref("network.http.sendRefererHeader",                  2);

// ------------------------------------------------------------------------

// Data collection
user_pref("datareporting.policy.dataSubmissionEnabled",      false);

// Crash reporting
user_pref("breakpad.reportURL",                              "");
user_pref("browser.tabs.crashReporting.sendReport",          false);
user_pref("browser.crashReports.unsubmittedCheck.enabled",   false);

// Health report
user_pref("datareporting.healthreport.uploadEnabled",        false);

// SSL error report
user_pref("security.ssl.errorReporting.enabled",             false);
user_pref("security.ssl.errorReporting.url",                 "");

// Telemetry
user_pref("toolkit.telemetry.unified",                       false);
user_pref("toolkit.telemetry.enabled",                       false);
user_pref("toolkit.telemetry.server",                        "");
user_pref("toolkit.telemetry.archive.enabled",               false);
user_pref("toolkit.telemetry.bhrPing.enabled",               false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled",     false);
user_pref("toolkit.telemetry.newProfilePing.enabled",        false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled",    false);
user_pref("toolkit.telemetry.updatePing.enabled",            false);
user_pref("toolkit.telemetry.reportingpolicy.firstRun",      false);

// Ping centre
user_pref("browser.ping-centre.telemetry",                   false);

// Shield studies
user_pref("app.shield.optoutstudies.enabled",                false);
user_pref("app.normandy.enabled",                            false);
user_pref("app.normandy.api_url",                            "");

// Devtools telemetry
user_pref("devtools.onboarding.telemetry.logged",            false);

// New feature experiments
user_pref("messaging-system.rsexperimentloader.enabled",     false);

// Check for corruption
user_pref("corroborator.enabled",                            false);

// ------------------------------------------------------------------------

// Safe browsing
user_pref("browser.safebrowsing.blockedURIs.enabled",        false);
user_pref("browser.safebrowsing.phishing.enabled",           false);
user_pref("browser.safebrowsing.malware.enabled",            false);
user_pref("browser.safebrowsing.downloads.enabled",          false);
user_pref("browser.safebrowsing.downloads.remote.enabled",   false);
user_pref("browser.safebrowsing.downloads.remote.block_potentially_unwanted", false);
user_pref("browser.safebrowsing.downloads.remote.block_uncommon", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous", false);
user_pref("browser.safebrowsing.downloads.remote.block_dangerous_host", false);
user_pref("browser.safebrowsing.provider.google.reportURL",  "");
user_pref("browser.safebrowsing.provider.google.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.dataSharingURL", "");
user_pref("browser.safebrowsing.provider.google4.reportMalwareMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportPhishMistakeURL", "");
user_pref("browser.safebrowsing.provider.google4.reportURL", "");
user_pref("browser.safebrowsing.reportPhishURL",             "");
user_pref("browser.safebrowsing.downloads.remote.url",       "");
user_pref("browser.safebrowsing.provider.google.gethashURL", "");
user_pref("browser.safebrowsing.provider.google.updateURL",  "");
user_pref("browser.safebrowsing.provider.google4.gethashURL", "");
user_pref("browser.safebrowsing.provider.google4.updateURL", "");
user_pref("browser.safebrowsing.provider.mozilla.gethashURL", "");
user_pref("browser.safebrowsing.provider.mozilla.updateURL", "");

// Tracking protection
user_pref("privacy.trackingprotection.enabled",              false);
user_pref("privacy.trackingprotection.pbmode.enabled",       false);

// ------------------------------------------------------------------------

// App update
user_pref("app.update.enabled",                              false);
user_pref("app.update.auto",                                 false);
user_pref("app.update.service.enabled",                      false);
user_pref("app.update.BITS.enabled",                         false);

// Extensions update
user_pref("extensions.getAddons.cache.enabled",              false);
user_pref("extensions.update.enabled",                       false);
user_pref("extensions.update.autoUpdateDefault",             false);
user_pref("extensions.autoupdate.enabled",                   false);
user_pref("extensions.systemAddon.update.enabled",           false);
user_pref("extensions.systemAddon.update.url",               "");

// Search engine update
user_pref("browser.search.update",                           false);

// Web apps update
user_pref("app.update.url.android",                          "");

// What is new
user_pref("browser.messaging-system.whatsNewPanel.enabled",  false);

// ------------------------------------------------------------------------

// WebRTC
user_pref("media.navigator.enabled",                         false);
user_pref("media.navigator.video.enabled",                   false);
user_pref("media.peerconnection.enabled",                    false);
user_pref("media.peerconnection.ice.default_address_only",   true);
user_pref("media.peerconnection.ice.no_host",                true);
user_pref("media.peerconnection.use_document_iceservers",    false);
user_pref("media.peerconnection.turn.disable",               true);
user_pref("media.peerconnection.video.enabled",              false);
user_pref("media.peerconnection.identity.enabled",           false);
user_pref("media.peerconnection.identity.timeout",           1);
user_pref("media.ondevicechange.enabled",                    true);

// Gecko media plugins (GMP)
user_pref("media.gmp-provider.enabled",                      false);
user_pref("media.gmp-gmpopenh264.enabled",                   false);
user_pref("media.gmp-gmpopenh264.autoupdate",                false);
user_pref("media.gmp-manager.updateEnabled",                 false);
user_pref("media.gmp-manager.url",                           "data:text/plain,");
user_pref("media.gmp-manager.url.override",                  "data:text/plain,");
user_pref("media.gmp.trial-create.enabled",                  false);

// Get user media
user_pref("media.getusermedia.screensharing.enabled",        false);
user_pref("media.getusermedia.audiocapture.enabled",         false);

// Digital rights management (DRM)
user_pref("media.gmp-widevinecdm.visible",                   false);
user_pref("media.gmp-widevinecdm.enabled",                   false);

// Encrypted media extensions (EME)
user_pref("media.eme.enabled",                               false);
user_pref("browser.eme.ui.enabled",                          false);

// ------------------------------------------------------------------------

// Extension blocklist
user_pref("extensions.blocklist.enabled",                    true);

// Extension signing
user_pref("xpinstall.signatures.required",                   true);

// Get add-ons discovery pane
user_pref("extensions.getAddons.showPane",                   false);
user_pref("extensions.webservice.discoverURL",               "");

// Web compatibility reporter
user_pref("extensions.webcompat-reporter.enabled",           false);

// Personalized extension recommendations
user_pref("browser.discovery.enabled",                       false);
user_pref("extensions.getAddons.discovery.api_url",          "");
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);

// Extension abuse reporting
user_pref("extensions.abuseReport.enabled",                  false);

// Extension storage sync
user_pref("webextensions.storage.sync.enabled",              true);
user_pref("webextensions.storage.sync.serverURL",            "");

// Firefox account
user_pref("identity.fxaccounts.enabled",                     false);

// ------------------------------------------------------------------------

// Home page
user_pref("browser.startup.homepage",                        "about:blank");
user_pref("browser.startup.homepage_override.mstone",        "ignore");
user_pref("startup.homepage_override_url",                   "");
user_pref("startup.homepage_welcome_url",                    "about:blank");

// New tab
user_pref("browser.newtabpage.introShown",                   true);
user_pref("browser.newtabpage.enabled",                      false);
user_pref("browser.newtabpage.enhanced",                     false);
user_pref("browser.newtab.preload",                          false);
user_pref("browser.tabs.loadInBackground",                   true);
user_pref("browser.tabs.loadDivertedInBackground",           false);
user_pref("browser.tabs.loadBookmarksInBackground",          false);
user_pref("browser.library.activity-stream.enabled",         false);
user_pref("browser.newtabpage.activity-stream.feeds.discoverystreamfeed", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.telemetry",    false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSearch",   false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);
user_pref("browser.newtabpage.activity-stream.migrationExpired", true);
user_pref("browser.newtabpage.activity-stream.asrouter.providers.snippets", "");
user_pref("browser.newtabpage.activity-stream.default.sites", "");

// Last tab
user_pref("browser.tabs.closeWindowWithLastTab",              false);

// Pocket
user_pref("extensions.pocket.enabled",                        false);

// ------------------------------------------------------------------------

// Check default browser
user_pref("browser.shell.checkDefaultBrowser",                false);

// Rights
user_pref("browser.rights.3.shown",                           true);

// Slow startup
user_pref("browser.slowStartup.samples",                      "0");
user_pref("browser.slowStartup.maxSamples",                   0);
user_pref("browser.slowStartup.notificationDisabled",         true);

// Startup page
user_pref("browser.startup.page",                             0);

// Thumbnails
user_pref("browser.pagethumbnails.capturing_disabled",        true);

// Onboarding
user_pref("browser.onboarding.enabled",                       false);

// UI tour
user_pref("browser.uitour.enabled",                           false);
user_pref("browser.uitour.url",                               "");

// ------------------------------------------------------------------------

// Clear recent history
user_pref("privacy.cpd.cache",                               true);
user_pref("privacy.cpd.cookies",                             true);
user_pref("privacy.cpd.downloads",                           true);
user_pref("privacy.cpd.formdata",                            true);
user_pref("privacy.cpd.history",                             true);
user_pref("privacy.cpd.offlineApps",                         true);
user_pref("privacy.cpd.openWindows",                         true);
user_pref("privacy.cpd.passwords",                           true);
user_pref("privacy.cpd.sessions",                            true);
user_pref("privacy.cpd.siteSettings",                        true);
user_pref("privacy.sanitize.timeSpan",                       0);

// Clear on shutdown
user_pref("privacy.sanitize.sanitizeOnShutdown",             true);
user_pref("privacy.clearOnShutdown.cache",                   true);
user_pref("privacy.clearOnShutdown.cookies",                 true);
user_pref("privacy.clearOnShutdown.downloads",               true);
user_pref("privacy.clearOnShutdown.formdata",                true);
user_pref("privacy.clearOnShutdown.history",                 true);
user_pref("privacy.clearOnShutdown.offlineApps",             true);
user_pref("privacy.clearOnShutdown.openWindows",             true);
user_pref("privacy.clearOnShutdown.sessions",                true);
user_pref("privacy.clearOnShutdown.siteSettings",            true);

// Download manager
user_pref("browser.helperApps.deleteTempFileOnExit",          true);
user_pref("browser.download.folderList",                      2);
user_pref("browser.download.useDownloadDir",                  false);

// Forms
user_pref("browser.formfill.enable",                          false);
user_pref("browser.formfill.expire_days",                     0);
user_pref("extensions.formautofill.available",                "off");
user_pref("extensions.formautofill.addresses.enabled",        false);
user_pref("extensions.formautofill.creditCards.enabled",      false);
user_pref("extensions.formautofill.heuristics.enabled",       false);

// Location bar
user_pref("browser.urlbar.searchSuggestionsChoice",           false);
user_pref("browser.urlbar.suggest.history",                   false);
user_pref("browser.urlbar.suggest.openpage",                  false);
user_pref("browser.urlbar.suggest.searches",                  false);
user_pref("browser.urlbar.clickSelectsAll",                   true);
user_pref("browser.urlbar.maxRichResults",                    0);
// Domain guessing
user_pref("browser.fixup.alternate.enabled",                  false);
// Keyword service
user_pref("keyword.enabled",                                  false);
user_pref("browser.urlbar.speculativeConnect.enabled",        false);
user_pref("browser.urlbar.trimURLs",                          false);
// DNS resolve single words
user_pref("browser.urlbar.dnsResolveSingleWordsAfterSearch",  0);
// Search suggestions
user_pref("browser.search.suggest.enabled",                   false);

// Cache
user_pref("network.http.use-cache",                           true);
user_pref("browser.cache.disk.enable",                        false);
user_pref("browser.cache.disk_cache_ssl",                     false);
user_pref("browser.cache.memory.enable",                      true);
user_pref("browser.cache.offline.enable",                     false);

// Offline data
user_pref("offline-apps.allow_by_default",                    false);

// Session store
user_pref("browser.sessionstore.privacy_level",               2);
user_pref("browser.sessionstore.resume_from_crash",           false);
user_pref("browser.sessionstore.restore_on_demand",           false);
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand", false);
user_pref("browser.sessionstore.interval",                    60000);
user_pref("browser.sessionstore.max_tabs_undo",               0);
user_pref("browser.sessionstore.max_windows_undo",            0);
user_pref("browser.sessionstore.max_resumed_crashes",         0);
user_pref("browser.sessionstore.warnOnQuit",                  false);

// Firefox Sync
user_pref("services.sync.engine.addons",                      false);
user_pref("services.sync.engine.bookmarks",                   false);
user_pref("services.sync.engine.history",                     false);
user_pref("services.sync.engine.passwords",                   false);
user_pref("services.sync.engine.prefs",                       false);
user_pref("services.sync.engine.tabs",                        false);
user_pref("services.sync.engine.creditcards",                 false);
user_pref("services.sync.engine.addresses",                   false);

// Passwords
user_pref("signon.rememberSignons",                           false);
user_pref("signon.autofillForms",                             false);
user_pref("signon.storeWhenAutocompleteOff",                  false);
user_pref("signon.formlessCapture.enabled",                   false);

// Popup windows
user_pref("browser.link.open_newwindow.restriction",          0);
user_pref("dom.popup_maximum",                                3);

// Reader mode
user_pref("reader.parse-on-load.enabled",                     false);

// Screen casting
user_pref("browser.casting.enabled",                          false);

// PDF viewer
user_pref("pdfjs.disabled",                                   true);

// Plugins
user_pref("plugin.scan.plid.all",                             false);
user_pref("plugin.default.state",                             0);
user_pref("plugin.defaultXpi.state",                          0);

// WebIDE
user_pref("devtools.webide.enabled",                          false);
user_pref("devtools.webide.autoinstallADBHelper",             false);

// Accessibility service
user_pref("accessibility.force_disabled",                     1);

// ------------------------------------------------------------------------

// Reduced motion
user_pref("ui.prefersReducedMotion",                          1);

// Density
user_pref("browser.uidensity",                                1);

// Smooth scrolling
user_pref("general.smoothScroll",                             false);

// Warnings
user_pref("general.warnOnAboutConfig",                        false);
user_pref("browser.aboutConfig.showWarning",                  false);
user_pref("full-screen-api.warning.delay",                    0);
user_pref("full-screen-api.warning.timeout",                  0);

// ------------------------------------------------------------------------

// Animated image autoplay
user_pref("image.animation_mode",                             "none");

// Media autoplay
user_pref("media.autoplay.default",                           5);
user_pref("media.autoplay.blocking_policy",                   0);
user_pref("media.autoplay.allow-muted",                       false);

// ------------------------------------------------------------------------

// Timing
user_pref("dom.enable_performance",                           false);
user_pref("dom.enable_resource_timing",                       false);

// Video stats
user_pref("media.video_stats.enabled",                        false);

// Battery API
user_pref("dom.battery.enabled",                              false);
// Beacon API
user_pref("beacon.enabled",                                   false);
// Camera API
user_pref("device.camera.enabled",                            false);
// CSS Font Loading API
user_pref("layout.css.font-loading-api.enabled",              false);
// Device Storage API
user_pref("device.storage.enabled",                           false);
// Gamepad API
user_pref("dom.gamepad.enabled",                              false);
// Geolocation API
user_pref("geo.enabled",                                      false);
user_pref("geo.wifi.logging.enabled",                         false);
user_pref("geo.wifi.xhr.timeout",                             1);
user_pref("geo.wifi.uri",                                     "");
// Geolocation-based search
user_pref("browser.search.region",                            "US");
user_pref("browser.search.isUS",                              true);
user_pref("browser.search.geoSpecificDefaults",               false);
user_pref("browser.search.geoSpecificDefaults.url",           "");
user_pref("browser.search.geoip.timeout",                     1);
user_pref("browser.search.geoip.url",                         "");
user_pref("browser.region.update.enabled",                    false);
user_pref("browser.region.network.url",                       "");
// HTMLCanvasElement
user_pref("canvas.capturestream.enabled",                     false);
// Network Information API
user_pref("dom.netinfo.enabled",                              false);
// Notification API
user_pref("dom.webnotifications.enabled",                     false);
user_pref("dom.webnotifications.serviceworker.enabled",       false);
// Push API
user_pref("dom.push.enabled",                                 false);
user_pref("dom.push.connection.enabled",                      false);
user_pref("dom.push.serverURL",                               "");
// Sensor API
user_pref("device.sensors.enabled",                           false);
// Vibration API
user_pref("dom.vibrator.enabled",                             false);
// WebGL API
user_pref("webgl.disabled",                                   true);
user_pref("webgl.enable-debug-renderer-info",                 false);
// Web Speech API
user_pref("media.webspeech.synth.enabled",                    false);
// WebVR API
user_pref("dom.vr.process.enabled",                           false);

// Web Channel
user_pref("webchannel.allowObject.urlWhitelist",              "");

// ------------------------------------------------------------------------

// Clipboard
user_pref("dom.allow_cut_copy",                               true);
user_pref("dom.event.clipboardevents.enabled",                false);

// Context menu
user_pref("dom.event.contextmenu.enabled",                    false);

// Window
user_pref("dom.disable_window_move_resize",                   true);
user_pref("dom.disable_window_open_feature.close",            true);
user_pref("dom.disable_window_open_feature.location",         true);
user_pref("dom.disable_window_open_feature.menubar",          true);
user_pref("dom.disable_window_open_feature.minimizable",      true);
user_pref("dom.disable_window_open_feature.personalbar",      true);
user_pref("dom.disable_window_open_feature.toolbar",          true);

// Document fonts
user_pref("browser.display.use_document_fonts",               1);

// SVG fonts
user_pref("gfx.font_rendering.opentype_svg.enabled",          true);

// Fonts with incorrect underline offsets
user_pref("font.blacklist.underline_offset",                  "");

// ------------------------------------------------------------------------

// Fingerprinting
user_pref("privacy.resistFingerprinting",                     true);
user_pref("privacy.resistFingerprinting.block_mozAddonManager", true);
user_pref("extensions.webextensions.restrictedDomains",       "");
user_pref("javascript.use_us_english_locale",                 true);

// First party isolation
user_pref("privacy.firstparty.isolate",                       true);

// Punycode phishing
user_pref("network.IDN_show_punycode",                        true);

// Digital certificates
user_pref("security.OCSP.enabled",                            0);

// SSL
user_pref("security.ssl.treat_unsafe_negotiation_as_broken",  true);

// HTTPS
user_pref("dom.security.https_only_mode",                     true);
user_pref("dom.security.https_only_mode.upgrade_local",       true);
user_pref("dom.security.https_only_mode.upgrade_onion",       true);

// ------------------------------------------------------------------------

// WebRender
user_pref("gfx.webrender.all",                                true);
