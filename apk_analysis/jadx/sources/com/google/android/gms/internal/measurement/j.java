package com.google.android.gms.internal.measurement;

import androidx.collection.SieveCacheKt;
import defpackage.lhc;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends zzyq {
    public static final lhc b = new lhc();
    public final AtomicLong a = new AtomicLong(SieveCacheKt.NodeLinkMask);

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        this.a.set(0L);
    }
}
