// Service Workers API
user_pref("dom.serviceWorkers.enabled",	                     true);
user_pref("dom.caches.enabled",                              true);
// WebSockets
user_pref("network.websocket.enabled",                       true);
// IndexedDB
user_pref("dom.indexedDB.enabled",                           true);

// Network Information API
user_pref("dom.netinfo.enabled",                             false);
user_pref("dom.network.enabled",                             false);
// Sensors API
user_pref("device.sensors.enabled",                          false);
user_pref("device.sensors.ambientLight.enabled",             false);
user_pref("device.sensors.proximity.enabled",                false);
// Battery Status API
user_pref("dom.battery.enabled",                             false);
// Gamepad API
user_pref("dom.gamepad.enabled",                             false);
// WebVR API
user_pref("dom.vr.enabled",                                  false);
// Vibration API
user_pref("dom.vibrator.enabled",                            false);
// Geolocation API
user_pref("geo.enabled",                                     false);
// Push API
user_pref("dom.push.enabled",                                false);
// Notifications API
user_pref("dom.webnotifications.enabled",                    false);
// Navigation Timing API
user_pref("dom.enable_performance",                          false);
// User Timing API
user_pref("dom.enable_user_timing",                          false);
// Resource Timing API
user_pref("dom.enable_resource_timing",                      false);
// Intersection Observer API
user_pref("dom.IntersectionObserver.enabled",                false);
// Pointer Events API
user_pref("dom.w3c_pointer_events.enabled",                  false);
// Touch Events API
user_pref("dom.w3c_touch_events.enabled",                    0);
// Beacon API
user_pref("beacon.enabled",                                  false);
// Web Audio API
user_pref("dom.webaudio.enabled",                            false);
// Web Speech API
user_pref("media.webspeech.recognition.enable",	             false);
user_pref("media.webspeech.synth.enabled",                   false);

// WebRTC
user_pref("media.peerconnection.enabled",                    true);
// Only reflexive (STUN server) and relay (TURN server) candidates
user_pref("media.peerconnection.ice.no_host",		     true);
// Only relay (TURN server) candidates
user_pref("media.peerconnection.ice.relay_only",             false);
// Use STUN/TURN servers provided by page
user_pref("media.peerconnection.use_document_iceservers",    true);
// Stream API
user_pref("media.navigator.enabled",                         false);
user_pref("media.navigator.video.enabled",                   false);
user_pref("media.getusermedia.screensharing.enabled",        false);
user_pref("media.getusermedia.audiocapture.enabled",         false);

// WebGL
user_pref("webgl.disabled",                                  false);
// WebGL extensions
user_pref("webgl.disable-extensions",                        true);
// Only feature set and capabilities required by WebGL specification
user_pref("webgl.min_capability_mode",                       true);
// Debug vendor and renderer info
user_pref("webgl.enable-debug-renderer-info",		     false);

// asm.js
user_pref("javascript.options.asmjs",                        true);
// WebAssembly
user_pref("javascript.options.wasm",                         true);
// SharedArrayBuffer
user_pref("javascript.options.shared_memory",                false);

// CSS visited links
user_pref("layout.css.visited_links_enabled",                false);

// ------------------------------------------------------------------------

// Only whitelisted protocol handlers (Linux and OS X)
user_pref("network.protocol-handler.warn-external-default",  true);
user_pref("network.protocol-handler.expose-all",             false);
// True if protocol should be handled by browser or external application
user_pref("network.protocol-handler.expose.http",	     true);
user_pref("network.protocol-handler.expose.https",	     true);
user_pref("network.protocol-handler.expose.javascript",	     true);
user_pref("network.protocol-handler.expose.moz-extension",   true);
user_pref("network.protocol-handler.expose.ftp",	     true);
user_pref("network.protocol-handler.expose.file",	     true);
user_pref("network.protocol-handler.expose.about",	     true);
user_pref("network.protocol-handler.expose.chrome",	     true);
user_pref("network.protocol-handler.expose.blob",	     true);
user_pref("network.protocol-handler.expose.data",	     true);
user_pref("network.protocol-handler.expose.magnet",          true);
// False if protocol should not be handled by external application
user_pref("network.protocol-handler.external.http",	     false);
user_pref("network.protocol-handler.external.https",	     false);
user_pref("network.protocol-handler.external.javascript",    false);
user_pref("network.protocol-handler.external.moz-extension", false);
user_pref("network.protocol-handler.external.ftp",	     false);
user_pref("network.protocol-handler.external.file",	     false);
user_pref("network.protocol-handler.external.about",	     false);
user_pref("network.protocol-handler.external.chrome",	     false);
user_pref("network.protocol-handler.external.blob",	     false);
user_pref("network.protocol-handler.external.data",	     false);
user_pref("network.protocol-handler.external.magnet",        true);

