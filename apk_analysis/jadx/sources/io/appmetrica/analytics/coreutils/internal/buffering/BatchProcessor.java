package io.appmetrica.analytics.coreutils.internal.buffering;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BatchProcessor<T> {
    void processBatch(List<? extends T> list);
}
