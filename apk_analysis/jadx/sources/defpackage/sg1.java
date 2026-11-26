package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sg1 extends gh4 implements nl3<Throwable, qp1> {
    public final /* synthetic */ yg1 f;
    public final /* synthetic */ hv6 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sg1(yg1 yg1Var, hv6 hv6Var, String str) {
        super(1);
        this.f = yg1Var;
        this.g = hv6Var;
        this.h = str;
    }

    @Override // defpackage.nl3
    public final qp1 invoke(Throwable th) {
        Throwable th2 = th;
        th2.getClass();
        return this.f.a.b(this.g.b(), this.h).c(new bq1(th2));
    }
}
