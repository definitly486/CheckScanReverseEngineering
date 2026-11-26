package com.google.android.gms.internal.mlkit_common;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends zzaf {
    public static final a f = new a(new Object[0], 0);
    public final transient Object[] d;
    public final transient int e;

    public a(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaf, com.google.android.gms.internal.mlkit_common.zzab
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i = this.e;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int b() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int d() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final Object[] f() {
        return this.d;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzt.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }
}
