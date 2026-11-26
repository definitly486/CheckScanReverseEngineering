package yads;

import android.content.Context;
import com.monetization.ads.mediation.rewarded.MediatedReward;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class na5 implements MediatedRewardedAdapterListener {
    public static final /* synthetic */ defpackage.ze4[] h = {mo.a(na5.class, "contentController", "getContentController()Lcom/monetization/ads/rewarded/content/RewardedAdContentController;", 0), cb.a(na5.class, "loadController", "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;", 0), cb.a(na5.class, "adQualityVerifierController", "getAdQualityVerifierController()Lcom/monetization/ads/base/quality/AdQualityVerifierController;", 0)};
    public final m24 a;
    public final w24 b;
    public final q74 c;
    public final ve3 d;
    public final e55 e;
    public final e55 f;
    public final e55 g;

    public na5(s03 s03Var, b8 b8Var, m24 m24Var, w24 w24Var, q74 q74Var) {
        ve3 ve3Var = new ve3(m24Var);
        this.a = m24Var;
        this.b = w24Var;
        this.c = q74Var;
        this.d = ve3Var;
        this.e = new e55(null);
        this.f = new e55(s03Var);
        this.g = new e55(b8Var);
    }

    public final ba5 a() {
        e55 e55Var = this.e;
        defpackage.ze4 ze4Var = h[0];
        return (ba5) e55Var.a.get();
    }

    @Override // com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener
    public final void onRewarded(MediatedReward mediatedReward) {
        x54 x54Var;
        Object objSingletonMap;
        t95 t95Var;
        ba5 ba5VarA = a();
        if (ba5VarA != null) {
            Context context = ba5VarA.a;
            d9 d9Var = ba5VarA.b;
            m24 m24Var = this.a;
            t24 t24Var = m24Var.b;
            l24 l24Var = m24Var.a;
            t24Var.getClass();
            if (l24Var != null && (x54Var = l24Var.b) != null) {
                l34 l34Var = t24Var.d;
                String networkName = l24Var.c.b().getNetworkName();
                l34Var.f.getClass();
                Boolean boolValueOf = (d9Var == null || (t95Var = d9Var.r) == null) ? null : Boolean.valueOf(t95Var.b);
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
                Map mapSingletonMap = Collections.singletonMap("reward_info", objSingletonMap);
                mapSingletonMap.getClass();
                l34Var.a(context, e75.REWARD, x54Var, networkName, mapSingletonMap);
            }
            ba5VarA.g();
        }
    }
}
