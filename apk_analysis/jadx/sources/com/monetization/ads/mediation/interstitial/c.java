package com.monetization.ads.mediation.interstitial;

import android.app.Activity;
import android.content.Context;
import defpackage.j59;
import defpackage.k57;
import defpackage.mr2;
import defpackage.nl3;
import defpackage.ze4;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import yads.b8;
import yads.d13;
import yads.d9;
import yads.dp;
import yads.e55;
import yads.e75;
import yads.i8;
import yads.l24;
import yads.l34;
import yads.m24;
import yads.o03;
import yads.q74;
import yads.w24;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements o03 {
    public final dp a;
    public final m24 b;
    public final b c;
    public final nl3 d;
    public final l34 e;
    public final w24 f;
    public a g;

    public c(dp dpVar, m24 m24Var, b bVar, nl3 nl3Var, l34 l34Var, w24 w24Var) {
        this.a = dpVar;
        this.b = m24Var;
        this.c = bVar;
        this.d = nl3Var;
        this.e = l34Var;
        this.f = w24Var;
    }

    @Override // yads.o03
    public final Object a(d13 d13Var, Activity activity) {
        Object aVar;
        l24 l24Var;
        try {
            MediatedInterstitialAdapter mediatedInterstitialAdapter = this.c.a;
            if (mediatedInterstitialAdapter != null) {
                a aVar2 = this.g;
                if (aVar2 != null) {
                    e55 e55Var = aVar2.e;
                    ze4 ze4Var = a.h[0];
                    e55Var.getClass();
                    e55Var.a = new WeakReference(d13Var);
                }
                b8 b8Var = this.a.d;
                if (b8Var.c()) {
                    ((i8) b8Var.i.getValue()).onAdDisplayed();
                }
                this.b.a();
                this.f.a(activity);
                try {
                    mediatedInterstitialAdapter.showInterstitial(activity);
                } catch (Exception e) {
                    this.f.a();
                    throw e;
                }
            }
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (l24Var = this.b.a) != null) {
            Context applicationContext = activity.getApplicationContext();
            Map mapSingletonMap = Collections.singletonMap("exception_in_adapter", thA.toString());
            mapSingletonMap.getClass();
            Map mapSingletonMap2 = Collections.singletonMap("reason", mapSingletonMap);
            mapSingletonMap2.getClass();
            this.e.a(applicationContext, e75.ADAPTER_INVALID, l24Var.b, l24Var.c.b().getNetworkName(), mapSingletonMap2);
        }
        return aVar;
    }

    @Override // yads.o03
    public final void a(Context context, d9 d9Var) {
        m24 m24Var = this.b;
        m24Var.c.a(context, new mr2(this, 2));
    }

    public static final MediatedInterstitialAdapter.MediatedInterstitialAdapterListener a(c cVar, q74 q74Var) {
        Object objInvoke = cVar.d.invoke(q74Var);
        cVar.g = (a) objInvoke;
        return (MediatedInterstitialAdapter.MediatedInterstitialAdapterListener) objInvoke;
    }

    @Override // yads.o03
    public final void a(Context context) {
        this.f.a();
        this.a.d.b();
        this.b.c.a(context);
    }
}
