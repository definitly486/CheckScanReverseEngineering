package com.google.android.gms.internal.play_billing;

import defpackage.t1b;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzce extends zzbw {
    public Object[] a = new Object[4];
    public int b = 0;
    public boolean c;

    public final zzce zzb(Object obj) {
        obj.getClass();
        int length = this.a.length;
        int iA = zzbw.a(length, this.b + 1);
        if (iA > length || this.c) {
            this.a = Arrays.copyOf(this.a, iA);
            this.c = false;
        }
        Object[] objArr = this.a;
        int i = this.b;
        this.b = i + 1;
        objArr[i] = obj;
        return this;
    }

    public final zzcf zzc() {
        int i = this.b;
        if (i == 0) {
            return b.j;
        }
        Object[] objArr = this.a;
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new t1b(obj);
        }
        zzcf zzcfVarK = zzcf.k(i, objArr);
        this.b = zzcfVarK.size();
        this.c = true;
        return zzcfVarK;
    }
}
