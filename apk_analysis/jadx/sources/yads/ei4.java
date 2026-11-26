package yads;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class ei4 implements on0 {
    public final fi4 a;

    public ei4(sj4 sj4Var, gd6 gd6Var) {
        el4 el4Var = sj4Var.a;
        this.a = el4Var != null ? new fi4(el4Var, gd6Var) : null;
    }

    @Override // yads.on0
    public final void a(ViewGroup viewGroup) {
        fi4 fi4Var = this.a;
        if (fi4Var != null) {
            fi4Var.a.a.add(fi4Var);
        }
    }

    @Override // yads.on0
    public final void c() {
        fi4 fi4Var = this.a;
        if (fi4Var != null) {
            fi4Var.a.a.remove(fi4Var);
            fi4Var.b = null;
        }
    }
}
