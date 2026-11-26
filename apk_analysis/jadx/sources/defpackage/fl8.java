package defpackage;

import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes.dex */
public final class fl8 extends gh4 implements ll3<j59> {
    public final /* synthetic */ kk2 f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl8(kk2 kk2Var, Object obj) {
        super(0);
        this.f = kk2Var;
        this.g = obj;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        CiceroneActivity.e eVar = (CiceroneActivity.e) this.f.b;
        a64 a64Var = (a64) this.g;
        eVar.invoke(a64Var != null ? a64Var.b : null);
        return j59.a;
    }
}
