package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rg4 implements nl3<Throwable, j59> {
    public final /* synthetic */ fy0<Object> b;

    public rg4(fy0<Object> fy0Var) {
        this.b = fy0Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Throwable th) {
        this.b.cancel();
        return j59.a;
    }
}
