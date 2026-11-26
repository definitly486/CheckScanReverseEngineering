package yads;

import android.content.Context;
import defpackage.a80;
import defpackage.r07;
import yads.qi1;

/* JADX INFO: loaded from: classes6.dex */
public final class qi1 implements oi1 {
    public final aw3 a;
    public final vl5 b;

    public qi1(Context context) {
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        vl5 vl5Var = un4.d.a(context).a;
        this.a = aw3VarA;
        this.b = vl5Var;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, yads.xc3] */
    public static final void a(r07 r07Var, qi1 qi1Var, String str, ji1 ji1Var) {
        r07Var.b = qi1Var.b.a(str, new pi1(str, ji1Var), 0, 0);
    }

    @Override // yads.oi1
    public final du3 b(String str, ji1 ji1Var) {
        return c(str, ji1Var);
    }

    public final du3 c(final String str, final ji1 ji1Var) {
        final r07 r07Var = new r07();
        this.a.a(new Runnable() { // from class: g7a
            @Override // java.lang.Runnable
            public final void run() {
                qi1.a(r07Var, this, str, ji1Var);
            }
        });
        return new du3() { // from class: h7a
            @Override // yads.du3
            public final void cancel() {
                qi1.a(this.a, r07Var);
            }
        };
    }

    @Override // yads.oi1
    public final du3 a(String str, ji1 ji1Var) {
        return c(str, ji1Var);
    }

    public static final void a(qi1 qi1Var, r07 r07Var) {
        qi1Var.a.a(new a80(r07Var, 2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(r07 r07Var) {
        xc3 xc3Var = (xc3) r07Var.b;
        if (xc3Var != null) {
            xc3Var.a();
        }
    }
}
