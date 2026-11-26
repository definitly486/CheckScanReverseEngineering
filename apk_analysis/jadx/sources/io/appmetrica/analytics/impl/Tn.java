package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Tn implements ProtobufConverter {
    public final Rl a;

    public Tn() {
        this(new Rl());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1093m6 fromModel(Un un) {
        C1093m6 c1093m6 = new C1093m6();
        c1093m6.a = (String) WrapUtils.getOrDefault(un.a, "");
        c1093m6.b = StringUtils.correctIllFormedString((String) WrapUtils.getOrDefault(un.b, ""));
        List<Tl> list = un.c;
        if (list != null) {
            c1093m6.c = this.a.fromModel(list);
        }
        Un un2 = un.d;
        if (un2 != null) {
            c1093m6.d = fromModel(un2);
        }
        List list2 = un.e;
        int i = 0;
        if (list2 == null) {
            c1093m6.e = new C1093m6[0];
            return c1093m6;
        }
        c1093m6.e = new C1093m6[list2.size()];
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            c1093m6.e[i] = fromModel((Un) it.next());
            i++;
        }
        return c1093m6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Tn(Rl rl) {
        this.a = rl;
    }

    public final Un a(C1093m6 c1093m6) {
        throw new UnsupportedOperationException();
    }
}
