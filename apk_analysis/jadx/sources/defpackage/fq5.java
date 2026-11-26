package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fq5 extends gh4 implements ll3<String> {
    public final /* synthetic */ p07 f;
    public final /* synthetic */ hq5<Object> g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fq5(p07 p07Var, hq5<Object> hq5Var) {
        super(0);
        this.f = p07Var;
        this.g = hq5Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Only found " + this.f.b + " digits in a row, but need to parse " + this.g.b();
    }
}
