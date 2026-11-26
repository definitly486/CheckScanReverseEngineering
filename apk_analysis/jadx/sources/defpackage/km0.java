package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor$fetchMain$$inlined$flatMapLatest$1", f = "BonusBlockInteractor.kt", l = {190}, m = "invokeSuspend")
public final class km0 extends pg8 implements dm3<id3<? super w81>, List<? extends ak0>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ id3 m;
    public /* synthetic */ Object n;
    public final /* synthetic */ wl0 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public km0(wl0 wl0Var, e02 e02Var) {
        super(3, e02Var);
        this.o = wl0Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<? super w81> id3Var, List<? extends ak0> list, e02<? super j59> e02Var) {
        km0 km0Var = new km0(this.o, e02Var);
        km0Var.m = id3Var;
        km0Var.n = list;
        return km0Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = this.m;
            fy6 fy6VarA = this.o.c.a();
            this.l = 1;
            if (px.f(id3Var, fy6VarA, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
