package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class Rm {
    public final Context a;
    public final String b;
    public final C1187pm c;
    public final Vl d;
    public final C1391xm e;
    public final H4 f;
    public final C1316um g;
    public final Y7 h;
    public final SystemTimeProvider i;
    public final N3 j;
    public final Q3 k;
    public final Yl l;
    public final Hd m;

    public Rm(Context context, String str, C1187pm c1187pm, Vl vl) {
        this.a = context;
        this.b = str;
        this.c = c1187pm;
        this.d = vl;
        C1391xm c1391xmA = Fa.k().A();
        this.e = c1391xmA;
        C1341vm c1341vmA = c1391xmA.a();
        this.f = new H4(str);
        this.g = new C1316um(context);
        this.h = new Y7();
        this.i = new SystemTimeProvider();
        this.j = Fa.k().f();
        this.k = new Q3();
        this.l = new Yl(new C1213qm(context, str), c1341vmA, c1187pm);
        this.m = Fa.k().q();
    }
}
