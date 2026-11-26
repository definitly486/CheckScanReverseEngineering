package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class l79<Target> implements x83<Target> {
    public final j79<Target> a;
    public final int b;
    public final Integer c;
    public final int d;

    public /* synthetic */ class a extends qm3 implements nl3<Target, Integer> {
        @Override // defpackage.nl3
        public final Integer invoke(Object obj) {
            return (Integer) ((d3) this.receiver).b(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l79(j79<? super Target> j79Var, int i, Integer num) {
        j79Var.getClass();
        this.a = j79Var;
        this.b = i;
        this.c = num;
        int i2 = j79Var.g;
        this.d = i2;
        if (i < 0) {
            c9.f(kv2.b(i, "The minimum number of digits (", ") is negative"));
            throw null;
        }
        if (i2 < i) {
            throw new IllegalArgumentException(("The maximum number of digits (" + i2 + ") is less than the minimum number of digits (" + i + ')').toString());
        }
        if (num == null || num.intValue() > i) {
            return;
        }
        throw new IllegalArgumentException(("The space padding (" + num + ") should be more than the minimum number of digits (" + i + ')').toString());
    }

    @Override // defpackage.x83
    public final vi3<Target> a() {
        new a(1, this.a.a, d3.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0);
        m79 m79Var = new m79();
        int i = this.b;
        if (i < 0) {
            c9.f(kv2.b(i, "The minimum number of digits (", ") is negative"));
            return null;
        }
        if (i <= 9) {
            return this.c != null ? new d58(m79Var) : m79Var;
        }
        c9.f(kv2.b(i, "The minimum number of digits (", ") exceeds the length of an Int"));
        return null;
    }

    @Override // defpackage.x83
    public final a46<Target> b() {
        Integer numValueOf = Integer.valueOf(this.b);
        Integer numValueOf2 = Integer.valueOf(this.d);
        j79<Target> j79Var = this.a;
        return or4.b(numValueOf, numValueOf2, this.c, j79Var.a, j79Var.d, false);
    }

    @Override // defpackage.x83
    public final /* bridge */ /* synthetic */ d93 c() {
        return this.a;
    }
}
