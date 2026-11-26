package com.monetization.ads.mediation.appopenad;

import android.app.Activity;
import android.content.Context;
import defpackage.ca2;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import yads.d13;
import yads.d9;
import yads.e75;
import yads.l24;
import yads.l34;
import yads.m24;
import yads.o03;
import yads.q74;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements o03 {
    public final m24 a;
    public final d b;
    public final nl3 c;
    public final l34 d;
    public a e;

    public b(m24 m24Var, d dVar, nl3 nl3Var, l34 l34Var) {
        this.a = m24Var;
        this.b = dVar;
        this.c = nl3Var;
        this.d = l34Var;
    }

    @Override // yads.o03
    public final Object a(d13 d13Var, Activity activity) {
        Object aVar;
        l24 l24Var;
        try {
            MediatedAppOpenAdAdapter mediatedAppOpenAdAdapter = this.b.a;
            if (mediatedAppOpenAdAdapter != null) {
                a aVar2 = this.e;
                if (aVar2 != null) {
                    aVar2.d = new WeakReference(d13Var);
                }
                this.a.a();
                mediatedAppOpenAdAdapter.showAppOpenAd(activity);
            }
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (l24Var = this.a.a) != null) {
            Context applicationContext = activity.getApplicationContext();
            Map mapSingletonMap = Collections.singletonMap("exception_in_adapter", thA.toString());
            mapSingletonMap.getClass();
            Map mapSingletonMap2 = Collections.singletonMap("reason", mapSingletonMap);
            mapSingletonMap2.getClass();
            this.d.a(applicationContext, e75.ADAPTER_INVALID, l24Var.b, l24Var.c.b().getNetworkName(), mapSingletonMap2);
        }
        return aVar;
    }

    @Override // yads.o03
    public final void a(Context context, d9 d9Var) {
        m24 m24Var = this.a;
        m24Var.c.a(context, new ca2(this, 4));
    }

    public static final MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener a(b bVar, q74 q74Var) {
        Object objInvoke = bVar.c.invoke(q74Var);
        bVar.e = (a) objInvoke;
        return (MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener) objInvoke;
    }

    @Override // yads.o03
    public final void a(Context context) {
        this.a.c.a(context);
    }
}
