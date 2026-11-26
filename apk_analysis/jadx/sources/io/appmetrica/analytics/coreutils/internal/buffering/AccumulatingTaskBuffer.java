package io.appmetrica.analytics.coreutils.internal.buffering;

import defpackage.kx2;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class AccumulatingTaskBuffer<T> implements TaskBuffer<T> {
    private final ArrayList a = new ArrayList();

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public void add(T t) {
        this.a.add(t);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public List<T> getAndClear() {
        if (this.a.isEmpty()) {
            return kx2.b;
        }
        List<T> listT0 = qn1.t0(this.a);
        this.a.clear();
        return listT0;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.buffering.TaskBuffer
    public boolean isEmpty() {
        return this.a.isEmpty();
    }
}
