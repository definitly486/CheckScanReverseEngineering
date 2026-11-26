package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1257sf implements ProtobufConverter {
    public final Ef a;
    public final C1128nf b;

    public C1257sf() {
        this(new Ef(), new C1128nf());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Af fromModel(C1206qf c1206qf) {
        Af af = new Af();
        af.a = this.a.fromModel(c1206qf.a);
        af.b = new C1434zf[c1206qf.b.size()];
        Iterator<C1180pf> it = c1206qf.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            af.b[i] = this.b.fromModel(it.next());
            i++;
        }
        return af;
    }

    public C1257sf(Ef ef, C1128nf c1128nf) {
        this.a = ef;
        this.b = c1128nf;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1206qf toModel(Af af) {
        Df model;
        ArrayList arrayList = new ArrayList(af.b.length);
        for (C1434zf c1434zf : af.b) {
            arrayList.add(this.b.toModel(c1434zf));
        }
        C1409yf c1409yf = af.a;
        Ef ef = this.a;
        if (c1409yf == null) {
            model = ef.toModel(new C1409yf());
        } else {
            model = ef.toModel(c1409yf);
        }
        return new C1206qf(model, arrayList);
    }
}
