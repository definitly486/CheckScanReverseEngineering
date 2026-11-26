package com.google.android.gms.internal.mlkit_common;

import defpackage.xqa;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzac extends zzaa {
    public Object[] a = new Object[4];
    public int b = 0;
    public boolean c;

    public final zzac zzb(Object obj) {
        obj.getClass();
        int i = this.b + 1;
        Object[] objArrCopyOf = this.a;
        int length = objArrCopyOf.length;
        if (length < i) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, zzaa.a(length, i));
            this.a = objArrCopyOf;
            this.c = false;
        } else if (this.c) {
            objArrCopyOf = (Object[]) objArrCopyOf.clone();
            this.a = objArrCopyOf;
            this.c = false;
        }
        int i2 = this.b;
        this.b = i2 + 1;
        objArrCopyOf[i2] = obj;
        return this;
    }

    public final zzaf zzc() {
        this.c = true;
        Object[] objArr = this.a;
        int i = this.b;
        xqa xqaVar = zzaf.c;
        return i == 0 ? a.f : new a(objArr, i);
    }
}
