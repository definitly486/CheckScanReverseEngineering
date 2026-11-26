package yads;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ge6 {
    public final cm4 a;
    public final a15 b;

    public ge6(cm4 cm4Var, a15 a15Var) {
        this.a = cm4Var;
        this.b = a15Var;
    }

    public final void a(am4 am4Var) {
        am4Var.b.setVisibility(0);
        xd6 xd6Var = am4Var.a;
        a15 a15Var = this.b;
        defpackage.mb4 mb4Var = a15Var.d;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        a15Var.d = null;
        xd6Var.a.setVisibility(8);
        ImageView imageView = xd6Var.b;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        this.a.a(am4Var.c.b);
    }
}
