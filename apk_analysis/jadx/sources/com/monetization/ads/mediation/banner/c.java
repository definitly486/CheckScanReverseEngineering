package com.monetization.ads.mediation.banner;

import android.app.Activity;
import android.content.Context;
import defpackage.kp9;
import defpackage.kx2;
import defpackage.nl3;
import java.util.List;
import yads.bf5;
import yads.d9;
import yads.dp;
import yads.e34;
import yads.e4;
import yads.f34;
import yads.go;
import yads.l34;
import yads.m24;
import yads.m44;
import yads.mt4;
import yads.n34;
import yads.o44;
import yads.o54;
import yads.p34;
import yads.q74;
import yads.s1;
import yads.u34;
import yads.x24;
import yads.yn;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements go {
    public final d9 a;
    public final nl3 b;
    public final m24 c;

    public c(Context context, yn ynVar, dp dpVar, d9 d9Var, o54 o54Var) {
        this.a = d9Var;
        e4 e4Var = dpVar.b;
        bf5 bf5Var = dpVar.c;
        p34 p34Var = new p34(e4Var);
        l34 l34Var = new l34(e4Var, bf5Var, d9Var);
        e34 e34Var = new e34(l34Var);
        n34 n34Var = new n34(new x24(o54Var.b, p34Var, l34Var, new f34(e34Var, new m44(e34Var, new o44())), 16));
        this.c = new m24(context, e4Var, bf5Var, d9Var, dpVar.a, new b(), l34Var, n34Var, new mt4(ynVar, o54Var));
        this.b = new kp9(ynVar, dpVar, this, new u34(ynVar.E, dpVar.b.d.a), 0);
    }

    @Override // yads.go
    public final void a(Context context, d9 d9Var) {
        Activity activityA = s1.a();
        if (activityA != null) {
            context = activityA;
        }
        m24 m24Var = this.c;
        m24Var.c.a(context, this.b);
    }

    @Override // yads.go
    public final List b() {
        return kx2.b;
    }

    @Override // yads.go
    public final String c() {
        return this.a.e;
    }

    @Override // yads.go
    public final String getAdInfo() {
        return this.a.c;
    }

    public static final a a(yn ynVar, dp dpVar, c cVar, u34 u34Var, q74 q74Var) {
        return new a(ynVar, dpVar, cVar.c, u34Var, q74Var);
    }

    @Override // yads.go
    public final void a(Context context) {
        this.c.c.a(context);
    }

    @Override // yads.go
    public final String a() {
        return null;
    }
}
