package yads;

import android.app.Activity;
import defpackage.fh8;
import defpackage.k57;
import defpackage.yg9;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class ja5 {
    public final ba5 a;
    public final s25 b;
    public final fw3 c;
    public final aw3 d;
    public final AtomicBoolean e = new AtomicBoolean(false);
    public final defpackage.cl4 f = new fh8(new defpackage.o31(this, 3));

    public ja5(ba5 ba5Var, s25 s25Var, fw3 fw3Var, aw3 aw3Var) {
        this.a = ba5Var;
        this.b = s25Var;
        this.c = fw3Var;
        this.d = aw3Var;
        ba5Var.l = s25Var;
        ba5Var.m.a = s25Var;
    }

    public static final void a(ja5 ja5Var, Activity activity) {
        if (ja5Var.e.getAndSet(true)) {
            ja5Var.b.a(z6.a);
            return;
        }
        Throwable thA = k57.a(ja5Var.a.a(activity));
        if (thA != null) {
            ja5Var.b.a(new y6(String.valueOf(thA.getMessage())));
        }
    }

    public final void a(Activity activity) {
        this.c.a();
        this.d.a(new yg9(1, this, activity));
    }

    public static final i70 a(ja5 ja5Var) {
        return ja5Var.a.d();
    }
}
