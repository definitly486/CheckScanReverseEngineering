package com.google.firebase.analytics.ktxtesting;

import com.google.firebase.analytics.AnalyticsKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes4.dex */
public final class TestingKt {
    public static final void withAnalyticsForTest(FirebaseAnalytics firebaseAnalytics, ll3<j59> ll3Var) {
        firebaseAnalytics.getClass();
        ll3Var.getClass();
        synchronized (AnalyticsKt.getLOCK()) {
            FirebaseAnalytics analytics = AnalyticsKt.getANALYTICS();
            AnalyticsKt.setANALYTICS(firebaseAnalytics);
            try {
                ll3Var.invoke();
                AnalyticsKt.setANALYTICS(analytics);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                AnalyticsKt.setANALYTICS(analytics);
                throw th;
            }
        }
    }
}
