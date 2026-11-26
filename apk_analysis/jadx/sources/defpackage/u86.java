package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u86 extends gh4 implements ll3<String> {
    public final /* synthetic */ w86<Object> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u86(w86<Object> w86Var) {
        super(0);
        this.f = w86Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return xp.e(new StringBuilder("Unexpected end of input: yet to parse '"), this.f.a, '\'');
    }
}
