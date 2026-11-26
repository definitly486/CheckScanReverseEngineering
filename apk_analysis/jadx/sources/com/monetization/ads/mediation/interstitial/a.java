package com.monetization.ads.mediation.interstitial;

import defpackage.ze4;
import yads.cb;
import yads.dp;
import yads.e55;
import yads.m24;
import yads.mo;
import yads.q74;
import yads.s03;
import yads.ve3;
import yads.w24;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements MediatedInterstitialAdapter.MediatedInterstitialAdapterListener {
    public static final /* synthetic */ ze4[] h = {mo.a(a.class, "contentController", "getContentController()Lcom/monetization/ads/fullscreen/FullscreenContentController;", 0), cb.a(a.class, "loadController", "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;", 0), cb.a(a.class, "adQualityVerifierController", "getAdQualityVerifierController()Lcom/monetization/ads/base/quality/AdQualityVerifierController;", 0)};
    public final m24 a;
    public final w24 b;
    public final q74 c;
    public final ve3 d;
    public final e55 e;
    public final e55 f;
    public final e55 g;

    public a(s03 s03Var, dp dpVar, m24 m24Var, w24 w24Var, q74 q74Var) {
        ve3 ve3Var = new ve3(m24Var);
        this.a = m24Var;
        this.b = w24Var;
        this.c = q74Var;
        this.d = ve3Var;
        this.e = new e55(null);
        this.f = new e55(s03Var);
        this.g = new e55(dpVar.d);
    }
}
