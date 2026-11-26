package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor", f = "BalanceInteractor.kt", l = {287}, m = "updateBalanceBlock")
public final class x40 extends f02 {
    public ArrayList l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ b40 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x40(b40 b40Var, f02 f02Var) {
        super(f02Var);
        this.o = b40Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.A(this);
    }
}
