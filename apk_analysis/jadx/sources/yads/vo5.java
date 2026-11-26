package yads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class vo5 implements Comparator {
    public final /* synthetic */ wo5 b;
    public final /* synthetic */ xv5 c;
    public final /* synthetic */ fs2 d;

    public vo5(wo5 wo5Var, xv5 xv5Var, fs2 fs2Var) {
        this.b = wo5Var;
        this.c = xv5Var;
        this.d = fs2Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        wo5 wo5Var = this.b;
        int i = this.c.j;
        fs2 fs2Var = this.d;
        wo5Var.getClass();
        Integer numValueOf = Integer.valueOf(wo5.a(i, (x72) obj, fs2Var));
        wo5 wo5Var2 = this.b;
        int i2 = this.c.j;
        fs2 fs2Var2 = this.d;
        wo5Var2.getClass();
        return defpackage.pp1.a(numValueOf, Integer.valueOf(wo5.a(i2, (x72) obj2, fs2Var2)));
    }
}
