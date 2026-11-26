package com.google.android.gms.internal.measurement;

import android.os.SystemClock;
import defpackage.du8;
import defpackage.hhc;
import defpackage.jhc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxh {
    public static final du8 a;

    static {
        du8 jhcVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            jhcVar = new hhc();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            jhcVar = new jhc();
        }
        a = jhcVar;
    }

    public static du8 zza() {
        return a;
    }
}
