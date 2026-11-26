package yads;

import android.content.Context;
import android.os.Bundle;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ba5 extends d13 {
    public final t25 m;
    public final qd5 n;
    public final ua5 o;

    public ba5(Context context, d9 d9Var, e4 e4Var, bf5 bf5Var, o03 o03Var) {
        t95 t95Var;
        t25 t25Var = new t25();
        new xh4();
        qd5 qd5Var = new qd5(e4Var, bf5Var);
        super(context, d9Var, e4Var, bf5Var, o03Var, new l5());
        this.m = t25Var;
        this.n = qd5Var;
        ua5 p00Var = null;
        if (d9Var != null && (t95Var = d9Var.r) != null) {
            if (t95Var.b) {
                aj5 aj5Var = t95Var.d;
                if (aj5Var != null) {
                    p00Var = new yi5(context, e4Var, bf5Var, aj5Var);
                }
            } else {
                r00 r00Var = t95Var.c;
                if (r00Var != null) {
                    p00Var = new p00(r00Var, t25Var);
                }
            }
        }
        this.o = p00Var;
    }

    @Override // yads.d13, yads.g4
    public final void a(int i, Bundle bundle) {
        if (i == 13) {
            g();
        } else {
            super.a(i, bundle);
        }
    }

    @Override // yads.d13
    public final d13 e() {
        return this;
    }

    public final void g() {
        Object objSingletonMap;
        t95 t95Var;
        qd5 qd5Var = this.n;
        Context context = this.a;
        d9 d9Var = this.b;
        qd5Var.getClass();
        Boolean boolValueOf = null;
        h75 h75Var = new h75((Map) null, 3);
        if (d9Var != null && (t95Var = d9Var.r) != null) {
            boolValueOf = Boolean.valueOf(t95Var.b);
        }
        if (defpackage.aa4.e(boolValueOf, Boolean.TRUE)) {
            objSingletonMap = Collections.singletonMap("rewarding_side", "server_side");
            objSingletonMap.getClass();
        } else if (defpackage.aa4.e(boolValueOf, Boolean.FALSE)) {
            objSingletonMap = Collections.singletonMap("rewarding_side", "client_side");
            objSingletonMap.getClass();
        } else {
            if (boolValueOf != null) {
                defpackage.me0.e();
                return;
            }
            objSingletonMap = defpackage.mx2.b;
        }
        h75Var.b(objSingletonMap, "reward_info");
        qd5Var.a(context, d9Var, e75.REWARD, h75Var);
        ua5 ua5Var = this.o;
        if (ua5Var != null) {
            ua5Var.a();
        }
    }
}
