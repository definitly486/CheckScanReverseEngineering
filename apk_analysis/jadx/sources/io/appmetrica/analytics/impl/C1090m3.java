package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.buffering.AccumulatingTaskBuffer;
import io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor;
import io.appmetrica.analytics.coreutils.internal.buffering.DeferredBatchExecutor;
import io.appmetrica.analytics.impl.C1090m3;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.m3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1090m3 {
    public final P8 a;
    public final DeferredBatchExecutor b;

    public C1090m3(P8 p8, IHandlerExecutor iHandlerExecutor) {
        this.a = p8;
        this.b = new DeferredBatchExecutor(iHandlerExecutor, new AccumulatingTaskBuffer(), new BatchProcessor() { // from class: d2a
            @Override // io.appmetrica.analytics.coreutils.internal.buffering.BatchProcessor
            public final void processBatch(List list) {
                C1090m3.a(this.b, list);
            }
        }, 1000L, "[BufferedEventsWriter]");
    }

    public static final void a(C1090m3 c1090m3, List list) {
        try {
            c1090m3.a.b(list);
            c1090m3.a.a(list);
        } catch (Exception unused) {
        }
    }
}
