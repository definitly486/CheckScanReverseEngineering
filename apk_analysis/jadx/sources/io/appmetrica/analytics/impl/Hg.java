package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Hg implements ProtobufConverter {
    public final Tn a;
    public final Z b;
    public final C1248s6 c;
    public final Rl d;
    public final Re e;
    public final Ue f;

    public Hg() {
        this(new Tn(), new Z(new Ln()), new C1248s6(), new Rl(), new Re(), new Ue());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0990i6 fromModel(Gg gg) {
        C0990i6 c0990i6 = new C0990i6();
        c0990i6.f = StringUtils.correctIllFormedString((String) WrapUtils.getOrDefault(gg.a, c0990i6.f));
        C0853co c0853co = gg.b;
        if (c0853co != null) {
            Un un = c0853co.a;
            if (un != null) {
                c0990i6.a = this.a.fromModel(un);
            }
            Y y = c0853co.b;
            if (y != null) {
                c0990i6.b = this.b.fromModel(y);
            }
            List<Tl> list = c0853co.c;
            if (list != null) {
                c0990i6.e = this.d.fromModel(list);
            }
            c0990i6.c = (String) WrapUtils.getOrDefault(c0853co.g, c0990i6.c);
            c0990i6.d = this.c.a(c0853co.h);
            if (!TextUtils.isEmpty(c0853co.d)) {
                c0990i6.i = this.e.fromModel(c0853co.d);
            }
            if (!TextUtils.isEmpty(c0853co.e)) {
                c0990i6.j = c0853co.e.getBytes();
            }
            if (!xo.a(c0853co.f)) {
                c0990i6.k = this.f.fromModel(c0853co.f);
            }
        }
        return c0990i6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Hg(Tn tn, Z z, C1248s6 c1248s6, Rl rl, Re re, Ue ue) {
        this.a = tn;
        this.b = z;
        this.c = c1248s6;
        this.d = rl;
        this.e = re;
        this.f = ue;
    }

    public final Gg a(C0990i6 c0990i6) {
        throw new UnsupportedOperationException();
    }
}
