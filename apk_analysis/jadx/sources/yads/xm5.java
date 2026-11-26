package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xm5 implements fm4 {
    public final List a;

    public xm5(List list) {
        this.a = list;
    }

    @Override // yads.fm4
    public final void a(dh4 dh4Var, g00 g00Var) {
        List<ak> list = this.a;
        if (list != null) {
            ta taVar = new ta(dh4Var, g00Var);
            for (ak akVar : list) {
                bk bkVarA = dh4Var.a(akVar);
                if (bkVarA == null) {
                    bkVarA = null;
                }
                if (bkVarA != null) {
                    bkVarA.c(akVar.c);
                    bkVarA.a(akVar, taVar);
                }
            }
        }
    }

    @Override // yads.fm4
    public final void a(dh4 dh4Var) {
    }

    @Override // yads.fm4
    public final void a() {
    }
}
