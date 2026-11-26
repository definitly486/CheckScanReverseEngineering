package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rc6 implements v75 {
    public final /* synthetic */ defpackage.c31 a;

    public rc6(defpackage.c31 c31Var) {
        this.a = c31Var;
    }

    @Override // yads.v75
    public final void a(z96 z96Var) {
        z96Var.a();
        if (this.a.t() instanceof defpackage.no5) {
            this.a.resumeWith(new oc6(z96Var));
        }
    }

    @Override // yads.v75
    public final void onSuccess(Object obj) {
        List list = (List) obj;
        if (this.a.t() instanceof defpackage.no5) {
            this.a.resumeWith(new pc6(list));
        }
    }
}
