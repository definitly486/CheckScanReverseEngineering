package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Xl {
    public final Ka a = new Ka();
    public final HashMap b = new HashMap();
    public C1341vm c = null;
    public final Vl d = new Vl(this);

    public final Qm a(Context context, C0808b5 c0808b5, C1187pm c1187pm) {
        Qm qm = (Qm) this.b.get(c0808b5.a);
        boolean z = true;
        if (qm == null) {
            synchronized (this.b) {
                try {
                    qm = (Qm) this.b.get(c0808b5.a);
                    if (qm == null) {
                        qm = new Qm(new Rm(context, c0808b5.a, c1187pm, this.d));
                        qm.f();
                        this.b.put(c0808b5.a, qm);
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            qm.a(c1187pm);
        }
        return qm;
    }

    public static final Xl a() {
        return Wl.a;
    }

    public final void a(C0808b5 c0808b5, InterfaceC0954gm interfaceC0954gm) {
        synchronized (this.b) {
            try {
                this.a.a(c0808b5.a, interfaceC0954gm);
                C1341vm c1341vm = this.c;
                if (c1341vm != null) {
                    interfaceC0954gm.a(c1341vm);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
