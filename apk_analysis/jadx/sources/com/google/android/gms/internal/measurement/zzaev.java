package com.google.android.gms.internal.measurement;

import defpackage.dq;
import defpackage.gra;
import defpackage.wra;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaev {
    public final wra a;

    public zzaev(zzagm zzagmVar, zzagm zzagmVar2, Object obj) {
        this.a = new wra(zzagmVar, zzagmVar2, obj);
    }

    public static zzaev zza(zzagm zzagmVar, Object obj, zzagm zzagmVar2, Object obj2) {
        return new zzaev(zzagmVar, zzagmVar2, obj2);
    }

    public final int zzd(int i, Object obj, Object obj2) {
        int iZzE = zzada.zzE(i << 3);
        wra wraVar = this.a;
        zzagm zzagmVar = wraVar.a;
        zzagm zzagmVar2 = wraVar.b;
        int iF = gra.f(zzagmVar2, 2, obj2) + gra.f(zzagmVar, 1, obj);
        return dq.b(iF, iF, iZzE);
    }
}
