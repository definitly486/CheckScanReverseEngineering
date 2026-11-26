package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1113n0 {
    public final HashMap a = new HashMap();

    public final synchronized C1087m0 a(C0808b5 c0808b5, PublicLogger publicLogger, C1024jf c1024jf) {
        C1087m0 c1087m0;
        c1087m0 = (C1087m0) this.a.get(c0808b5.toString());
        if (c1087m0 == null) {
            C1061l0 c1061l0D = c1024jf.d();
            c1087m0 = new C1087m0(c1061l0D.a, c1061l0D.b, new Kl(publicLogger, "[App Environment]"));
            this.a.put(c0808b5.toString(), c1087m0);
        }
        return c1087m0;
    }

    public final synchronized void a(C1061l0 c1061l0, C1024jf c1024jf) {
        c1024jf.a(c1061l0);
    }
}
