package com.google.android.gms.internal.measurement;

import defpackage.hic;
import defpackage.iic;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class l extends zzyq {
    public static final hic b = new hic();
    public static final iic c = new iic();
    public final AtomicInteger a = new AtomicInteger();

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        this.a.decrementAndGet();
    }
}
