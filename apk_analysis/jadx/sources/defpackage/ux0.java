package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ux0 {
    public final b37 a;
    public final z47 b;

    public static final class a {
        /* JADX WARN: Code duplicated, block: B:24:0x0031  */
        public static boolean a(b37 b37Var, z47 z47Var) {
            b37Var.getClass();
            int i = z47Var.e;
            if (i != 200 && i != 410 && i != 414 && i != 501 && i != 203 && i != 204) {
                if (i == 307) {
                    if (z47.n(z47Var, "Expires") == null && z47Var.m().c == -1 && !z47Var.m().f && !z47Var.m().e) {
                        return false;
                    }
                } else if (i != 308 && i != 404 && i != 405) {
                    switch (i) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            if (z47.n(z47Var, "Expires") == null) {
                                return false;
                            }
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (z47Var.m().b) {
                return false;
            }
            mx0 mx0VarA = b37Var.f;
            if (mx0VarA == null) {
                int i2 = mx0.n;
                mx0VarA = mx0.b.a(b37Var.c);
                b37Var.f = mx0VarA;
            }
            return !mx0VarA.b;
        }
    }

    public ux0(b37 b37Var, z47 z47Var) {
        this.a = b37Var;
        this.b = z47Var;
    }
}
