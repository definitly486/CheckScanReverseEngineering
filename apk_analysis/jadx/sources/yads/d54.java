package yads;

import android.content.Context;
import com.monetization.ads.mediation.interstitial.MediatedInterstitialAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class d54 implements q34 {
    public final e34 a;
    public final d9 b;

    public d54(e34 e34Var, d9 d9Var) {
        this.a = e34Var;
        this.b = d9Var;
    }

    @Override // yads.q34
    public final com.monetization.ads.mediation.base.a a(Context context, x54 x54Var) {
        ab5 ab5Var;
        MediatedInterstitialAdapter mediatedInterstitialAdapter;
        d9 d9Var = this.b;
        cb5 cb5Var = x54Var.i;
        if (cb5Var == null || (ab5Var = cb5Var.c) == null || (mediatedInterstitialAdapter = (MediatedInterstitialAdapter) this.a.a(context, x54Var, MediatedInterstitialAdapter.class)) == null) {
            return null;
        }
        return new c54(mediatedInterstitialAdapter, d9Var, ab5Var);
    }

    @Override // yads.q34
    public final boolean a(x54 x54Var, Class cls) {
        cb5 cb5Var = x54Var.i;
        return cb5Var != null && cb5Var.b == k54.INTERSTITIAL && MediatedRewardedAdapter.class.isAssignableFrom(cls);
    }
}
