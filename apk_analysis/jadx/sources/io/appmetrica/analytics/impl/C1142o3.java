package io.appmetrica.analytics.impl;

import defpackage.nl3;
import io.appmetrica.analytics.coreutils.internal.buffering.AccumulatingTaskBuffer;
import io.appmetrica.analytics.coreutils.internal.buffering.DeferredBatchExecutor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1142o3 {
    public final nl3 a;
    public final DeferredBatchExecutor b = new DeferredBatchExecutor(Fa.k().w().e(), new AccumulatingTaskBuffer(), new C1116n3(this), 1000, "[BufferedTempCacheWriter]");

    public C1142o3(En en) {
        this.a = en;
    }
}
