package yads;

import defpackage.fh8;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class np3 {
    public final fp3 a;
    public final q25 b;
    public final fw3 c;
    public final aw3 d;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final defpackage.cl4 f = new fh8(new defpackage.ap1(this, 5));

    public np3(fp3 fp3Var, q25 q25Var, fw3 fw3Var, aw3 aw3Var) {
        this.a = fp3Var;
        this.b = q25Var;
        this.c = fw3Var;
        this.d = aw3Var;
        fp3Var.l = q25Var;
    }

    public static final i70 a(np3 np3Var) {
        return np3Var.a.d();
    }
}
