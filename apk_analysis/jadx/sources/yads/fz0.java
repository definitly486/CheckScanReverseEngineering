package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fz0 implements yy0 {
    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (ry0Var instanceof hy0) {
            av0 av0Var = ((hy0) ry0Var).a;
            String str2 = (String) av0Var.b.a(fs2Var);
            int iLongValue = (int) ((Number) av0Var.d.a(fs2Var)).longValue();
            int iLongValue2 = (int) ((Number) av0Var.c.a(fs2Var)).longValue();
            yu0 yu0Var = zu0.c;
            zu0 zu0Var = (zu0) av0Var.e.a(fs2Var);
            yu0Var.getClass();
            String str3 = zu0Var.b;
            boolean zBooleanValue = ((Boolean) av0Var.a.a(fs2Var)).booleanValue();
            li2 li2VarA = ki2.a(str2, vq0Var, fs2Var, jp0.NEXT);
            if (li2VarA == null) {
                return true;
            }
            li2VarA.a(str3, iLongValue2, zBooleanValue);
            li2VarA.b(str3, iLongValue, zBooleanValue);
            return true;
        }
        if (!(ry0Var instanceof iy0)) {
            return false;
        }
        tv0 tv0Var = ((iy0) ry0Var).a;
        String str4 = (String) tv0Var.c.a(fs2Var);
        boolean zBooleanValue2 = ((Boolean) tv0Var.a.a(fs2Var)).booleanValue();
        li2 li2VarA2 = ki2.a(str4, vq0Var, fs2Var, jp0.NEXT);
        if (li2VarA2 == null) {
            return true;
        }
        kv0 kv0Var = tv0Var.b;
        if (kv0Var instanceof iv0) {
            li2VarA2.a.a((int) ((Number) ((iv0) kv0Var).a.a.a(fs2Var)).longValue(), g12.DP, zBooleanValue2);
            return true;
        }
        if (kv0Var instanceof hv0) {
            li2VarA2.a((int) ((Number) ((hv0) kv0Var).a.a.a(fs2Var)).longValue(), zBooleanValue2);
            return true;
        }
        if (kv0Var instanceof gv0) {
            li2VarA2.a.a(zBooleanValue2);
            return true;
        }
        if (!(kv0Var instanceof jv0)) {
            return true;
        }
        li2VarA2.a(0, zBooleanValue2);
        return true;
    }
}
