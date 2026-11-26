package com.google.android.gms.internal.mlkit_vision_barcode;

import android.os.SystemClock;
import defpackage.oua;
import defpackage.sua;

/* JADX INFO: loaded from: classes4.dex */
public final class zzar {
    public static final zzbb a;

    static {
        zzbb suaVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            suaVar = new oua();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            suaVar = new sua();
        }
        a = suaVar;
    }

    public static zzbb zza() {
        return a;
    }
}
