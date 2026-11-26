package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor", f = "PersonalFormInteractor.kt", l = {372}, m = "updateEmail")
public final class z66 extends f02 {
    public ArrayList l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ w66 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z66(w66 w66Var, f02 f02Var) {
        super(f02Var);
        this.o = w66Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.e(false, this);
    }
}
