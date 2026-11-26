package yads;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes6.dex */
public enum sf {
    AD_REQUEST("ad_request"),
    AD_ATTEMPT("ad_attempt"),
    AD_FILLED_REQUEST("ad_filled_request"),
    AD_IMPRESSION(FirebaseAnalytics.Event.AD_IMPRESSION),
    AD_CLICK("ad_click"),
    AD_REWARD("ad_reward");

    public final String b;

    sf(String str) {
        this.b = str;
    }
}
