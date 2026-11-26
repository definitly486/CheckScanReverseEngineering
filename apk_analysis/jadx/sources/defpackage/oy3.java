package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class oy3 extends jl8 {
    public final /* synthetic */ hy3 e;
    public final /* synthetic */ int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oy3(String str, hy3 hy3Var, int i, p03 p03Var) {
        super(str, true);
        this.e = hy3Var;
        this.f = i;
    }

    @Override // defpackage.jl8
    public final long a() {
        this.e.l.getClass();
        synchronized (this.e) {
            this.e.z.remove(Integer.valueOf(this.f));
            j59 j59Var = j59.a;
        }
        return -1L;
    }
}
