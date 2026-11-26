package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fv7 implements cs0 {
    public final int a;

    public fv7(int i) {
        this.a = Integer.MIN_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fv7) && this.a == ((fv7) obj).a;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return Integer.valueOf(this.a);
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "ShopsEmptyViewModel(id=", ")");
    }

    public fv7() {
        this(0);
    }
}
