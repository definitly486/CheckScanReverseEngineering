package com.google.android.gms.internal.measurement;

import androidx.collection.SimpleArrayMap;
import defpackage.o8;

/* JADX INFO: loaded from: classes4.dex */
public final class i extends zzwl {
    public static final zzwl e;
    public static final zzwl f;

    static {
        zzwl zzwlVarB = new i(null, new SimpleArrayMap(0)).b();
        e = zzwlVarB;
        i iVar = new i(zzwlVarB, new SimpleArrayMap());
        boolean z = !iVar.c;
        Boolean bool = Boolean.TRUE;
        o8.s(z, "Can't mutate after handing to trace");
        zzwj zzwjVar = zzwl.d;
        o8.s(!iVar.c(zzwjVar), "Key already present");
        iVar.b.put(zzwjVar, bool);
        f = iVar.b();
    }
}
