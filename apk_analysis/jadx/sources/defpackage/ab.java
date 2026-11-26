package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.bonuses.AdvantageRepositoryImpl", f = "AdvantageRepositoryImpl.kt", l = {12}, m = "getAfterRegistrationSlides")
public final class ab extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ cb m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab(cb cbVar, f02 f02Var) {
        super(f02Var);
        this.m = cbVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b(this);
    }
}
