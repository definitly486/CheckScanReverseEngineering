package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.jn2;
import defpackage.nd5;
import defpackage.sm3;
import defpackage.x1;

/* JADX INFO: loaded from: classes4.dex */
public final class zzuy {
    public static ListenableFuture zza(ListenableFuture listenableFuture) {
        sm3 sm3Var = new sm3();
        jn2 jn2Var = jn2.INSTANCE;
        int i = x1.l;
        x1.b bVar = new x1.b(listenableFuture, sm3Var);
        listenableFuture.addListener(bVar, nd5.a(jn2Var, bVar));
        return bVar;
    }
}
