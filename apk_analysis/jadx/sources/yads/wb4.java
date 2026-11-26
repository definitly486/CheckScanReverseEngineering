package yads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class wb4 implements rb4 {
    public final WeakReference a;

    public wb4(ha3 ha3Var) {
        this.a = new WeakReference(ha3Var);
    }

    @Override // yads.rb4
    public final void a(vb4 vb4Var, Map map) {
        ha3 ha3Var = (ha3) this.a.get();
        if (ha3Var != null) {
            ha3Var.a(vb4Var, map);
        }
    }

    @Override // yads.rb4
    public final void a(String str) {
        ha3 ha3Var = (ha3) this.a.get();
        if (ha3Var != null) {
            ha3Var.a(str);
        }
    }

    @Override // yads.rb4
    public final void a() {
        ha3 ha3Var = (ha3) this.a.get();
        if (ha3Var != null) {
            ha3Var.a();
        }
    }
}