// ------------------------------------------------------------------------

// Only private browsing
user_pref("browser.privatebrowsing.autostart",		     true);

// First party isolation
// https://www.torproject.org/projects/torbrowser/design/#identifier-linkability
user_pref("privacy.firstparty.isolate",                        true);
user_pref("privacy.firstparty.isolate.restrict_opener_access", false);

// Cache
user_pref("network.http.use-cache",                          true);
// Cache on disk
user_pref("browser.cache.disk.enable",                       false);
user_pref("browser.cache.disk_cache_ssl",                    false);
// Cache in memory
user_pref("browser.cache.memory.enable",                     true);
// Offline cache
user_pref("browser.cache.offline.enable",                    false);

// Logins and passwords
user_pref("signon.rememberSignons",                          false);
// Cookies
user_pref("network.cookie.cookieBehavior",                   1);
user_pref("network.cookie.lifetimePolicy",                   2);
// Browsing and download history
user_pref("places.history.enabled",                          false);
user_pref("browser.download.manager.retention",              0);
// Search and form history
user_pref("browser.formfill.enable",                         false);
// Autofill
user_pref("signon.autofillForms",                            false);
user_pref("signon.autofillForms.http",                       false);
user_pref("signon.formlessCapture.enabled",                  false);

// Firefox Sync
user_pref("services.sync.engine.addons",                     true);
user_pref("services.sync.engine.bookmarks",                  true);
user_pref("services.sync.engine.history",                    false);
user_pref("services.sync.engine.passwords",                  false);
user_pref("services.sync.engine.prefs",                      false);
user_pref("services.sync.engine.tabs",                       false);
user_pref("services.sync.engine.creditcards",                false);
user_pref("services.sync.engine.addresses",                  false);

// Session restore
user_pref("browser.sessionstore.privacy_level",		     2);
user_pref("browser.sessionstore.resume_from_crash",          false);
user_pref("browser.sessionstore.max_tabs_undo",              0);
user_pref("browser.sessionstore.max_windows_undo",           0);
// Startup
user_pref("browser.startup.page",                            0);

// Address bar autocomplete
user_pref("browser.urlbar.autocomplete.enabled",             false);
user_pref("browser.search.suggest.enabled",                  false);
user_pref("browser.urlbar.suggest.searches",                 false);
user_pref("browser.urlbar.suggest.history",                  false);
user_pref("browser.urlbar.suggest.openpage",                 false);
user_pref("browser.urlbar.maxHistoricalSearchSuggestions",   0);
user_pref("browser.urlbar.usepreloadedtopurls.enabled",      false);
user_pref("browser.urlbar.filter.javascript",                true);
user_pref("browser.urlbar.userMadeSearchSuggestionsChoice",  true);
// Address bar autofill
user_pref("browser.urlbar.autoFill",                         false);
user_pref("browser.urlbar.autoFill.typed",                   false);
// Address bar domain guessing
user_pref("browser.fixup.alternate.enabled",                 false);
// Address bar search engines
user_pref("browser.urlbar.oneOffSearches",                   false);

// New Tab Page
user_pref("browser.newtabpage.enabled",		                 false);
// Activity Stream (replaces New Tab Page)
user_pref("browser.newtabpage.activity-stream.enabled",          false);
user_pref("browser.newtabpage.activity-stream.feeds.newtabinit", false);
user_pref("browser.newtabpage.activity-stream.prerender",        false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets",   false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.library.activity-stream.enabled",             false);
// Screenshots of visited pages
user_pref("browser.pagethumbnails.capturing_disabled",           true);

// User interface density
user_pref("browser.uidensity",                               1);

