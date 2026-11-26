package com.monetization.ads.mediation.appopenad;

import android.content.Context;
import defpackage.ag1;
import yads.bf5;
import yads.d9;
import yads.dh;
import yads.dp;
import yads.e4;
import yads.l34;
import yads.m24;
import yads.m34;
import yads.mt4;
import yads.o54;
import yads.q74;
import yads.s03;
import yads.t5;
import yads.v34;
import yads.x24;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c {
    public static b a(Context context, dh dhVar, d9 d9Var, o54 o54Var, dp dpVar) {
        e4 e4Var = dpVar.b;
        bf5 bf5Var = dpVar.c;
        v34 v34Var = new v34(e4Var);
        l34 l34Var = new l34(e4Var, bf5Var, d9Var);
        m34 m34Var = new m34(new x24(o54Var.b, v34Var, l34Var, null, 24));
        t5 t5Var = dpVar.a;
        mt4 mt4Var = new mt4(dhVar, o54Var);
        d dVar = new d();
        m24 m24Var = new m24(context, e4Var, bf5Var, d9Var, t5Var, dVar, l34Var, m34Var, mt4Var);
        return new b(m24Var, dVar, new ag1(1, dhVar, m24Var), l34Var);
    }

    public static final a a(s03 s03Var, m24 m24Var, q74 q74Var) {
        return new a(s03Var, m24Var, q74Var);
    }
}
