package yads;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes6.dex */
public enum f75 {
    SUCCESS(FirebaseAnalytics.Param.SUCCESS),
    ERROR("error"),
    NO_ADS("no_ads"),
    /* JADX INFO: Fake field, exist only in values array */
    FILTERED("filtered");

    public final String b;

    f75(String str) {
        this.b = str;
    }
}
