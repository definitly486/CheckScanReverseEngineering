package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vg1 extends gh4 implements nl3<Throwable, qp1> {
    public final /* synthetic */ yg1 f;
    public final /* synthetic */ long g;
    public final /* synthetic */ hv6 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vg1(yg1 yg1Var, long j, hv6 hv6Var) {
        super(1);
        this.f = yg1Var;
        this.g = j;
        this.h = hv6Var;
    }

    @Override // defpackage.nl3
    public final qp1 invoke(Throwable th) {
        th.getClass();
        return this.f.f(this.g, this.h, null);
    }
}
