package com.google.android.gms.internal.mlkit_common;

import defpackage.wdc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzsv {
    public static zzsv a;

    public static synchronized zzsv zza() {
        zzsv zzsvVar;
        zzsvVar = a;
        if (zzsvVar == null) {
            zzsvVar = new zzsv();
            a = zzsvVar;
        }
        return zzsvVar;
    }

    public static void zzb() {
        wdc.a.clear();
    }
}
