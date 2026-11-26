package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class pc3 implements yc3 {
    public final /* synthetic */ sc3 a;
    public final /* synthetic */ defpackage.c31 b;
    public final /* synthetic */ String c;

    public pc3(sc3 sc3Var, defpackage.c31 c31Var, String str) {
        this.a = sc3Var;
        this.b = c31Var;
        this.c = str;
    }

    @Override // yads.yc3
    public final void a(xc3 xc3Var, boolean z) {
        Bitmap bitmap = xc3Var.a;
        if (bitmap != null) {
            sc3 sc3Var = this.a;
            defpackage.c31 c31Var = this.b;
            ac3 ac3Var = new ac3(this.c, bitmap);
            sc3Var.getClass();
            if (c31Var.t() instanceof defpackage.no5) {
                c31Var.resumeWith(ac3Var);
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        sc3 sc3Var2 = this.a;
        defpackage.c31 c31Var2 = this.b;
        sc3Var2.getClass();
        if (c31Var2.t() instanceof defpackage.no5) {
            c31Var2.resumeWith(null);
        }
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        sc3 sc3Var = this.a;
        defpackage.c31 c31Var = this.b;
        sc3Var.getClass();
        if (c31Var.t() instanceof defpackage.no5) {
            c31Var.resumeWith(null);
        }
    }
}
