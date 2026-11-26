package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class m16 implements kv {
    public static final m16 c;
    public final oe3 b;

    static {
        le3 le3Var = oe3.c;
        c = new m16(k55.f);
    }

    public m16(oe3 oe3Var) {
        this.b = oe3.a(oe3Var);
    }

    public final boolean a(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            l16 l16Var = (l16) this.b.get(i2);
            for (boolean z : l16Var.f) {
                if (z) {
                    if (l16Var.c.d != i) {
                        break;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m16.class != obj.getClass()) {
            return false;
        }
        return this.b.equals(((m16) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
