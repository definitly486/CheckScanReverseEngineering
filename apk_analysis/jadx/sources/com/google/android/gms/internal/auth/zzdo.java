package com.google.android.gms.internal.auth;

import defpackage.g5b;
import defpackage.s5b;
import defpackage.z5b;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdo {
    public static zzdj zza(zzdj zzdjVar) {
        if ((zzdjVar instanceof s5b) || (zzdjVar instanceof g5b)) {
            return zzdjVar;
        }
        if (zzdjVar instanceof Serializable) {
            return new g5b(zzdjVar);
        }
        s5b s5bVar = new s5b();
        s5bVar.b = zzdjVar;
        return s5bVar;
    }

    public static zzdj zzb(Object obj) {
        return new z5b(obj);
    }
}
