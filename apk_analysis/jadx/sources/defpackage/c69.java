package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c69 extends gh4 implements ll3<j59> {
    public final /* synthetic */ c31 f;
    public final /* synthetic */ boolean g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c69(s59 s59Var, c31 c31Var, boolean z) {
        super(0);
        this.f = c31Var;
        this.g = z;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        Boolean boolValueOf = Boolean.valueOf(this.g);
        c31 c31Var = this.f;
        if (c31Var.t() instanceof no5) {
            c31Var.resumeWith(boolValueOf);
        }
        return j59.a;
    }
}
