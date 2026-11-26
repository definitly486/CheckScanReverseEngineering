package yads;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.rewarded.RewardedAdEventListener;
import defpackage.bg8;
import defpackage.j59;
import defpackage.ll3;
import yads.bo6;

/* JADX INFO: loaded from: classes6.dex */
public final class bo6 {
    public final RewardedAdEventListener a;

    public bo6(RewardedAdEventListener rewardedAdEventListener) {
        this.a = rewardedAdEventListener;
    }

    public final void a(j5 j5Var) {
        new CallbackStackTraceMarker(new bg8(1, this, j5Var != null ? new tm6(j5Var) : null));
    }

    public final void b() {
        new CallbackStackTraceMarker(new defpackage.g22(this, 3));
    }

    public final void c() {
        new CallbackStackTraceMarker(new defpackage.sk(this, 3));
    }

    public static final j59 b(bo6 bo6Var) {
        RewardedAdEventListener rewardedAdEventListener = bo6Var.a;
        if (rewardedAdEventListener != null) {
            rewardedAdEventListener.onAdDismissed();
        }
        return j59.a;
    }

    public static final j59 c(bo6 bo6Var) {
        RewardedAdEventListener rewardedAdEventListener = bo6Var.a;
        if (rewardedAdEventListener != null) {
            rewardedAdEventListener.onAdShown();
        }
        return j59.a;
    }

    public static final j59 a(bo6 bo6Var, fm6 fm6Var) {
        RewardedAdEventListener rewardedAdEventListener = bo6Var.a;
        if (rewardedAdEventListener != null) {
            rewardedAdEventListener.onAdFailedToShow(fm6Var);
        }
        return j59.a;
    }

    public final void a() {
        new CallbackStackTraceMarker(new defpackage.pg0(this, 4));
    }

    public static final j59 a(bo6 bo6Var) {
        RewardedAdEventListener rewardedAdEventListener = bo6Var.a;
        if (rewardedAdEventListener != null) {
            rewardedAdEventListener.onAdClicked();
        }
        return j59.a;
    }

    public final void a(mk5 mk5Var) {
        final fm6 fm6Var = new fm6(mk5Var.a);
        new CallbackStackTraceMarker(new ll3() { // from class: uo9
            @Override // defpackage.ll3
            public final Object invoke() {
                return bo6.a(this.b, fm6Var);
            }
        });
    }

    public static final j59 a(bo6 bo6Var, tm6 tm6Var) {
        RewardedAdEventListener rewardedAdEventListener = bo6Var.a;
        if (rewardedAdEventListener != null) {
            rewardedAdEventListener.onAdImpression(tm6Var);
        }
        return j59.a;
    }

    public final void a(s95 s95Var) {
        new CallbackStackTraceMarker(new defpackage.og0(2, this, new zn6(s95Var)));
    }

    public static final j59 a(bo6 bo6Var, zn6 zn6Var) {
        RewardedAdEventListener rewardedAdEventListener = bo6Var.a;
        if (rewardedAdEventListener != null) {
            rewardedAdEventListener.onRewarded(zn6Var);
        }
        return j59.a;
    }
}
