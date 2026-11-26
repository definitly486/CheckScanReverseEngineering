package io.appmetrica.analytics.coreutils.internal.buffering;

import defpackage.kx2;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class LastValueTaskBuffer<T> implements TaskBuffer<T> {
    private Object a;

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public void add(T t) {
        this.a = t;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public List<T> getAndClear() {
        Object obj = this.a;
        this.a = null;
        return obj != null ? u96.h(obj) : kx2.b;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public boolean isEmpty() {
        return this.a == null;
    }
}
