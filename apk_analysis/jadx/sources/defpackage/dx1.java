package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dx1 {
    public final cx1 a;
    public final h88 b;

    public dx1(cx1 cx1Var, h88 h88Var) {
        o8.l(cx1Var, "state is null");
        this.a = cx1Var;
        o8.l(h88Var, "status is null");
        this.b = h88Var;
    }

    public static dx1 a(cx1 cx1Var) {
        o8.f(cx1Var != cx1.TRANSIENT_FAILURE, "state is TRANSIENT_ERROR. Use forError() instead");
        return new dx1(cx1Var, h88.e);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dx1)) {
            return false;
        }
        dx1 dx1Var = (dx1) obj;
        if (this.a.equals(dx1Var.a)) {
            h88 h88Var = dx1Var.b;
            h88 h88Var2 = this.b;
            h88Var2.getClass();
            if (h88Var2 == h88Var) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    public final String toString() {
        h88 h88Var = this.b;
        boolean zF = h88Var.f();
        cx1 cx1Var = this.a;
        if (zF) {
            return cx1Var.toString();
        }
        return cx1Var + "(" + h88Var + ")";
    }
}
