package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1143o4 {
    public final Object a;
    public final C1144o5 b;
    public final HashMap c;
    public final Ka d;
    public final Context e;
    public final C1348w4 f;

    public C1143o4(Context context, C1144o5 c1144o5, C1348w4 c1348w4) {
        this.a = new Object();
        this.c = new HashMap();
        this.d = new Ka();
        this.e = context.getApplicationContext();
        this.b = c1144o5;
        this.f = c1348w4;
    }

    public final void a(String str, Integer num, String str2) {
        synchronized (this.a) {
            try {
                Ka ka = this.d;
                Collection collection = (Collection) ka.a.remove(new C1117n4(str, num, str2));
                if (!xo.a(collection)) {
                    collection.size();
                    ArrayList arrayList = new ArrayList(collection.size());
                    Iterator it = collection.iterator();
                    while (it.hasNext()) {
                        arrayList.add((InterfaceC1272t4) this.c.remove((C0859d4) it.next()));
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((InterfaceC1272t4) it2.next()).a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public C1143o4(Context context, C1144o5 c1144o5) {
        this(context, c1144o5, new C1348w4());
    }

    public final InterfaceC1272t4 a(C0859d4 c0859d4, B4 b4) {
        InterfaceC1272t4 interfaceC1272t4A;
        synchronized (this.a) {
            try {
                interfaceC1272t4A = (InterfaceC1272t4) this.c.get(c0859d4);
                if (interfaceC1272t4A == null) {
                    this.f.getClass();
                    interfaceC1272t4A = C1348w4.a(c0859d4).a(this.e, this.b, c0859d4, b4);
                    this.c.put(c0859d4, interfaceC1272t4A);
                    this.d.a(new C1117n4(c0859d4.b, c0859d4.c, c0859d4.d), c0859d4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return interfaceC1272t4A;
    }
}
