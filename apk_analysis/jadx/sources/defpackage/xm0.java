package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$loadBonusesBlocks$1", f = "BonusBlockInteractor.kt", l = {}, m = "invokeSuspend")
public final class xm0 extends pg8 implements bm3<id3<? super List<? extends ak0>>, e02<? super j59>, Object> {
    public final /* synthetic */ wl0 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xm0(wl0 wl0Var, e02<? super xm0> e02Var) {
        super(2, e02Var);
        this.l = wl0Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new xm0(this.l, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super List<? extends ak0>> id3Var, e02<? super j59> e02Var) {
        return ((xm0) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        wl0 wl0Var = this.l;
        wl0Var.g.setValue((List) wl0Var.e.getValue());
        return j59.a;
    }
}
