package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class jx7 extends gh4 implements ll3<String> {
    public final /* synthetic */ kx7<Object> f;
    public final /* synthetic */ char g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jx7(kx7<Object> kx7Var, char c) {
        super(0);
        this.f = kx7Var;
        this.g = c;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Expected " + this.f.b + " but got " + this.g;
    }
}
