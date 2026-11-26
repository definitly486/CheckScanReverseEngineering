package com.google.android.gms.internal.play_billing;

import defpackage.bj;
import defpackage.l62;
import defpackage.xib;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhl {
    public final l62 a;

    public zzhl(zzjg zzjgVar, zzjg zzjgVar2, Object obj) {
        this.a = new l62(zzjgVar, zzjgVar2, obj);
    }

    public static zzhl zzd(zzjg zzjgVar, Object obj, zzjg zzjgVar2, Object obj2) {
        return new zzhl(zzjgVar, zzjgVar2, obj2);
    }

    public final int zza(int i, Object obj, Object obj2) {
        int iZzy = zzfx.zzy(i << 3);
        l62 l62Var = this.a;
        zzjg zzjgVar = (zzjg) l62Var.a;
        zzjg zzjgVar2 = (zzjg) l62Var.b;
        int iA = xib.a(zzjgVar2, 2, obj2) + xib.a(zzjgVar, 1, obj);
        return bj.b(iA, iA, iZzy);
    }
}
