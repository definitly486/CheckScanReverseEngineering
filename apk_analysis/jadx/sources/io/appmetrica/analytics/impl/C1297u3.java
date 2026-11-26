package io.appmetrica.analytics.impl;

import defpackage.j59;
import defpackage.qn1;
import io.appmetrica.analytics.impl.C1297u3;
import io.appmetrica.analytics.impl.InterfaceC1410yg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.u3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1297u3 implements InterfaceC1310ug {
    public final InterfaceC1310ug a;
    public final InterfaceC1051kg b;
    public boolean c;
    public final ArrayList d = new ArrayList();
    public final Object e = new Object();

    public C1297u3(InterfaceC1310ug interfaceC1310ug, InterfaceC1051kg interfaceC1051kg) {
        this.a = interfaceC1310ug;
        this.b = interfaceC1051kg;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        InterfaceC1410yg interfaceC1410yg;
        synchronized (this.e) {
            try {
                interfaceC1410yg = null;
                if (((Lo) this.b).c()) {
                    InterfaceC1410yg interfaceC1410ygB = ((Lo) this.b).b();
                    if (interfaceC1410ygB == null) {
                        interfaceC1410ygB = new C1360wg("Referrer is null", null, 2, null);
                    }
                    interfaceC1410yg = interfaceC1410ygB;
                } else {
                    this.d.add(interfaceC1207qg);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (interfaceC1410yg != null) {
            interfaceC1207qg.a(interfaceC1410yg);
        }
        b();
    }

    public final void b() {
        synchronized (this.e) {
            if (this.c) {
                return;
            }
            this.c = true;
            if (((Lo) this.b).c()) {
                return;
            }
            j59 j59Var = j59.a;
            try {
                this.a.a(new InterfaceC1207qg() { // from class: rda
                    @Override // io.appmetrica.analytics.impl.InterfaceC1207qg
                    public final void a(InterfaceC1410yg interfaceC1410yg) {
                        C1297u3.a(this.a, interfaceC1410yg);
                    }
                });
            } catch (Throwable th) {
                a(new C1360wg("Failed to request referrer", th));
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.a.a();
    }

    public static final void a(C1297u3 c1297u3, InterfaceC1410yg interfaceC1410yg) {
        synchronized (c1297u3.e) {
            ((Lo) c1297u3.b).a(interfaceC1410yg);
            j59 j59Var = j59.a;
        }
        c1297u3.a(interfaceC1410yg);
    }

    public final void a(InterfaceC1410yg interfaceC1410yg) {
        List listT0;
        synchronized (this.e) {
            listT0 = qn1.t0(this.d);
            this.d.clear();
        }
        Iterator it = listT0.iterator();
        while (it.hasNext()) {
            ((InterfaceC1207qg) it.next()).a(interfaceC1410yg);
        }
    }
}
