package com.google.android.gms.internal.play_billing;

import android.os.SystemClock;
import defpackage.pwa;
import defpackage.wwa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbf {
    public static final zzbq a;

    static {
        zzbq wwaVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            wwaVar = new pwa();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            wwaVar = new wwa();
        }
        a = wwaVar;
    }

    public static zzbq zza() {
        return a;
    }
}
