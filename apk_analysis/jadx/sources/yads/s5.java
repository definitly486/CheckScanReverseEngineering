package yads;

/* JADX INFO: loaded from: classes6.dex */
public enum s5 {
    ADAPTER_LOADING("adapter_loading_duration"),
    ADVERTISING_INFO_LOADING("advertising_info_loading_duration"),
    AD_LOADING("ad_loading_duration"),
    AD_RENDER("ad_rendering_duration"),
    BIDDING_DATA_LOADING("bidding_data_loading_duration"),
    IDENTIFIERS_LOADING("identifiers_loading_duration"),
    SDK_INITIALIZATION("sdk_initialization_duration"),
    SDK_CONFIGURATION_QUEUE("sdk_configuration_queue_duration"),
    SDK_CONFIGURATION_LOADING("sdk_configuration_loading_duration"),
    SDK_CONFIGURATION_REQUEST_QUEUE("sdk_configuration_request_queue_duration"),
    SDK_CONFIGURATION_REQUEST("sdk_configuration_request_duration"),
    RESOURCES_LOADING("resources_loading_duration"),
    VERIFICATION_RESOURCES_LOADING("verification_resources_loading_duration"),
    AD_VERIFICATION("ad_verification_duration"),
    IMAGE_LOADING("image_loading_duration"),
    VIDEO_CACHING("video_caching_duration"),
    WEB_VIEW_CACHING("web_view_caching_duration"),
    NETWORK_REQUEST_QUEUE("network_request_queue_duration"),
    NETWORK_REQUEST("network_request_durations"),
    VAST_REQUEST_QUEUE("vast_request_queue_duration"),
    VAST_LOADING("vast_loading_durations"),
    VAST_ADS_LOADING("vast_ads_loading_duration"),
    WRAPPERS_LOADING("wrappers_loading_duration"),
    VIDEO_AD_RENDERING("video_ad_rendering_duration"),
    VIDEO_AD_PREPARE("video_ad_prepare_duration"),
    VMAP_REQUEST_QUEUE("vmap_request_queue_duration"),
    VMAP_LOADING("vmap_loading_duration"),
    BIDDER_TOKEN_LOADING("bidder_token_loading_duration"),
    BIDDER_TOKEN_GENERATION("bidder_token_generation_duration"),
    DNS_PREFETCH("dns_prefetch_duration"),
    CLIENT_BIDDING_DATA_LOADING("client_bidding_data_loading_duration");

    public final String b;

    s5(String str) {
        this.b = str;
    }
}
