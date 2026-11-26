package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.CollectionLimitation;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Vb implements InterfaceC1396y2 {
    public final CollectionLimitation a;

    public Vb(CollectionLimitation collectionLimitation) {
        this.a = collectionLimitation;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1396y2
    public final C1240ro a(C1189po c1189po, C1240ro c1240ro) {
        if (c1189po.b == this.a.getMaxSize()) {
            if (((C1240ro) ((HashMap) c1189po.a.get(c1240ro.b)).get(new String(c1240ro.a))) != null) {
                ((HashMap) c1189po.a.get(c1240ro.b)).put(new String(c1240ro.a), c1240ro);
                return c1240ro;
            }
        } else if (c1189po.b < this.a.getMaxSize()) {
            ((HashMap) c1189po.a.get(c1240ro.b)).put(new String(c1240ro.a), c1240ro);
            c1189po.b++;
        }
        return c1240ro;
    }
}
