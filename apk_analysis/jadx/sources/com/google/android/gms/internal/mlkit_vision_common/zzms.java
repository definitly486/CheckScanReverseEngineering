package com.google.android.gms.internal.mlkit_vision_common;

import defpackage.m5c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzms {
    public static m5c a;

    public static synchronized zzmj zza(zzme zzmeVar) {
        m5c m5cVar;
        try {
            m5cVar = a;
            if (m5cVar == null) {
                m5cVar = new m5c(5, (byte) 0);
                a = m5cVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (zzmj) m5cVar.e(zzmeVar);
    }

    public static synchronized zzmj zzb(String str) {
        return zza(zzme.zzd("vision-common").zzd());
    }
}
