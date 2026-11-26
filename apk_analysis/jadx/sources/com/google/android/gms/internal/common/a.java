package com.google.android.gms.internal.common;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends zzah {
    public static final a f = new a(new Object[0], 0);
    public final transient Object[] d;
    public final transient int e;

    public a(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] a() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int b() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int d() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final boolean f() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzah, com.google.android.gms.internal.common.zzac
    public final void g(Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, 0, this.e);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzr.zzb(i, this.e, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }
}
