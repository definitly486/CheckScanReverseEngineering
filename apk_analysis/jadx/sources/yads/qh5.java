package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qh5 {
    public final uh5 a;
    public final uh5 b;

    public qh5(uh5 uh5Var, uh5 uh5Var2) {
        this.a = uh5Var;
        this.b = uh5Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && qh5.class == obj.getClass()) {
            qh5 qh5Var = (qh5) obj;
            if (this.a.equals(qh5Var.a) && this.b.equals(qh5Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.a);
        if (this.a.equals(this.b)) {
            str = "";
        } else {
            str = ", " + this.b;
        }
        return defpackage.me0.d(sb, str, "]");
    }
}
