package com.google.android.gms.internal.p000authapi;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends zbbj {
    public static final a f = new a(new Object[0], 0);
    public final transient Object[] d;
    public final transient int e;

    public a(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final Object[] a() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final int b() {
        return 0;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final int d() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbg
    public final boolean f() {
        return false;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbj, com.google.android.gms.internal.p000authapi.zbbg
    public final void g(Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, 0, this.e);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zbbd.zba(i, this.e, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }
}
