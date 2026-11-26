package com.google.android.gms.internal.fido;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends zzat {
    public static final a f = new a(new Object[0], 0);
    public final transient Object[] d;
    public final transient int e;

    public a(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.fido.zzat, com.google.android.gms.internal.fido.zzaq
    public final void a(Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, 0, this.e);
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final int b() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final int d() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzaq
    public final Object[] f() {
        return this.d;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzam.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }
}
