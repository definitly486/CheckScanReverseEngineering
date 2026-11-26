package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$updateFavoriteGroupPreview$1", f = "BonusBlockInteractor.kt", l = {}, m = "invokeSuspend")
public final class kn0 extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
    public /* synthetic */ boolean l;
    public final /* synthetic */ wl0 m;
    public final /* synthetic */ int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kn0(wl0 wl0Var, int i, e02<? super kn0> e02Var) {
        super(2, e02Var);
        this.m = wl0Var;
        this.n = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        kn0 kn0Var = new kn0(this.m, this.n, e02Var);
        kn0Var.l = ((Boolean) obj).booleanValue();
        return kn0Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
        Boolean bool2 = bool;
        bool2.booleanValue();
        return ((kn0) create(bool2, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        this.m.c.b(this.n, this.l);
        return j59.a;
    }
}
