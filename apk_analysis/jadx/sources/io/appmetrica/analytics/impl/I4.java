package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.ResultReceiver;
import io.appmetrica.analytics.impl.InterfaceC1410yg;
import io.appmetrica.analytics.impl.ResultReceiverC1435zg;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class I4 implements Sa, InterfaceC0954gm, Ua {
    public final Context a;
    public final C0808b5 b;
    public final Qm c;
    public final Gh d;
    public final P4 e;
    public final C1392xn f;
    public ArrayList g;
    public final C0834c5 h;
    public final C0962h4 i;
    public final C1258sg j;
    public final Object k;

    public I4(Context context, Xl xl, C0808b5 c0808b5, B4 b4, Gh gh, C0834c5 c0834c5, K4 k4) {
        this.g = new ArrayList();
        this.k = new Object();
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        this.b = c0808b5;
        this.d = gh;
        this.h = c0834c5;
        this.e = K4.a(this);
        b(b4);
        Qm qmA = xl.a(applicationContext, c0808b5, b4.a);
        this.c = qmA;
        this.i = AbstractC0988i4.a(qmA, Fa.k().c());
        this.f = k4.a(this, qmA);
        C1258sg c1258sgU = Fa.k().u();
        this.j = c1258sgU;
        c1258sgU.a();
        xl.a(c0808b5, this);
    }

    public static void b(B4 b4) {
        Fa.I.c().b(!Boolean.FALSE.equals(b4.b.n));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0954gm
    public final void a(C1341vm c1341vm) {
        synchronized (this.k) {
            try {
                for (G4 g4 : this.h.a) {
                    P6.a(g4.c, this.i.a(Vm.a(c1341vm.l)));
                }
                ArrayList arrayList = new ArrayList();
                for (C0995ib c0995ib : this.g) {
                    if (AbstractC1264sm.a(c1341vm, c0995ib.b, c0995ib.c, new C0943gb())) {
                        P6.a(c0995ib.a, this.i.a(c0995ib.c));
                    } else {
                        arrayList.add(c0995ib);
                    }
                }
                this.g = new ArrayList(arrayList);
                if (!arrayList.isEmpty()) {
                    this.f.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final void c() {
    }

    public final C0962h4 d() {
        return this.i;
    }

    public final A4 e() {
        return this.d.a;
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final Context getContext() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final CounterConfigurationReporterType b() {
        return CounterConfigurationReporterType.COMMUTATION;
    }

    public final synchronized void b(G4 g4) {
        this.h.a.remove(g4);
    }

    public I4(Context context, Xl xl, C0808b5 c0808b5, B4 b4) {
        this(context, xl, c0808b5, b4, new Gh(b4.b), new C0834c5(), new K4());
    }

    public final synchronized void a(G4 g4) {
        this.h.a.add(g4);
        P6.a(g4.c, this.i.a(Vm.a(this.c.e().l)));
    }

    public final void a(C0783a6 c0783a6, G4 g4) {
        P4 p4 = this.e;
        p4.getClass();
        p4.a(c0783a6, new O4(g4));
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final C0808b5 a() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0954gm
    public final void a(Zl zl, C1341vm c1341vm) {
        synchronized (this.k) {
            try {
                for (C0995ib c0995ib : this.g) {
                    P6.a(c0995ib.a, zl, this.i.a(c0995ib.c));
                }
                this.g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Sa
    public final void a(A4 a4) {
        Gh gh = this.d;
        gh.a = gh.a.mergeFrom(a4);
    }

    public final void a(C0995ib c0995ib) {
        ResultReceiver resultReceiver;
        HashMap map;
        List<String> list;
        HashMap map2 = new HashMap();
        if (c0995ib != null) {
            list = c0995ib.b;
            resultReceiver = c0995ib.a;
            map = c0995ib.c;
        } else {
            resultReceiver = null;
            map = map2;
            list = null;
        }
        boolean zA = this.c.a(list, map);
        if (!zA) {
            P6.a(resultReceiver, this.i.a(map));
        }
        if (!this.c.g()) {
            if (zA) {
                P6.a(resultReceiver, this.i.a(map));
                return;
            }
            return;
        }
        synchronized (this.k) {
            if (zA && c0995ib != null) {
                try {
                    this.g.add(c0995ib);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f.c();
    }

    public final void a(final ResultReceiver resultReceiver) {
        C1258sg c1258sg = this.j;
        InterfaceC1207qg interfaceC1207qg = new InterfaceC1207qg() { // from class: mz3
            @Override // io.appmetrica.analytics.impl.InterfaceC1207qg
            public final void a(InterfaceC1410yg interfaceC1410yg) {
                ResultReceiverC1435zg.a(resultReceiver, interfaceC1410yg.a());
            }
        };
        c1258sg.getClass();
        c1258sg.a.a(new C0874dj(interfaceC1207qg));
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(B4 b4) {
        this.c.a(b4.a);
        a(b4.b);
    }
}
