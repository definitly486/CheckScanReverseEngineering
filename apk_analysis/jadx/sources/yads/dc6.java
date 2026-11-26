package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dc6 extends defpackage.sr5 {
    public final /* synthetic */ ec6 a;

    /* JADX WARN: Illegal instructions before constructor call */
    public dc6(ec6 ec6Var) {
        cc6 cc6Var = cc6.INITIAL;
        this.a = ec6Var;
        super(cc6Var);
    }

    @Override // defpackage.sr5
    public final void afterChange(defpackage.ze4 ze4Var, Object obj, Object obj2) {
        ze4Var.getClass();
        cc6 cc6Var = (cc6) obj2;
        this.a.a.add(cc6Var);
        this.a.b.setValue(cc6Var);
    }
}
