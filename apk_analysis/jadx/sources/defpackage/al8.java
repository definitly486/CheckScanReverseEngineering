package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class al8 extends gh4 implements ll3<j59> {
    public final /* synthetic */ a4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public al8(a4 a4Var, Throwable th) {
        super(0);
        this.f = a4Var;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        ((d18) this.f.b).dispose();
        return j59.a;
    }
}
