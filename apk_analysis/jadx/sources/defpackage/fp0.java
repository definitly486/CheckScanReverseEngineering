package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fp0 extends gh4 implements nl3<cp2, j59> {
    public final /* synthetic */ lp0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fp0(lp0 lp0Var) {
        super(1);
        this.f = lp0Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(cp2 cp2Var) {
        lp0 lp0Var = this.f;
        int i = 0;
        lp0Var.e.onNext(new x68.c(i));
        lp0Var.f.onNext(new x68.c(i));
        lp0Var.g.onNext(new x68.c(i));
        return j59.a;
    }
}
