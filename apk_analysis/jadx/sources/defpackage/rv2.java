package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rv2 extends gh4 implements nl3<Throwable, j59> {
    public final /* synthetic */ uv2 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rv2(uv2 uv2Var) {
        super(1);
        this.f = uv2Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Throwable th) {
        this.f.d++;
        return j59.a;
    }
}
