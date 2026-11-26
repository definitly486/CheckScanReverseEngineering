package com.google.android.gms.internal.auth;

import defpackage.h4b;
import defpackage.v4b;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzdh implements Serializable {
    public static zzdh zzc() {
        return h4b.b;
    }

    public static zzdh zzd(Object obj) {
        return new v4b(obj);
    }

    public abstract Object zza();

    public abstract boolean zzb();
}
