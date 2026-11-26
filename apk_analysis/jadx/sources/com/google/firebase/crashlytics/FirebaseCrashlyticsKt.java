package com.google.firebase.crashlytics;

import com.google.firebase.Firebase;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseCrashlyticsKt {
    public static final FirebaseCrashlytics getCrashlytics(Firebase firebase) {
        firebase.getClass();
        FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
        firebaseCrashlytics.getClass();
        return firebaseCrashlytics;
    }

    public static final void recordException(FirebaseCrashlytics firebaseCrashlytics, Throwable th, nl3<? super KeyValueBuilder, j59> nl3Var) {
        firebaseCrashlytics.getClass();
        th.getClass();
        nl3Var.getClass();
        KeyValueBuilder keyValueBuilder = new KeyValueBuilder();
        nl3Var.invoke(keyValueBuilder);
        firebaseCrashlytics.recordException(th, keyValueBuilder.build$com_google_firebase_firebase_crashlytics());
    }

    public static final void setCustomKeys(FirebaseCrashlytics firebaseCrashlytics, nl3<? super KeyValueBuilder, j59> nl3Var) {
        firebaseCrashlytics.getClass();
        nl3Var.getClass();
        KeyValueBuilder keyValueBuilder = new KeyValueBuilder();
        nl3Var.invoke(keyValueBuilder);
        firebaseCrashlytics.setCustomKeys(keyValueBuilder.build$com_google_firebase_firebase_crashlytics());
    }
}
