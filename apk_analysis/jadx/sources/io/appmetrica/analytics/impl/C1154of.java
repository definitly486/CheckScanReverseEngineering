package io.appmetrica.analytics.impl;

import defpackage.qn1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.of, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1154of implements InterfaceC1111mo {
    public final boolean a;

    public C1154of(C1206qf c1206qf) {
        boolean z;
        List<C1180pf> list = c1206qf.b;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((C1180pf) it.next()).c == EnumC0914f8.d) {
                    z = false;
                }
            }
            z = true;
        }
        this.a = z;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1111mo, defpackage.bm3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<C1180pf> invoke(List<? extends C1180pf> list, Df df) {
        C1180pf c1180pf = new C1180pf(df.a, df.b, df.e);
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((C1180pf) it.next()).c == df.e) {
                    if (c1180pf.c == EnumC0914f8.d && this.a) {
                        return qn1.i0(c1180pf, list);
                    }
                    return null;
                }
            }
        }
        return qn1.i0(c1180pf, list);
    }
}
