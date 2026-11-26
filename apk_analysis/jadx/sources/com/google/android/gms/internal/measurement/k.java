package com.google.android.gms.internal.measurement;

import defpackage.mhc;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class k extends zzyq {
    public static final mhc b = new mhc();
    public final AtomicLong a = new AtomicLong(-1);

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        AtomicLong atomicLong = this.a;
        atomicLong.set(Math.max(-atomicLong.get(), 0L));
    }
}
