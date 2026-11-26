package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class gz0 implements yy0 {
    public static void a(zv0 zv0Var, vq0 vq0Var, fs2 fs2Var) {
        String str = (String) zv0Var.a.a(fs2Var);
        try {
            vq0Var.a(m32.a(str), ((Boolean) zv0Var.b.a(fs2Var)).booleanValue());
        } catch (pt4 e) {
            o01.a(vq0Var, new IllegalArgumentException(defpackage.bj.c("Invalid format of ", str), e));
        }
    }

    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        if (!(ry0Var instanceof jy0)) {
            return false;
        }
        a(((jy0) ry0Var).a, vq0Var, fs2Var);
        return true;
    }
}
