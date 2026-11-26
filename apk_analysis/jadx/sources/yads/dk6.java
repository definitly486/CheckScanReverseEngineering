package yads;

import defpackage.j59;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class dk6 {
    public final vb4 a;
    public final nl5 b = new nl5();

    public dk6(vb4 vb4Var) {
        this.a = vb4Var;
    }

    public final void a(Map map) {
        nl5 nl5Var = this.b;
        synchronized (nl5Var.a) {
            if (nl5Var.b) {
                return;
            }
            nl5Var.b = true;
            j59 j59Var = j59.a;
            a(this, map);
        }
    }

    public static final void a(dk6 dk6Var, Map map) {
        dk6Var.a.setVisibility(0);
        vb4 vb4Var = dk6Var.a;
        ha3 ha3Var = vb4Var.f;
        if (ha3Var != null) {
            ha3Var.a(vb4Var, map);
        }
    }
}
