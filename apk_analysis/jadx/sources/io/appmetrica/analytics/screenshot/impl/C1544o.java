package io.appmetrica.analytics.screenshot.impl;

import defpackage.yr;
import io.appmetrica.analytics.coreapi.internal.data.Converter;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1544o implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final x fromModel(O o) {
        x xVar = new x();
        xVar.a = o.a;
        xVar.c = (String[]) o.b.toArray(new String[0]);
        xVar.b = o.c;
        return xVar;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final O toModel(x xVar) {
        return new O(xVar.a, yr.h0(xVar.c), xVar.b);
    }
}