// Popups
user_pref("browser.link.open_newwindow.restriction",         0);

// Smooth scrolling
user_pref("general.smoothScroll",                            false);

// Spell checking
user_pref("layout.spellcheckDefault",                        0);

// ------------------------------------------------------------------------

// SSDP (Chromecast, Roku)
user_pref("browser.casting.enabled",                         false);

// Monitor connection state
user_pref("network.manage-offline-status",                   false);

// Link prefetching
user_pref("network.prefetch-next",                           false);
// DNS prefetching
user_pref("network.dns.disablePrefetch",                     true);
user_pref("network.dns.disablePrefetchFromHTTPS",            true);
// Speculative connections
user_pref("network.predictor.enabled",                       false);
user_pref("network.predictor.enable-prefetch",               false);
user_pref("network.http.speculative-parallel-limit",         0);
user_pref("browser.urlbar.speculativeConnect.enabled",       false);
// Pings
user_pref("browser.send_pings",                              false);
user_pref("browser.send_pings.require_same_host",            true);

// Referer header
user_pref("network.http.sendRefererHeader",                  2);
user_pref("network.http.referer.trimmingPolicy",             0);
user_pref("network.http.referer.XOriginPolicy",              2);
user_pref("network.http.referer.XOriginTrimmingPolicy",      0);
user_pref("network.http.referer.spoofSource",                false);

// DNS over HTTPS
//user_pref("network.trr.mode",                                3);
//user_pref("network.trr.uri",                                 "https://dns.cloudflare.com/.well-known/dns");
//user_pref("network.trr.bootstrapAddress",                    "1.1.1.1");

// HTTP Alternative Services
user_pref("network.http.altsvc.enabled",                     true);
user_pref("network.http.altsvc.oe",                          true);

// Cross-origin sub-resources triggering HTTP authentication dialog
user_pref("network.auth.subresource-http-auth-allow",                  1);
user_pref("network.auth.subresource-img-cross-origin-http-auth-allow", false);

// Captive portal detection
user_pref("network.captive-portal-service.enabled",          false);
user_pref("captivedetect.canonicalURL",                      "");

