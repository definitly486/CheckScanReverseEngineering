package defpackage;

import androidx.compose.ui.spatial.RectListKt;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.subscription.domain.interactors.SubscriptionInteractor", f = "SubscriptionInteractor.kt", l = {RectListKt.BitOffsetForGesturable}, m = "fetchSubscriptionSplashBanner")
public final class jc8 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ ic8 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jc8(ic8 ic8Var, f02 f02Var) {
        super(f02Var);
        this.m = ic8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(this);
    }
}
