package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.onboardingOneSlide.OnboardingOneSlideInteractor", f = "OnboardingOneSlideInteractor.kt", l = {38, 47}, m = "fetchCurrentSlide")
public final class ax5 extends f02 {
    public p07 l;
    public ArrayList m;
    public /* synthetic */ Object n;
    public final /* synthetic */ bx5 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ax5(bx5 bx5Var, f02 f02Var) {
        super(f02Var);
        this.o = bx5Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.a(this);
    }
}
