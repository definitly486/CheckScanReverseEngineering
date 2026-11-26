package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mc6 implements v75 {
    public final v75 a;
    public final Object b;
    public final /* synthetic */ nc6 c;

    public mc6(nc6 nc6Var, v75 v75Var, Object obj) {
        this.c = nc6Var;
        this.a = v75Var;
        this.b = obj;
    }

    public final void a() {
        if (!this.c.d.isEmpty()) {
            this.a.onSuccess(this.c.d);
            return;
        }
        fn2 fn2Var = new fn2();
        v75 v75Var = this.a;
        String message = fn2Var.getMessage();
        if (message == null) {
            message = "Ad request completed successfully, but there are no ads available.";
        }
        v75Var.a(new z96(message));
    }

    @Override // yads.v75
    public final void onSuccess(Object obj) {
        this.c.c.getClass();
        kc6 kc6VarA = lc6.a((List) obj);
        this.c.d.addAll(kc6VarA.a);
        List list = kc6VarA.b;
        if (list.isEmpty()) {
            a();
        } else {
            nc6 nc6Var = this.c;
            nc6Var.b.a(nc6Var.a, list, this, this.b);
        }
    }

    @Override // yads.v75
    public final void a(z96 z96Var) {
        a();
    }
}
