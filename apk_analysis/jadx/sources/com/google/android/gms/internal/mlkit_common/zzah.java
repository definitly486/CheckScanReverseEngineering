package com.google.android.gms.internal.mlkit_common;

import defpackage.me0;
import defpackage.o2;
import defpackage.rua;
import defpackage.wsa;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class zzah {
    public Object[] a = new Object[8];
    public int b = 0;
    public wsa c;

    public final zzah zza(Object obj, Object obj2) {
        int i = this.b + 1;
        Object[] objArrCopyOf = this.a;
        int length = objArrCopyOf.length;
        int i2 = i + i;
        if (i2 > length) {
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, zzaa.a(length, i2));
            this.a = objArrCopyOf;
        }
        if (obj == null) {
            o2.d("null key in entry: null=".concat(String.valueOf(obj2)));
            return null;
        }
        if (obj2 == null) {
            o2.d(me0.c("null value in entry: ", obj.toString(), "=null"));
            return null;
        }
        int i3 = this.b;
        int i4 = i3 + i3;
        objArrCopyOf[i4] = obj;
        objArrCopyOf[i4 + 1] = obj2;
        this.b = i3 + 1;
        return this;
    }

    public final zzai zzb() {
        wsa wsaVar = this.c;
        if (wsaVar != null) {
            throw wsaVar.a();
        }
        rua ruaVarE = rua.e(this.b, this.a, this);
        wsa wsaVar2 = this.c;
        if (wsaVar2 == null) {
            return ruaVarE;
        }
        throw wsaVar2.a();
    }
}
