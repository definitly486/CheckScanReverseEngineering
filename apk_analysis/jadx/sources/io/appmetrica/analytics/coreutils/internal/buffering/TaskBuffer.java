package io.appmetrica.analytics.coreutils.internal.buffering;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface TaskBuffer<T> {
    void add(T t);

    List<T> getAndClear();

    boolean isEmpty();
}
