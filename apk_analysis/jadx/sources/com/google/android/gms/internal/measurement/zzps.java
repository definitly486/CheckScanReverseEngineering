package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzps {
    public final AtomicInteger a = new AtomicInteger();

    public final int zza() {
        return this.a.get();
    }

    public final void zzb() {
        this.a.incrementAndGet();
    }
}
