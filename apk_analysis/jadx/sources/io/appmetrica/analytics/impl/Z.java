package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class Z implements ProtobufConverter {
    public final Ln a;

    public Z(Ln ln) {
        this.a = ln;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0835c6 fromModel(Y y) {
        C0835c6 c0835c6 = new C0835c6();
        Kn kn = y.a;
        if (kn != null) {
            c0835c6.a = this.a.fromModel(kn);
        }
        c0835c6.b = new C1067l6[y.b.size()];
        Iterator it = y.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            c0835c6.b[i] = this.a.fromModel((Kn) it.next());
            i++;
        }
        String str = y.c;
        if (str != null) {
            c0835c6.c = str;
        }
        return c0835c6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Y a(C0835c6 c0835c6) {
        throw new UnsupportedOperationException();
    }
}
