package io.appmetrica.analytics.idsync.impl;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public enum F {
    NONE("none"),
    SUCCESS(FirebaseAnalytics.Param.SUCCESS),
    /* JADX INFO: Fake field, exist only in values array */
    INCOMPATIBLE_PRECONDITION("incompatible_precondition"),
    FAILURE("failure");

    public static final E b = new E();
    public final String a;

    F(String str) {
        this.a = str;
    }
}
