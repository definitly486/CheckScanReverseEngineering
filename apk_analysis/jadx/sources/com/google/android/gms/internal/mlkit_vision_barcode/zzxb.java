package com.google.android.gms.internal.mlkit_vision_barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxb {
    public static zzxb a;

    public static synchronized zzxb zza() {
        zzxb zzxbVar;
        zzxbVar = a;
        if (zzxbVar == null) {
            zzxbVar = new zzxb();
            a = zzxbVar;
        }
        return zzxbVar;
    }
}
