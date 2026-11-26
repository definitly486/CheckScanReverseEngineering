package yads;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public enum e75 {
    AD_LOADING_RESULT("ad_loading_result"),
    /* JADX INFO: Fake field, exist only in values array */
    AD_RENDERING_RESULT("ad_rendering_result"),
    ADAPTER_AUTO_REFRESH("adapter_auto_refresh"),
    ADAPTER_INVALID("adapter_invalid"),
    ADAPTER_REQUEST("adapter_request"),
    ADAPTER_RESPONSE("adapter_response"),
    ADAPTER_BIDDER_TOKEN_REQUEST("adapter_bidder_token_request"),
    ADTUNE("adtune"),
    REQUEST("ad_request"),
    /* JADX INFO: Fake field, exist only in values array */
    RESPONSE("ad_response"),
    /* JADX INFO: Fake field, exist only in values array */
    VAST_REQUEST("vast_request"),
    /* JADX INFO: Fake field, exist only in values array */
    VAST_RESPONSE("vast_response"),
    /* JADX INFO: Fake field, exist only in values array */
    VAST_WRAPPER_REQUEST("vast_wrapper_request"),
    /* JADX INFO: Fake field, exist only in values array */
    VAST_WRAPPER_RESPONSE("vast_wrapper_response"),
    /* JADX INFO: Fake field, exist only in values array */
    VIDEO_AD_START("video_ad_start"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("video_ad_complete"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("video_ad_player_error"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("vmap_request"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("vmap_response"),
    RENDERING_START("rendering_start"),
    DSP_RENDERING_START("dsp_rendering_start"),
    IMPRESSION_TRACKING_START("impression_tracking_start"),
    IMPRESSION_TRACKING_SUCCESS("impression_tracking_success"),
    IMPRESSION_TRACKING_FAILURE("impression_tracking_failure"),
    FORCED_IMPRESSION_TRACKING_FAILURE("forced_impression_tracking_failure"),
    ADAPTER_ACTION("adapter_action"),
    CLICK("click"),
    CLOSE(TJAdUnitConstants.String.CLOSE),
    DEEPLINK("deeplink"),
    BOUND_ASSETS("bound_assets"),
    RENDERED_ASSETS("rendered_assets"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("rebind"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("binding_failure"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("expected_view_missing"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("returned_to_app"),
    REWARD("reward"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("video_ad_rendering_result"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("multibanner_event"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("ad_view_size_info"),
    DSP_IMPRESSION_TRACKING_START("dsp_impression_tracking_start"),
    DSP_IMPRESSION_TRACKING_SUCCESS("dsp_impression_tracking_success"),
    DSP_IMPRESSION_TRACKING_FAILURE("dsp_impression_tracking_failure"),
    DSP_FORCED_IMPRESSION_TRACKING_FAILURE("dsp_forced_impression_tracking_failure"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("log"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("open_bidding_token_generation_result"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("sdk_configuration_success"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("sdk_configuration_failure"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("tracking_event"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("ad_verification_result"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("ad_verification_incident"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_CONFIGURATION_REQUEST("sdk_configuration_request"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_RESULT_OPENED("activity_result_opened"),
    CLIENT_BIDDING_LOADING_RESULT("client_bidding_loading_result"),
    /* JADX INFO: Fake field, exist only in values array */
    ACTIVITY_ACTION("activity_action"),
    /* JADX INFO: Fake field, exist only in values array */
    SDK_NETWORK_DEBUG("sdk_network_debug"),
    /* JADX INFO: Fake field, exist only in values array */
    SMART_PRELOAD_SKIPPED("smart_preload_skipped"),
    /* JADX INFO: Fake field, exist only in values array */
    SMART_PRELOAD_ERROR("smart_preload_error"),
    /* JADX INFO: Fake field, exist only in values array */
    SMART_PRELOAD_RESULTS("smart_preload_results");

    public final String b;

    e75(String str) {
        this.b = str;
    }
}
