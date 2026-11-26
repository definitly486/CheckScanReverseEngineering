package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fp3<Target, Type> extends i0<Target, Type> {
    public final wr6 a;
    public final String b;
    public final Type c;

    public fp3(wr6 wr6Var, ed2 ed2Var, int i) {
        String name = wr6Var.a.getName();
        Object obj = (i & 4) != 0 ? (Type) null : ed2Var;
        name.getClass();
        this.a = wr6Var;
        this.b = name;
        this.c = (Type) obj;
    }

    @Override // defpackage.d93
    public final d3<Target, Type> a() {
        return this.a;
    }

    @Override // defpackage.d93
    public final c93<Target> b() {
        return null;
    }

    @Override // defpackage.d93
    public final Type getDefaultValue() {
        return this.c;
    }

    @Override // defpackage.d93
    public final String getName() {
        return this.b;
    }
}
