package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ea8 extends gh4 implements ll3<String> {
    public final /* synthetic */ da8<Object> f;
    public final /* synthetic */ CharSequence g;
    public final /* synthetic */ int h;
    public final /* synthetic */ p07 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ea8(da8<Object> da8Var, CharSequence charSequence, int i, p07 p07Var) {
        super(0);
        this.f = da8Var;
        this.g = charSequence;
        this.h = i;
        this.i = p07Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Expected " + this.f.b + " but got " + this.g.subSequence(this.h, this.i.b).toString();
    }
}
