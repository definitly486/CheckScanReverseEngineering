package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.do, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public final class Cdo implements ProtobufConverter {
    public final Tn a;
    public final Z b;
    public final C1248s6 c;
    public final Rl d;
    public final Re e;
    public final Ue f;

    public Cdo() {
        this(new Tn(), new Z(new Ln()), new C1248s6(), new Rl(), new Re(), new Ue());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0938g6 fromModel(C0853co c0853co) {
        C0938g6 c0938g6 = new C0938g6();
        Un un = c0853co.a;
        if (un != null) {
            c0938g6.a = this.a.fromModel(un);
        }
        Y y = c0853co.b;
        if (y != null) {
            c0938g6.b = this.b.fromModel(y);
        }
        List<Tl> list = c0853co.c;
        if (list != null) {
            c0938g6.e = this.d.fromModel(list);
        }
        String str = c0853co.g;
        if (str != null) {
            c0938g6.c = str;
        }
        c0938g6.d = this.c.a(c0853co.h);
        if (!StringUtils.isNullOrEmpty(c0853co.d)) {
            c0938g6.h = this.e.fromModel(c0853co.d);
        }
        if (!StringUtils.isNullOrEmpty(c0853co.e)) {
            c0938g6.i = c0853co.e.getBytes();
        }
        if (!xo.a(c0853co.f)) {
            c0938g6.j = this.f.fromModel(c0853co.f);
        }
        return c0938g6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Cdo(Tn tn, Z z, C1248s6 c1248s6, Rl rl, Re re, Ue ue) {
        this.b = z;
        this.a = tn;
        this.c = c1248s6;
        this.d = rl;
        this.e = re;
        this.f = ue;
    }

    public final C0853co a(C0938g6 c0938g6) {
        throw new UnsupportedOperationException();
    }
}
