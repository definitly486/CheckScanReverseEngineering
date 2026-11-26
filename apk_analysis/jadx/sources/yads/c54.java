package yads;

import android.app.Activity;
import android.content.Context;
import com.monetization.ads.mediation.interstitial.MediatedInterstitialAdapter;
import com.monetization.ads.mediation.rewarded.MediatedReward;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import defpackage.rm9;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class c54 extends MediatedRewardedAdapter {
    public final MediatedInterstitialAdapter a;
    public final d9 b;
    public final ab5 c;
    public final defpackage.y22 d;
    public MediatedRewardedAdapterListener e;
    public final AtomicBoolean f;
    public defpackage.mb4 g;
    public final a54 h;

    public c54(MediatedInterstitialAdapter mediatedInterstitialAdapter, d9 d9Var, ab5 ab5Var) {
        defpackage.y22 y22VarA = xn.a(rm9.b(), new i90());
        this.a = mediatedInterstitialAdapter;
        this.b = d9Var;
        this.c = ab5Var;
        this.d = y22VarA;
        this.f = new AtomicBoolean(false);
        this.h = new a54(this);
    }

    public static final void a(c54 c54Var) {
        if (c54Var.f.compareAndSet(false, true)) {
            t95 t95Var = c54Var.b.r;
            r00 r00Var = t95Var != null ? t95Var.c : null;
            MediatedReward mediatedReward = r00Var != null ? new MediatedReward(r00Var.b, r00Var.c) : null;
            MediatedRewardedAdapterListener mediatedRewardedAdapterListener = c54Var.e;
            if (mediatedRewardedAdapterListener != null) {
                mediatedRewardedAdapterListener.onRewarded(mediatedReward);
            }
        }
    }

    @Override // com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter
    public final boolean isLoaded() {
        return this.a.isLoaded();
    }

    @Override // com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter
    public final void loadRewardedAd(Context context, MediatedRewardedAdapterListener mediatedRewardedAdapterListener, Map map, Map map2) {
        this.e = mediatedRewardedAdapterListener;
        this.a.loadInterstitial(context, this.h, map, map2);
    }

    @Override // com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter
    public final void onInvalidate() {
        defpackage.mb4 mb4Var = this.g;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.a.onInvalidate();
        this.e = null;
    }

    @Override // com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter
    public final void showRewardedAd(Activity activity) {
        this.a.showInterstitial(activity);
    }
}
