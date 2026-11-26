package com.google.android.gms.internal.play_billing;

import defpackage.eya;
import defpackage.m1b;
import defpackage.rza;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcc {
    public Object[] a = new Object[8];
    public int b = 0;
    public rza c;

    public final zzcc zza(Object obj, Object obj2) {
        int i = this.b + 1;
        Object[] objArr = this.a;
        int length = objArr.length;
        int i2 = i + i;
        if (i2 > length) {
            this.a = Arrays.copyOf(objArr, zzbw.a(length, i2));
        }
        eya.a(obj, obj2);
        Object[] objArr2 = this.a;
        int i3 = this.b;
        int i4 = i3 + i3;
        objArr2[i4] = obj;
        objArr2[i4 + 1] = obj2;
        this.b = i3 + 1;
        return this;
    }

    public final zzcd zzb() {
        rza rzaVar = this.c;
        if (rzaVar != null) {
            throw rzaVar.a();
        }
        m1b m1bVarE = m1b.e(this.b, this.a, this);
        rza rzaVar2 = this.c;
        if (rzaVar2 == null) {
            return m1bVarE;
        }
        throw rzaVar2.a();
    }
}
