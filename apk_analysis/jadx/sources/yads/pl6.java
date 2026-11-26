package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pl6 implements v75 {
    public final List a;
    public final /* synthetic */ ql6 b;

    public pl6(ql6 ql6Var, List list) {
        this.b = ql6Var;
        this.a = list;
    }

    public final void a() {
        ql6 ql6Var = this.b;
        mc6 mc6Var = ql6Var.d;
        if (ql6Var.e != 0 || mc6Var == null) {
            return;
        }
        t5 t5Var = ql6Var.a;
        t5Var.a(s5.WRAPPERS_LOADING, t5Var.b, this.a);
        mc6Var.onSuccess(this.b.c);
    }

    @Override // yads.v75
    public final void onSuccess(Object obj) {
        ql6 ql6Var = this.b;
        ql6Var.e--;
        ql6Var.c.addAll((List) obj);
        a();
    }

    @Override // yads.v75
    public final void a(z96 z96Var) {
        this.b.e--;
        a();
    }
}
