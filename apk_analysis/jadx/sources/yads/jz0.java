package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class jz0 implements yy0 {
    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (!(ry0Var instanceof my0)) {
            return false;
        }
        pw0 pw0Var = ((my0) ry0Var).a;
        String str2 = (String) pw0Var.a.a(fs2Var);
        as2 as2Var = pw0Var.b;
        Boolean bool = as2Var != null ? (Boolean) as2Var.a(fs2Var) : null;
        if (bool != null) {
            vq0Var.v().a(str2, vq0Var.B, bool.booleanValue());
            return true;
        }
        vq0Var.v().a(str2, vq0Var.B, false);
        return true;
    }
}
