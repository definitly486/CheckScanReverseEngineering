package com.monetization.ads.mediation.appopenad;

import defpackage.ze4;
import java.lang.ref.WeakReference;
import yads.cb;
import yads.e55;
import yads.m24;
import yads.q74;
import yads.s03;
import yads.ve3;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener {
    public static final /* synthetic */ ze4[] f = {cb.a(a.class, "loadController", "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;", 0)};
    public final m24 a;
    public final q74 b;
    public final e55 c;
    public WeakReference d = new WeakReference(null);
    public final ve3 e;

    public a(s03 s03Var, m24 m24Var, q74 q74Var) {
        this.a = m24Var;
        this.b = q74Var;
        this.c = new e55(s03Var);
        this.e = new ve3(m24Var);
    }
}
