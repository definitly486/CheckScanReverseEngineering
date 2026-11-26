package yads;

import com.yandex.mobile.ads.rewarded.RewardedAdLoader;

/* JADX INFO: loaded from: classes6.dex */
public final class ia5 extends defpackage.f02 {
    public /* synthetic */ Object b;
    public final /* synthetic */ RewardedAdLoader c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ia5(RewardedAdLoader rewardedAdLoader, defpackage.e02 e02Var) {
        super(e02Var);
        this.c = rewardedAdLoader;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.loadAd(null, this);
    }
}
