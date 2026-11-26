package yads;

import android.content.Context;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes6.dex */
public final class vb4 extends ls4 {
    public static final /* synthetic */ int o = 0;
    public final kb4 k;
    public jk6 l;
    public final yb4 m;
    public wx3 n;

    public vb4(Context context, xj6 xj6Var, AttributeSet attributeSet) {
        super(context, xj6Var, attributeSet, 56);
        kb4 kb4Var = new kb4();
        this.k = kb4Var;
        this.l = ik6.a;
        this.m = new yb4(this, kb4Var);
        this.n = new uk5();
    }

    public final void a(String str, ub4 ub4Var) {
        if (this.l instanceof ik6) {
            this.l = new hk6(ub4Var);
            yb4 yb4Var = this.m;
            yb4Var.e.getClass();
            boolean zFind = gb4.a.matcher(str).find();
            yb4Var.f.getClass();
            ba3 lb4Var = zFind ? new lb4() : new cr();
            ls4 ls4Var = yb4Var.a;
            rd6 rd6Var = yb4Var.c;
            kb4 kb4Var = yb4Var.b;
            lb4Var.a(ls4Var, yb4Var, rd6Var, kb4Var, kb4Var, kb4Var).a(str);
        }
    }

    @Override // yads.ls4
    public final void d() {
        this.m.d.a(defpackage.mx2.b);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        vx3 vx3VarA = this.n.a(i, i2);
        super.onMeasure(vx3VarA.a, vx3VarA.b);
    }

    public final void setAspectRatio(float f) {
        this.n = new l25(f);
    }

    public final void setClickListener(e00 e00Var) {
        this.m.h = e00Var;
    }

    public final void setPreloadingState(jk6 jk6Var) {
        this.l = jk6Var;
    }

    public vb4(Context context, AttributeSet attributeSet) {
        this(context, new xj6(), attributeSet);
    }

    public final void a(String str, bc4 bc4Var) {
        if (this.l instanceof ik6) {
            this.l = new hk6(bc4Var);
            yb4 yb4Var = this.m;
            vb4 vb4Var = yb4Var.a;
            gd6 gd6Var = yb4Var.c;
            kb4 kb4Var = yb4Var.b;
            wb4 wb4Var = new wb4(yb4Var);
            jb4 jb4Var = new jb4(vb4Var, null, 254);
            vb4Var.setId(2);
            jb4Var.l = wb4Var;
            jb4Var.p = gd6Var;
            jb4Var.n = kb4Var;
            jb4Var.m = kb4Var;
            jb4Var.o = kb4Var;
            vb4Var.setHtmlWebViewListener(new mb4(jb4Var));
            jb4Var.b(str);
        }
    }

    @Override // yads.ls4, yads.fa3
    public final void a() {
        super.a();
        jk6 jk6Var = this.l;
        hk6 hk6Var = jk6Var instanceof hk6 ? (hk6) jk6Var : null;
        if (hk6Var != null) {
            ub4 ub4Var = hk6Var.a;
            if (ub4Var != null) {
                ub4Var.b();
            }
            this.l = gk6.a;
        }
    }

    @Override // yads.ls4, yads.fa3
    public final void a(int i) {
        super.a(i);
        jk6 jk6Var = this.l;
        hk6 hk6Var = jk6Var instanceof hk6 ? (hk6) jk6Var : null;
        if (hk6Var != null) {
            ub4 ub4Var = hk6Var.a;
            if (ub4Var != null) {
                ub4Var.a();
            }
            stopLoading();
            this.l = ik6.a;
        }
    }
}
