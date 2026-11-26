package com.google.firebase.analytics;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseKt;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public final class AnalyticsKt {
    private static volatile FirebaseAnalytics zza;
    private static final Object zzb = new Object();

    public static final FirebaseAnalytics getANALYTICS() {
        return zza;
    }

    public static final FirebaseAnalytics getAnalytics(Firebase firebase) {
        firebase.getClass();
        if (zza == null) {
            synchronized (zzb) {
                try {
                    if (zza == null) {
                        zza = FirebaseAnalytics.getInstance(FirebaseKt.getApp(Firebase.INSTANCE).getApplicationContext());
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = zza;
        firebaseAnalytics.getClass();
        return firebaseAnalytics;
    }

    public static final Object getLOCK() {
        return zzb;
    }

    public static final void logEvent(FirebaseAnalytics firebaseAnalytics, String str, nl3<? super ParametersBuilder, j59> nl3Var) {
        firebaseAnalytics.getClass();
        str.getClass();
        nl3Var.getClass();
        ParametersBuilder parametersBuilder = new ParametersBuilder();
        nl3Var.invoke(parametersBuilder);
        firebaseAnalytics.logEvent(str, parametersBuilder.getBundle());
    }

    public static final void setANALYTICS(FirebaseAnalytics firebaseAnalytics) {
        zza = firebaseAnalytics;
    }

    public static final void setConsent(FirebaseAnalytics firebaseAnalytics, nl3<? super ConsentBuilder, j59> nl3Var) {
        firebaseAnalytics.getClass();
        nl3Var.getClass();
        ConsentBuilder consentBuilder = new ConsentBuilder();
        nl3Var.invoke(consentBuilder);
        firebaseAnalytics.setConsent(consentBuilder.asMap());
    }
}
