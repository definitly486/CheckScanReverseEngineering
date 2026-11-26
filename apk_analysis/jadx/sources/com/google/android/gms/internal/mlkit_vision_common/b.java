package com.google.android.gms.internal.mlkit_vision_common;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends zzp {
    public static final b f = new b(new Object[0], 0);
    public final transient Object[] d;
    public final transient int e;

    public b(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzp, com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.d;
        int i = this.e;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int b() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int d() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final Object[] f() {
        return this.d;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzf.zza(i, this.e, FirebaseAnalytics.Param.INDEX);
        Object obj = this.d[i];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }
}
