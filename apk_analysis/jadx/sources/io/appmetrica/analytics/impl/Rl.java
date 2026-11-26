package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ListConverter;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Rl implements ListConverter {
    public final Sl a = new Sl();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1041k6[] fromModel(List<Tl> list) {
        C1041k6[] c1041k6Arr = new C1041k6[list.size()];
        Iterator<Tl> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            c1041k6Arr[i] = this.a.fromModel(it.next());
            i++;
        }
        return c1041k6Arr;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final List<Tl> a(C1041k6[] c1041k6Arr) {
        throw new UnsupportedOperationException();
    }
}
