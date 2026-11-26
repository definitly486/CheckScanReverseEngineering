package com.google.android.gms.internal.mlkit_common;

import defpackage.vdc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzss {
    public static vdc a;

    public static synchronized zzsh zza(zzsb zzsbVar) {
        vdc vdcVar;
        try {
            vdcVar = a;
            if (vdcVar == null) {
                vdcVar = new vdc(5, (byte) 0);
                a = vdcVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzsh) vdcVar.e(zzsbVar);
    }

    public static synchronized zzsh zzb(String str) {
        return zza(zzsb.zzd("common").zzd());
    }
}
