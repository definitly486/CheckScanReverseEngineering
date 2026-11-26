package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.b36;
import defpackage.u96;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C1118n5 {
    public final C1066l5 a;
    public final C1092m5 b;
    protected final Context c;
    public final C0808b5 d;
    public final A4 e;
    public final AbstractC0937g5 f;
    protected final C1341vm g;
    public final InterfaceC1156oh h;
    public final T8 i;
    public final ICommonExecutor j;
    public final Ub k;
    public final E9 l;
    public final int m;

    public C1118n5(Context context, C0808b5 c0808b5, A4 a4, AbstractC0937g5 abstractC0937g5, C1341vm c1341vm, InterfaceC1156oh interfaceC1156oh, ICommonExecutor iCommonExecutor, int i, Ub ub, E9 e9) {
        this(context, c0808b5, a4, abstractC0937g5, c1341vm, interfaceC1156oh, iCommonExecutor, new T8(), i, new C1066l5(a4.a), new C1092m5(context, c0808b5), ub, e9);
    }

    public static C1030jl a(C0989i5 c0989i5, Go go, C0963h5 c0963h5) {
        C1004il c1004il = new C1004il(go);
        return new C1030jl(c0989i5, c0963h5, new C1354wa(c0989i5, c1004il, new C1134nl(c0989i5.h(), "foreground"), B1.a(), new SystemTimeProvider()), new O2(c0989i5, c1004il, new C1134nl(c0989i5.h(), "background"), B1.a(), new SystemTimeProvider()), new C0979hl(c0989i5, c1004il));
    }

    public final Y6 b(C0989i5 c0989i5) {
        return new Y6(c0989i5, Fa.I.B().c(this.c, this.d), new V6(c0989i5.b()), new C1249s7());
    }

    public final C0798al c() {
        return new C0798al(this.c, this.d);
    }

    public final Di d(C0989i5 c0989i5) {
        Di di = new Di(c0989i5, this.f.a(), this.j);
        Ub ub = this.k;
        synchronized (ub) {
            ub.c.add(di);
        }
        return di;
    }

    public final C1092m5 e() {
        return this.b;
    }

    public final Go f() {
        Go go;
        Ko c1201qa;
        Jo joD = Fa.I.D();
        C0808b5 c0808b5 = this.d;
        synchronized (joD) {
            try {
                String strValueOf = String.valueOf(c0808b5);
                LinkedHashMap linkedHashMap = joD.b;
                Object go2 = linkedHashMap.get(strValueOf);
                if (go2 == null) {
                    C1024jf c1024jf = new C1024jf(Fa.I.B().b(joD.a, c0808b5));
                    IHandlerExecutor iHandlerExecutorE = Fa.I.d.e();
                    if (c0808b5.d()) {
                        String str = "appmetrica_vital_" + c0808b5.b + ".dat";
                        c1201qa = new C1221r5(u96.i(new b36(str, new C1201qa(joD.a, str, iHandlerExecutorE, 0L, 8, null)), new b36("appmetrica_vital_main.dat", new C1201qa(joD.a, "appmetrica_vital_main.dat", iHandlerExecutorE, 0L, 8, null))));
                    } else {
                        c1201qa = new C1201qa(joD.a, "appmetrica_vital_" + c0808b5.b + ".dat", iHandlerExecutorE, 0L, 8, null);
                    }
                    go2 = new Go(c1024jf, c1201qa, strValueOf);
                    linkedHashMap.put(strValueOf, go2);
                }
                go = (Go) go2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return go;
    }

    public static C1018j9 c(C0989i5 c0989i5) {
        return new C1018j9(c0989i5);
    }

    public final C1066l5 d() {
        return this.a;
    }

    public static C0860d5 b() {
        return new C0860d5();
    }

    public final A3 b(C1024jf c1024jf) {
        Context context = this.c;
        return new A3(context, c1024jf, context.getPackageName(), new SafePackageManager());
    }

    public C1118n5(Context context, C0808b5 c0808b5, A4 a4, AbstractC0937g5 abstractC0937g5, C1341vm c1341vm, InterfaceC1156oh interfaceC1156oh, ICommonExecutor iCommonExecutor, T8 t8, int i, C1066l5 c1066l5, C1092m5 c1092m5, Ub ub, E9 e9) {
        this.c = context;
        this.d = c0808b5;
        this.e = a4;
        this.f = abstractC0937g5;
        this.g = c1341vm;
        this.h = interfaceC1156oh;
        this.j = iCommonExecutor;
        this.i = t8;
        this.m = i;
        this.a = c1066l5;
        this.b = c1092m5;
        this.k = ub;
        this.l = e9;
    }

    public final Tg a(C0989i5 c0989i5) {
        return new Tg(new C1182ph(c0989i5, this.h, new Q3()), this.g, new C1104mh(this.e));
    }

    public final Y8 a() {
        Context context = this.c;
        C0808b5 c0808b5 = this.d;
        return new Y8(new C0864d9(context, c0808b5), this.m);
    }

    public final C1353w9 a(C1024jf c1024jf, Go go, C1030jl c1030jl, Y6 y6, C1087m0 c1087m0, C0798al c0798al, Di di) {
        return new C1353w9(c1024jf, go, c1030jl, y6, c1087m0, this.i, c0798al, this.m, new C1040k5(di), new SystemTimeProvider());
    }

    public static Bi a(C0989i5 c0989i5, C1018j9 c1018j9) {
        return new Bi(c1018j9, c0989i5);
    }

    public C9 a(H9 h9, Y6 y6, Tg tg, A4 a4, C0808b5 c0808b5, C1024jf c1024jf) {
        return this.l.a(h9, y6, tg, a4, c0808b5, c1024jf).a();
    }

    public final E2 a(C1024jf c1024jf) {
        return new E2(this.d, c1024jf);
    }
}
