package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class eq5 extends gh4 implements ll3<String> {
    public final /* synthetic */ hq5<Object> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eq5(hq5<Object> hq5Var) {
        super(0);
        this.f = hq5Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Unexpected end of input: yet to parse ".concat(this.f.b());
    }
}
