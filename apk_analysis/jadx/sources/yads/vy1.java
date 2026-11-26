package yads;

import defpackage.jp7;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class vy1 implements i36 {
    public final /* synthetic */ uy1 a;
    public final /* synthetic */ gz1 b;
    public final /* synthetic */ ao2 c;
    public final /* synthetic */ fs2 d;

    public vy1(uy1 uy1Var, gz1 gz1Var, ao2 ao2Var, fs2 fs2Var) {
        this.a = uy1Var;
        this.b = gz1Var;
        this.c = ao2Var;
        this.d = fs2Var;
    }

    @Override // yads.i36
    public final void a(String str) {
        CharSequence charSequence;
        pa3.a aVar = new pa3.a(jp7.k(defpackage.qn1.K(this.a.A), new defpackage.kl1(3, this.d, str)));
        gz1 gz1Var = this.b;
        if (aVar.hasNext()) {
            ty1 ty1Var = (ty1) aVar.next();
            if (aVar.hasNext()) {
                this.c.a(new Throwable(defpackage.me0.c("Multiple options found with value = \"", str, "\", selecting first one")));
            }
            as2 as2Var = ty1Var.a;
            if (as2Var == null) {
                as2Var = ty1Var.b;
            }
            charSequence = (CharSequence) as2Var.a(this.d);
        } else {
            this.c.a(new Throwable(defpackage.me0.c("No option found with value = \"", str, "\"")));
            charSequence = "";
        }
        gz1Var.setText(charSequence);
    }

    public static final boolean a(fs2 fs2Var, String str, ty1 ty1Var) {
        return defpackage.aa4.e(ty1Var.b.a(fs2Var), str);
    }

    @Override // yads.i36
    public final void a(nl3 nl3Var) {
        this.b.setValueUpdater(nl3Var);
    }
}
