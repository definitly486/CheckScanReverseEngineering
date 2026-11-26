package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Ln implements ProtobufConverter {
    public final Rl a;

    public Ln() {
        this(new Rl());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1067l6 fromModel(Kn kn) {
        C1067l6 c1067l6 = new C1067l6();
        Integer num = kn.e;
        c1067l6.e = num == null ? -1 : num.intValue();
        c1067l6.d = kn.d;
        c1067l6.b = kn.b;
        c1067l6.a = kn.a;
        c1067l6.c = kn.c;
        Rl rl = this.a;
        List list = kn.f;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Tl((StackTraceElement) it.next()));
        }
        c1067l6.f = rl.fromModel(arrayList);
        return c1067l6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Ln(Rl rl) {
        this.a = rl;
    }

    public final Kn a(C1067l6 c1067l6) {
        throw new UnsupportedOperationException();
    }
}
