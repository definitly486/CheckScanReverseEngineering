package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class lz3 extends gh4 implements ll3<String> {
    public final /* synthetic */ ab4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz3(ab4 ab4Var) {
        super(0);
        this.f = ab4Var;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        StringBuilder sb = new StringBuilder("Create row in storage ");
        sb.append((Object) ("MetricsEventUuid(value=" + this.f.a + ')'));
        return sb.toString();
    }
}
