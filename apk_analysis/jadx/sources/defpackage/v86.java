package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v86 extends gh4 implements ll3<String> {
    public final /* synthetic */ w86<Object> f;
    public final /* synthetic */ CharSequence g;
    public final /* synthetic */ int h;
    public final /* synthetic */ int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v86(w86<Object> w86Var, CharSequence charSequence, int i, int i2) {
        super(0);
        this.f = w86Var;
        this.g = charSequence;
        this.h = i;
        this.i = i2;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        StringBuilder sb = new StringBuilder("Expected ");
        sb.append(this.f.a);
        sb.append(" but got ");
        int i = this.i;
        int i2 = this.h;
        sb.append(this.g.subSequence(i2, i + i2 + 1).toString());
        return sb.toString();
    }
}
