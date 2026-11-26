package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gq5 extends gh4 implements ll3<String> {
    public final /* synthetic */ String f;
    public final /* synthetic */ hq5<Object> g;
    public final /* synthetic */ int h;
    public final /* synthetic */ dq5 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gq5(String str, hq5<Object> hq5Var, int i, dq5 dq5Var) {
        super(0);
        this.f = str;
        this.g = hq5Var;
        this.h = i;
        this.i = dq5Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Can not interpret the string '" + this.f + "' as " + this.g.a.get(this.h).b + ": " + this.i.a();
    }
}
