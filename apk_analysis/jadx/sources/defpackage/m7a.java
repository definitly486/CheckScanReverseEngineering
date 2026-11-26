package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class m7a extends gh4 implements ll3<String> {
    public final /* synthetic */ Throwable f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m7a(Throwable th) {
        super(0);
        this.f = th;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return "Http request was failed with: " + this.f;
    }
}
