package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor", f = "BonusBlockInteractor.kt", l = {676}, m = "fetchCheckscanPromocode")
public final class em0 extends f02 {
    public ArrayList l;
    public /* synthetic */ Object m;
    public final /* synthetic */ wl0 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public em0(wl0 wl0Var, f02 f02Var) {
        super(f02Var);
        this.n = wl0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.c(null, this);
    }
}
