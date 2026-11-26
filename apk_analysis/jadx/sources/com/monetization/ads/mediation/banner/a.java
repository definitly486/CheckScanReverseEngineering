package com.monetization.ads.mediation.banner;

import androidx.core.app.NotificationCompat;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import defpackage.b36;
import defpackage.n05;
import defpackage.nl3;
import defpackage.no5;
import defpackage.ze4;
import java.util.LinkedHashMap;
import java.util.Map;
import yads.aw3;
import yads.cb;
import yads.dp;
import yads.e55;
import yads.e75;
import yads.ee5;
import yads.g34;
import yads.l24;
import yads.m24;
import yads.ng3;
import yads.q74;
import yads.r74;
import yads.t24;
import yads.u34;
import yads.ve3;
import yads.w74;
import yads.yn;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements MediatedBannerAdapter.MediatedBannerAdapterListener {
    public static final /* synthetic */ ze4[] i = {cb.a(a.class, "loadController", "getLoadController()Lcom/monetization/ads/banner/BannerAdLoadController;", 0), cb.a(a.class, "adQualityVerifierController", "getAdQualityVerifierController()Lcom/monetization/ads/base/quality/AdQualityVerifierController;", 0)};
    public final m24 a;
    public final u34 b;
    public final q74 c;
    public final ve3 d;
    public final aw3 e;
    public final e55 f;
    public final e55 g;
    public boolean h;

    public a(yn ynVar, dp dpVar, m24 m24Var, u34 u34Var, q74 q74Var) {
        ve3 ve3Var = new ve3(m24Var);
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        this.a = m24Var;
        this.b = u34Var;
        this.c = q74Var;
        this.d = ve3Var;
        this.e = aw3VarA;
        this.f = new e55(ynVar);
        this.g = new e55(dpVar.d);
    }

    @Override // com.monetization.ads.mediation.banner.MediatedBannerAdapter.MediatedBannerAdapterListener
    public final void onAdFailedToLoad(MediatedAdRequestError mediatedAdRequestError) {
        int code = mediatedAdRequestError.getCode();
        String description = mediatedAdRequestError.getDescription();
        mediatedAdRequestError.getDescription();
        if (!this.h) {
            q74 q74Var = this.c;
            if (q74Var.a.t() instanceof no5) {
                q74Var.c.a();
                t24 t24Var = q74Var.c.f;
                l24 l24Var = q74Var.b;
                LinkedHashMap linkedHashMapF = n05.f(new b36(NotificationCompat.CATEGORY_STATUS, "error"), new b36("error_code", Integer.valueOf(code)), new b36("error_description", description));
                linkedHashMapF.putAll(g34.a(l24Var.c));
                t24Var.d.a(t24Var.f, e75.ADAPTER_RESPONSE, l24Var.b, l24Var.c.b().getNetworkName(), linkedHashMapF);
                w74.a(q74Var.c, q74Var.a, r74.FAILED);
                return;
            }
            return;
        }
        w74 w74Var = this.a.c;
        if (this != w74Var.m) {
            return;
        }
        t24 t24Var2 = w74Var.f;
        l24 l24Var2 = (l24) w74Var.h.invoke();
        if (l24Var2 != null) {
            Map mapE = n05.e(new b36(NotificationCompat.CATEGORY_STATUS, "error"), new b36("error_code", Integer.valueOf(code)));
            t24Var2.d.a(t24Var2.f, e75.ADAPTER_AUTO_REFRESH, l24Var2.b, l24Var2.c.b().getNetworkName(), mapE);
        }
        w74Var.a(w74Var.j);
        nl3 nl3Var = w74Var.n;
        if (nl3Var != null) {
            w74Var.a(w74Var.j, nl3Var);
        }
    }
}
