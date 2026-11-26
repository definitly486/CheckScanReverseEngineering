package com.my.tracker.obfuscated;

import android.content.Context;
import com.my.tracker.MyTrackerConfig;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 {
    private static volatile k0 l;
    private final h a = new h();
    private final c1 b = new c1();
    private final d0 c = new d0();
    private final p0 d = new p0();
    private final y0 e = new y0();
    private final m1 f = new m1();
    private final e1 g = new e1();
    private final k h = new k();
    private final h0 i = new h0();
    private final p j = new p();
    private final m0 k = new m0();

    private k0() {
    }

    public j0 a(MyTrackerConfig.InstalledPackagesProvider installedPackagesProvider, boolean z, int i, boolean z2, String str, MyTrackerConfig.OkHttpClientProvider okHttpClientProvider, Context context) {
        d1 d1VarA;
        x0 x0Var;
        b1 b1Var;
        g0 g0Var;
        l0 l0Var;
        o0 o0Var;
        g gVarA = this.a.a(context);
        c0 c0VarA = this.c.a(context);
        l1 l1VarA = this.f.a(context);
        j jVarA = this.h.a(installedPackagesProvider, context);
        if (z2) {
            b1Var = null;
            g0Var = g0.c;
            d1VarA = d1.g;
            o0Var = null;
            x0Var = null;
            l0Var = null;
        } else {
            x0 x0VarA = this.e.a(context);
            o0 o0VarA = this.d.a(context);
            g0 g0VarB = z ? this.i.b(context) : g0.c;
            l0 l0VarA = this.k.a(context);
            b1 b1VarA = this.b.a(str, okHttpClientProvider);
            d1VarA = this.g.a(i, context);
            x0Var = x0VarA;
            b1Var = b1VarA;
            g0Var = g0VarB;
            l0Var = l0VarA;
            o0Var = o0VarA;
        }
        return new j0(gVarA, b1Var, c0VarA, o0Var, x0Var, l1VarA, d1VarA, jVarA, g0Var, this.j.a(context), l0Var);
    }

    public static k0 a() {
        k0 k0Var;
        k0 k0Var2 = l;
        if (k0Var2 != null) {
            return k0Var2;
        }
        synchronized (k0.class) {
            try {
                k0Var = l;
                if (k0Var == null) {
                    k0Var = new k0();
                    l = k0Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return k0Var;
    }
}
