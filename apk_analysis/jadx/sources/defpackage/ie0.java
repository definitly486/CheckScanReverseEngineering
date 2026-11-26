package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ie0 extends gh4 implements nl3<Double, j59> {
    public final /* synthetic */ he0 f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ie0(he0 he0Var, String str) {
        super(1);
        this.f = he0Var;
        this.g = str;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Double d) {
        this.f.a.edit().putLong(this.g, Double.doubleToRawLongBits(d.doubleValue())).apply();
        return j59.a;
    }
}
