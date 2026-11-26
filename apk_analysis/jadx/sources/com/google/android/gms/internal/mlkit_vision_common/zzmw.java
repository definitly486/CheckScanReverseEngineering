package com.google.android.gms.internal.mlkit_vision_common;

import defpackage.w5c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmw {
    public static zzmw a;

    public static synchronized zzmw zza() {
        zzmw zzmwVar;
        zzmwVar = a;
        if (zzmwVar == null) {
            zzmwVar = new zzmw();
            a = zzmwVar;
        }
        return zzmwVar;
    }

    public static final boolean zzb() {
        int i = w5c.a;
        zza();
        return Boolean.parseBoolean("");
    }
}
