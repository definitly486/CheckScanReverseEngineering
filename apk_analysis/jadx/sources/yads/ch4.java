package yads;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public class ch4 implements ok4 {
    public final ae4 a;
    public final d9 b;
    public final pr4 c;
    public final vh6 d;
    public String e;
    public dh4 f;

    public ch4(ae4 ae4Var, d9 d9Var) {
        pr4 pr4Var = new pr4();
        vh6 vh6Var = new vh6();
        this.a = ae4Var;
        this.b = d9Var;
        this.c = pr4Var;
        this.d = vh6Var;
    }

    public i66 a(Context context, int i, boolean z) {
        Rect rectA;
        Rect rectA2;
        dh4 dh4Var = this.f;
        View viewA = dh4Var != null ? dh4Var.d.a() : null;
        if (viewA == null) {
            return new f66(e66.SUPERVIEW_NULL, null, null);
        }
        if (eh6.b(viewA)) {
            return new f66(e66.SUPERVIEW_HIDDEN, null, null);
        }
        uh6 uh6VarA = eh6.a.a(viewA);
        String str = uh6VarA.b;
        this.e = str;
        if (uh6VarA.a < 1) {
            return d66.a(1, null, str);
        }
        if (a(viewA, i) && !z) {
            return new f66(e66.NOT_VISIBLE_FOR_PERCENT, null, this.e);
        }
        String str2 = this.b.k;
        tn0[] tn0VarArr = tn0.b;
        if (!defpackage.aa4.e(str2, "divkit") || this.b.H) {
            i66 i66VarA = this.a.a(z);
            return (z || !(i66VarA instanceof g66) || (rectA = this.d.a(viewA)) == null || this.c.a(viewA, rectA) <= 0) ? i66VarA : new g66(defpackage.qn1.i0(h66.OVERLAPPED_BY_VIEW, ((g66) i66VarA).a));
        }
        g66 g66Var = new g66();
        return (z || (rectA2 = this.d.a(viewA)) == null || this.c.a(viewA, rectA2) <= 0) ? g66Var : new g66(defpackage.qn1.i0(h66.OVERLAPPED_BY_VIEW, g66Var.a));
    }

    public final m85 b() {
        return this.a.e();
    }

    public final boolean a() {
        View viewA;
        dh4 dh4Var = this.f;
        if (dh4Var == null || (viewA = dh4Var.d.a()) == null) {
            return true;
        }
        return eh6.b(viewA);
    }

    public final void a(dh4 dh4Var) {
        this.a.d = dh4Var;
        this.f = dh4Var;
    }

    public final boolean a(View view, int i) {
        int iA = eh6.a(view);
        this.e = defpackage.rz0.c(iA, i, "actualPercent: ", ", expectedPercent: ");
        return iA < i;
    }
}
