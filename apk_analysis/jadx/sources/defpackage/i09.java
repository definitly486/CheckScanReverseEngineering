package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i09 extends gh4 implements nl3<Double, j59> {
    public final /* synthetic */ h09 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i09(h09 h09Var) {
        super(1);
        this.f = h09Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Double d) {
        this.f.b.onAmountChanged(d);
        return j59.a;
    }
}
