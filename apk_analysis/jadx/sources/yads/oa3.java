package yads;

/* JADX INFO: loaded from: classes6.dex */
public enum oa3 {
    AD_HEADER_WIDTH("Ad-Width"),
    AD_HEADER_HEIGHT("Ad-Height"),
    AD_TYPE("Ad-Type"),
    AD_INFO("Ad-Info"),
    AD_CLOSE_BUTTON_DELAY("Ad-CloseButtonDelay"),
    AD_IMPRESSION_DATA("Ad-ImpressionData"),
    AD_PRELOAD_NATIVE_VIDEO("Ad-PreloadNativeVideo"),
    AD_PRELOAD_IMAGES("Ad-PreloadImages"),
    /* JADX INFO: Fake field, exist only in values array */
    AD_RENDER_TRACKING_URLS("Ad-RenderTrackingUrls"),
    AD_DESIGN("Ad-Design"),
    AD_LANGUAGE("Ad-Language"),
    AD_EXPERIMENTS("Ad-Experiments"),
    AD_AB_EXPERIMENTS("Ad-AbExperiments"),
    AD_MEDIATION("Ad-Mediation"),
    AD_CONTENT_TYPE("Ad-ContentType"),
    AD_SERVER_LOG_ID("Ad-ServerLogId"),
    AD_PREFETCH_COUNT("Ad-PrefetchCount"),
    AD_REFRESH_PERIOD("Ad-RefreshPeriod"),
    AD_RELOAD_TIMEOUT("Ad-ReloadTimeout"),
    AD_REWARD_AMOUNT("Ad-RewardAmount"),
    AD_REWARD_DELAY("Ad-RewardDelay"),
    AD_REWARD_TYPE("Ad-RewardType"),
    AD_REWARD_URL("Ad-RewardUrl"),
    AD_EMPTY_INTERVAL("Ad-EmptyInterval"),
    AD_RENDERER("Ad-Renderer"),
    AD_ROTATION_ENABLED("Ad-RotationEnabled"),
    AD_RAW_VAST_ENABLED("Ad-RawVastEnabled"),
    AD_SERVER_SIDE_REWARD("Ad-ServerSideReward"),
    AD_SESSION_DATA("Ad-SessionData"),
    AD_FEED_SESSION_DATA("Ad-FeedSessionData"),
    AD_RENDER_AD_IDS("Ad-RenderAdIds"),
    AD_IMPRESSION_AD_IDS("Ad-ImpressionAdIds"),
    AD_NON_SKIPPABLE_AD_ENABLED("Ad-NonSkippableAdEnabled"),
    AD_TYPE_FORMAT("Ad-AdTypeFormat"),
    AD_PRODUCT_TYPE("Ad-ProductType"),
    AD_SOURCE("Ad-Source"),
    /* JADX INFO: Fake field, exist only in values array */
    APP_ID("User-Agent"),
    /* JADX INFO: Fake field, exist only in values array */
    APP_VERSION_NAME("encrypted-request"),
    AD_ANALYTICS_PARAMETERS("Ad-AnalyticsParameters"),
    AD_INCREASED_AD_SIZE("Ad-IncreasedAdSize"),
    AD_SHOULD_INVALIDATE_STARTUP("Ad-ShouldInvalidateStartup"),
    AD_DESIGN_FORMAT("Ad-DesignFormat"),
    AD_NATIVE_VIDEO_PRELOADING_STRATEGY("Ad-NativeVideoPreloadingStrategy"),
    AD_NATIVE_IMAGE_PRELOADING_STRATEGY("Ad-NativeImageLoadingStrategy"),
    AD_SERVER_SIDE_CLIENT_IP("Ad-ServerSideClientIP"),
    AD_OPEN_LINKS_IN_APP("Ad-OpenLinksInApp"),
    AD_BASE64_ENCODING("Ad-Base64Encoding"),
    AD_MEDIA_BASE64_ENCODING("Ad-MediaBase64Encoding"),
    AD_DIV_BASE64_ENCODING("Ad-DivBase64Encoding"),
    AD_WAIT_WEB_VIEW_LOAD_FINISH_ON_PRELOADING("Ad-WaitWebViewLoadFinishOnPreloading"),
    AD_NATIVE_VIDEO_BACKGROUND_PRELOADING("Ad-NativeVideoBackgroundPreloading"),
    AD_HIDE_NAVIGATION_BAR("Ad-HideNavigationBar"),
    AD_WEB_VIEW_CACHE_MODE("Ad-WebViewCacheMode"),
    AD_FORCE_VALIDATE_ASSETS("Ad-ForceValidateAssets"),
    /* JADX INFO: Fake field, exist only in values array */
    APP_ID("app-id"),
    /* JADX INFO: Fake field, exist only in values array */
    APP_VERSION_NAME("app-version-name"),
    AD_UNIT_ID("ad-unit-id");

    public final String b;

    oa3(String str) {
        this.b = str;
    }

    public final String a() {
        return this.b;
    }
}
