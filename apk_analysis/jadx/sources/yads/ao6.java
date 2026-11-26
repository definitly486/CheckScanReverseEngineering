package yads;

import android.app.Activity;
import com.yandex.mobile.ads.rewarded.RewardedAd;
import com.yandex.mobile.ads.rewarded.RewardedAdEventListener;

/* JADX INFO: loaded from: classes6.dex */
public final class ao6 implements RewardedAd {
    public final ja5 a;
    public final gm6 b;

    public ao6(ja5 ja5Var) {
        gm6 gm6Var = new gm6();
        this.a = ja5Var;
        this.b = gm6Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ao6) && defpackage.aa4.e(((ao6) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // com.yandex.mobile.ads.rewarded.RewardedAd
    public final void setAdEventListener(RewardedAdEventListener rewardedAdEventListener) {
        bo6 bo6Var = new bo6(rewardedAdEventListener);
        ja5 ja5Var = this.a;
        ja5Var.c.a();
        ja5Var.b.c = bo6Var;
    }

    @Override // com.yandex.mobile.ads.rewarded.RewardedAd
    public final void show(Activity activity) {
        this.a.a(activity);
    }
}
