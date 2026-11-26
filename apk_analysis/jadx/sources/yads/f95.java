package yads;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes6.dex */
public enum f95 {
    d(FirebaseAnalytics.Param.CONTENT, FirebaseAnalytics.Param.CONTENT),
    e("app", "app"),
    /* JADX INFO: Fake field, exist only in values array */
    EF2("image", "image"),
    f("productPromo", "product_promo");

    public final String b;
    public final String c;

    f95(String str, String str2) {
        this.b = str;
        this.c = str2;
    }
}
