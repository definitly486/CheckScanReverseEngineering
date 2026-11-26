package yads;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes6.dex */
public final class u65 {
    public final nf6 a;
    public final au b;
    public final w65 c;
    public final s65 d;

    public u65(nf6 nf6Var, sl4 sl4Var) {
        au auVar = new au();
        w65 w65Var = new w65(nf6Var, sl4Var);
        s65 s65Var = new s65();
        this.a = nf6Var;
        this.b = auVar;
        this.c = w65Var;
        this.d = s65Var;
    }

    public final void a() {
        am4 am4Var = (am4) this.a.b();
        if (am4Var != null) {
            v65 v65Var = am4Var.c.a;
            w65 w65Var = this.c;
            w65Var.getClass();
            v65Var.setVisibility(4);
            v65Var.a.setOnClickListener(w65Var.a);
            Bitmap bitmap = am4Var.b.getBitmap();
            if (bitmap != null) {
                au auVar = this.b;
                auVar.a.execute(new zt(bitmap, new t65(this, am4Var, v65Var), auVar.b, auVar.c));
            }
        }
    }
}
