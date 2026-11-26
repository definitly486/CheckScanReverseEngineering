package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class k1a extends gh4 implements ll3<String> {
    public final /* synthetic */ ya5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k1a(ya5 ya5Var) {
        super(0);
        this.f = ya5Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "MetricsClient enqueue " + this.f;
    }
}
