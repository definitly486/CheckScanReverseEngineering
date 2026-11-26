package com.google.android.gms.internal.mlkit_vision_barcode;

import defpackage.ygc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxa {
    public static ygc a;

    public static synchronized zzwp zza(zzwh zzwhVar) {
        ygc ygcVar;
        try {
            ygcVar = a;
            if (ygcVar == null) {
                ygcVar = new ygc(5, (byte) 0);
                a = ygcVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzwp) ygcVar.e(zzwhVar);
    }

    public static synchronized zzwp zzb(String str) {
        return zza(zzwh.zzd(str).zzd());
    }
}
