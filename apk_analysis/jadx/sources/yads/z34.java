package yads;

import android.content.Context;
import com.monetization.ads.mediation.interstitial.MediatedInterstitialAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class z34 implements n24 {
    public final x24 a;

    public z34(x24 x24Var) {
        this.a = x24Var;
    }

    @Override // yads.n24
    public final l24 a(Context context) {
        return this.a.a(context, MediatedInterstitialAdapter.class);
    }
}
