package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j79<Target> extends i0<Target, Integer> {
    public final wr6 a;
    public final int b;
    public final int c;
    public final String d;
    public final Integer e;
    public final c93<Target> f;
    public final int g;

    public j79(wr6 wr6Var, int i, int i2, yu5.c cVar, int i3) {
        int i4;
        String name = wr6Var.a.getName();
        Integer num = (i3 & 16) != 0 ? null : 0;
        cVar = (i3 & 32) != 0 ? null : cVar;
        name.getClass();
        this.a = wr6Var;
        this.b = i;
        this.c = i2;
        this.d = name;
        this.e = num;
        this.f = cVar;
        if (i2 < 10) {
            i4 = 1;
        } else if (i2 < 100) {
            i4 = 2;
        } else {
            if (i2 >= 1000) {
                fg.c(kv2.b(i2, "Max value ", " is too large"));
                throw null;
            }
            i4 = 3;
        }
        this.g = i4;
    }

    @Override // defpackage.d93
    public final d3<Target, Integer> a() {
        return this.a;
    }

    @Override // defpackage.d93
    public final c93<Target> b() {
        return this.f;
    }

    @Override // defpackage.d93
    public final Object getDefaultValue() {
        return this.e;
    }

    @Override // defpackage.d93
    public final String getName() {
        return this.d;
    }
}