// Telemetry
user_pref("toolkit.telemetry.enabled",                       false);
user_pref("toolkit.telemetry.unified",                       false);
user_pref("toolkit.telemetry.archive.enabled",               false);
user_pref("toolkit.telemetry.newProfilePing.enabled",        false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled",    false);
user_pref("toolkit.telemetry.updatePing.enabled",            false);
user_pref("toolkit.telemetry.bhrPing.enabled",               false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled",     false);
user_pref("toolkit.telemetry.hybridContent.enabled",         false);
user_pref("browser.newtabpage.activity-stream.telemetry",    false);
// Experiments
user_pref("experiments.supported",                           false);
user_pref("experiments.enabled",                             false);
user_pref("experiments.manifest.uri",                        "");
user_pref("experiments.activeExperiment",                    false);
user_pref("network.allow-experiments",                       false);
// Health Report
user_pref("datareporting.policy.dataSubmissionEnabled",      false);
user_pref("datareporting.healthreport.uploadEnabled",        false);
user_pref("datareporting.healthreport.service.enabled",      false);
user_pref("datareporting.healthreport.about.reportUrl",      "");
user_pref("datareporting.healthreport.about.reportUrlUnified", "");
// Normandy/SHIELD Studies
user_pref("app.normandy.enabled",                            false);
user_pref("app.normandy.api_url",                            "");
user_pref("app.shield.optoutstudies.enabled",                false);
user_pref("extensions.shield-recipe-client.enabled",         false);
user_pref("extensions.shield-recipe-client.api_url",         "");
// Heartbeat
user_pref("browser.selfsupport.url",                         "");
// SSL error reporting
user_pref("security.ssl.errorReporting.enabled",             false);
user_pref("security.ssl.errorReporting.url",                 "");
user_pref("security.ssl.errorReporting.automatic",           false);
// Crash reports
user_pref("breakpad.reportURL",                              "");
user_pref("browser.tabs.crashReporting.sendReport",          false);
user_pref("browser.crashReports.unsubmittedCheck.enabled",   false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
// Add-on recommendations
user_pref("extensions.getAddons.cache.enabled",	             false);
// Persona updates
user_pref("lightweightThemes.update.enabled",                false);
// Homepage messages
user_pref("browser.aboutHomeSnippets.updateUrl",             "");
// Mozilla.UITour API
user_pref("browser.uitour.enabled",                          false);
// Onboarding
user_pref("browser.onboarding.enabled",                      false);
// Web Compatibility Reporter
user_pref("extensions.webcompat-reporter.enabled",           false);
// Screenshots
user_pref("extensions.screenshots.disabled",                 true);
// Pocket
user_pref("extensions.pocket.enabled",                       false);
// Form Autofill
user_pref("extensions.formautofill.addresses.enabled",       false);
user_pref("extensions.formautofill.creditCards.enabled",     false);
user_pref("extensions.formautofill.heuristics.enabled",      false);
user_pref("extensions.formautofill.available",               "off");

// Built-in PDF viewer
user_pref("pdfjs.disabled",                                  false);

// WebIDE
user_pref("devtools.webide.enabled",                         false);
user_pref("devtools.webide.autoinstallADBHelper",            false);
user_pref("devtools.webide.autoinstallFxdtAdapters",         false);
// Remote debugging
user_pref("devtools.debugger.remote-enabled",                false);
user_pref("devtools.chrome.enabled",                         false);
user_pref("devtools.debugger.force-local",                   true);

// Firefox updates
user_pref("app.update.enabled",                              false);
user_pref("app.update.auto",			             false);
// Add-on updates
user_pref("extensions.update.enabled",                       true);
// Kinto blocklists
user_pref("services.blocklist.update_enabled",               true);
user_pref("services.blocklist.signing.enforced",             true);
// Search engine updates
user_pref("browser.search.update",                           false);
// Check if default browser
user_pref("browser.shell.checkDefaultBrowser",               false);

// Plugins
user_pref("plugin.default.state",                            0);
user_pref("plugins.click_to_play",                           true);
user_pref("plugin.state.flash",                              0);
user_pref("plugin.state.java",                               0);

// Gecko Media Plugins (GMP)
user_pref("media.gmp-provider.enabled",                      false);
user_pref("media.gmp.trial-create.enabled",                  false);
user_pref("media.gmp-manager.updateEnabled",                 false);
// Encryption Media Extension (EME)
user_pref("media.eme.enabled",                               false);
user_pref("browser.eme.ui.enabled",                          false);
// Content Decryption Module (CDM)
user_pref("media.gmp-widevinecdm.enabled",                   false);
user_pref("media.gmp-widevinecdm.autoupdate",                false);
user_pref("media.gmp-widevinecdm.visible",                   false);
// OpenH264 codec
user_pref("media.gmp-gmpopenh264.enabled",                   false);
user_pref("media.gmp-gmpopenh264.autoupdate",                false);

// Safe Browsing
user_pref("browser.safebrowsing.downloads.enabled",          false);
user_pref("browser.safebrowsing.malware.enabled",            false);
user_pref("browser.safebrowsing.phishing.enabled",           false);
user_pref("browser.safebrowsing.blockedURIs.enabled",        false);

// Tracking Protection
user_pref("privacy.trackingprotection.enabled",              true);
user_pref("privacy.trackingprotection.pbmode.enabled",       true);

// Default search engine region
user_pref("browser.search.countryCode",                      "US");
user_pref("browser.search.region",                           "US");
user_pref("browser.search.geoip.url",                        "");
user_pref("browser.search.geoSpecificDefaults",              false);
// Default locale
user_pref("intl.locale.matchOS",                             false);
user_pref("intl.accept_languages",                           "en-us, en");
user_pref("javascript.use_us_english_locale",                true);

// Accessibility services
user_pref("accessibility.force_disabled",                    1);

// https://bugzilla.mozilla.org/show_bug.cgi?id=1333933
// https://github.com/ghacksuserjs/ghacks-user.js/issues/7
user_pref("privacy.resistFingerprinting",                    true);

// ------------------------------------------------------------------------

// Off-main-thread compositing (OMTC)
user_pref("layers.acceleration.force-enabled",               true);
// Off-main-thread painting (OMTP)
user_pref("layers.omtp.enabled",                             true);
