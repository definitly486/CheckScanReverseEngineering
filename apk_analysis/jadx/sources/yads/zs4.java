package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zs4 {
    public static final List a(ys4 ys4Var) {
        if (ys4Var instanceof zn2) {
            return ((zn2) ys4Var).b;
        }
        return ys4Var instanceof at4 ? a(((at4) ys4Var).c()) : defpackage.kx2.b;
    }

    public static final tr4 b(ys4 ys4Var) {
        if (!(ys4Var instanceof tr4)) {
            ys4Var = new tr4(ys4Var);
        }
        return (tr4) ys4Var;
    }
}
