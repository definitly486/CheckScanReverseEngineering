package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.b9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0812b9 implements ProtobufConverter {
    public static G9 a(C0786a9 c0786a9) {
        G9 g9 = new G9();
        g9.d = new int[c0786a9.b.size()];
        Iterator it = c0786a9.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            g9.d[i] = ((Integer) it.next()).intValue();
            i++;
        }
        g9.c = c0786a9.d;
        g9.b = c0786a9.c;
        g9.a = c0786a9.a;
        return g9;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final /* bridge */ /* synthetic */ Object fromModel(Object obj) {
        return a((C0786a9) obj);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        G9 g9 = (G9) obj;
        return new C0786a9(g9.a, g9.b, g9.c, CollectionUtils.hashSetFromIntArray(g9.d));
    }
}
