package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oe2 {
    public final boolean a(oe2 oe2Var, fs2 fs2Var, fs2 fs2Var2) {
        if (oe2Var == null) {
            return false;
        }
        if (this instanceof me2) {
            pr5 pr5Var = ((me2) this).a;
            Object objA = oe2Var.a();
            pr5 pr5Var2 = objA instanceof pr5 ? (pr5) objA : null;
            if (pr5Var2 != null) {
                return defpackage.aa4.e(pr5Var.a.a(fs2Var), pr5Var2.a.a(fs2Var2));
            }
            pr5Var.getClass();
        } else if (this instanceof ke2) {
            jm3 jm3Var = ((ke2) this).a;
            Object objA2 = oe2Var.a();
            jm3 jm3Var2 = objA2 instanceof jm3 ? (jm3) objA2 : null;
            if (jm3Var2 == null) {
                jm3Var.getClass();
            } else if (((Number) jm3Var.a.a(fs2Var)).longValue() == ((Number) jm3Var2.a.a(fs2Var2)).longValue()) {
                return true;
            }
        } else if (this instanceof le2) {
            ro4 ro4Var = ((le2) this).a;
            Object objA3 = oe2Var.a();
            ro4 ro4Var2 = objA3 instanceof ro4 ? (ro4) objA3 : null;
            if (ro4Var2 == null) {
                ro4Var.getClass();
            } else if (((Number) ro4Var.a.a(fs2Var)).doubleValue() == ((Number) ro4Var2.a.a(fs2Var2)).doubleValue()) {
                return true;
            }
        } else if (this instanceof ie2) {
            o30 o30Var = ((ie2) this).a;
            Object objA4 = oe2Var.a();
            o30 o30Var2 = objA4 instanceof o30 ? (o30) objA4 : null;
            if (o30Var2 == null) {
                o30Var.getClass();
            } else if (((Number) o30Var.a.a(fs2Var)).intValue() == ((Number) o30Var2.a.a(fs2Var2)).intValue()) {
                return true;
            }
        } else if (this instanceof he2) {
            ku kuVar = ((he2) this).a;
            Object objA5 = oe2Var.a();
            ku kuVar2 = objA5 instanceof ku ? (ku) objA5 : null;
            if (kuVar2 == null) {
                kuVar.getClass();
            } else if (((Boolean) kuVar.a.a(fs2Var)).booleanValue() == ((Boolean) kuVar2.a.a(fs2Var2)).booleanValue()) {
                return true;
            }
        } else if (this instanceof ne2) {
            f56 f56Var = ((ne2) this).a;
            Object objA6 = oe2Var.a();
            f56 f56Var2 = objA6 instanceof f56 ? (f56) objA6 : null;
            if (f56Var2 != null) {
                return defpackage.aa4.e(f56Var.a.a(fs2Var), f56Var2.a.a(fs2Var2));
            }
            f56Var.getClass();
        } else if (this instanceof je2) {
            xo0 xo0Var = ((je2) this).a;
            Object objA7 = oe2Var.a();
            xo0 xo0Var2 = objA7 instanceof xo0 ? (xo0) objA7 : null;
            if (xo0Var2 != null) {
                return defpackage.aa4.e(xo0Var.a.a(fs2Var), xo0Var2.a.a(fs2Var2));
            }
            xo0Var.getClass();
        } else {
            if (!(this instanceof ge2)) {
                defpackage.me0.e();
                return false;
            }
            ej ejVar = ((ge2) this).a;
            Object objA8 = oe2Var.a();
            ej ejVar2 = objA8 instanceof ej ? (ej) objA8 : null;
            if (ejVar2 != null) {
                return defpackage.aa4.e(ejVar.a.a(fs2Var), ejVar2.a.a(fs2Var2));
            }
            ejVar.getClass();
        }
        return false;
    }

    public final Object a() {
        if (this instanceof me2) {
            return ((me2) this).a;
        }
        if (this instanceof ke2) {
            return ((ke2) this).a;
        }
        if (this instanceof le2) {
            return ((le2) this).a;
        }
        if (this instanceof ie2) {
            return ((ie2) this).a;
        }
        if (this instanceof he2) {
            return ((he2) this).a;
        }
        if (this instanceof ne2) {
            return ((ne2) this).a;
        }
        if (this instanceof je2) {
            return ((je2) this).a;
        }
        if (this instanceof ge2) {
            return ((ge2) this).a;
        }
        defpackage.me0.e();
        return null;
    }
}
