package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hn0 extends gh4 implements nl3<Throwable, j59> {
    public final /* synthetic */ bm0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hn0(bm0 bm0Var) {
        super(1);
        this.f = bm0Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Throwable th) {
        this.f.m.onNext(new x68.b(kx2.b));
        return j59.a;
    }
}
