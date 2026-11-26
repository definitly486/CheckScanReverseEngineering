package com.google.android.gms.internal.common;

/* JADX INFO: loaded from: classes4.dex */
public class zzi {
    public final Class a;
    public final Object b;

    public zzi(Class cls, Object obj) {
        this.a = cls;
        this.b = obj;
    }

    public static zzi zzb(Class cls, Object obj) {
        return new zzi(cls, obj);
    }

    public final Class zzc() {
        return this.a;
    }

    public final Object zzd() {
        return this.b;
    }
}
