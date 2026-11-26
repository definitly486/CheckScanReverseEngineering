package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class n88<T> {
    public final h88 a;
    public final T b;

    public n88(h88 h88Var, T t) {
        this.a = h88Var;
        this.b = t;
    }

    public final boolean a() {
        return this.a == null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof n88)) {
            return false;
        }
        n88 n88Var = (n88) obj;
        if (a() != n88Var.a()) {
            return false;
        }
        return a() ? Objects.equals(this.b, n88Var.b) : Objects.equals(this.a, n88Var.a);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        h88 h88Var = this.a;
        if (h88Var == null) {
            aVarB.d(this.b, "value");
        } else {
            aVarB.d(h88Var, "error");
        }
        return aVarB.toString();
    }
}
