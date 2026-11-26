package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class bs7 implements dy1 {
    public final String a;
    public final int b;
    public final jl c;
    public final boolean d;

    public bs7(String str, int i, jl jlVar, boolean z) {
        this.a = str;
        this.b = i;
        this.c = jlVar;
        this.d = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new rr7(ox4Var, nd0Var, this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapePath{name=");
        sb.append(this.a);
        sb.append(", index=");
        return rg.h(sb, this.b, '}');
    }
}
