package com.my.target;

import android.content.Context;
import defpackage.et9;
import defpackage.fq9;
import defpackage.l6a;
import defpackage.l95;
import defpackage.m95;
import defpackage.y14;
import defpackage.z2a;
import defpackage.z94;

/* JADX INFO: loaded from: classes4.dex */
public final class x extends t implements b3 {
    public final z94.b j;
    public final z94.b k;

    public class a {
        public final et9 a;

        public a(et9 et9Var) {
            this.a = et9Var;
        }

        public final void a(l6a l6aVar, m95 m95Var) {
            x xVar = x.this;
            if (xVar.d != m95Var) {
                return;
            }
            StringBuilder sb = new StringBuilder("MediationInterstitialAdEngine$AdapterListener: No data from ");
            et9 et9Var = this.a;
            sb.append(et9Var.a);
            sb.append(" ad network - ");
            sb.append(l6aVar);
            y14.r(null, sb.toString());
            xVar.a(et9Var, false);
        }
    }

    public x(fq9 fq9Var, z2a z2aVar, t0.a aVar, z94.b bVar, z94.b bVar2) {
        super(fq9Var, z2aVar, aVar);
        this.j = bVar;
        this.k = bVar2;
    }

    @Override // com.my.target.b3
    public final void a(Context context) {
        l95 l95Var = this.d;
        z94.b bVar = this.j;
        if (l95Var == null) {
            bVar.c();
            y14.u(null, "MediationInterstitialAdEngine: Error - can't show ad, adapter is not set");
            return;
        }
        try {
            ((m95) l95Var).show();
        } catch (Throwable th) {
            bVar.c();
            y14.u(null, "MediationInterstitialAdEngine: Error - " + th);
        }
    }

    @Override // com.my.target.b3
    public final void destroy() {
        l95 l95Var = this.d;
        if (l95Var == null) {
            y14.u(null, "MediationInterstitialAdEngine: Error - can't destroy ad, adapter is not set");
            return;
        }
        try {
            ((m95) l95Var).destroy();
        } catch (Throwable th) {
            y14.u(null, "MediationInterstitialAdEngine: Error - " + th);
        }
        this.d = null;
    }
}
