package defpackage;

import androidx.media3.muxer.WebmConstants;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.cashback.CashBackInteractor", f = "CashBackInteractor.kt", l = {128, WebmConstants.MkvEbmlElement.TRACK_TYPE}, m = "fetchFloatingButtonInfoV3")
public final class r51 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ p51 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r51(p51 p51Var, f02 f02Var) {
        super(f02Var);
        this.m = p51Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        ct6<Object> ct6Var = p51.h;
        return this.m.b(this);
    }
}
