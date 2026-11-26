package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class w80 extends p54 {
    @Override // defpackage.p54
    public final zn5 b() {
        int i = this.d + 1;
        this.d = i;
        if (c() != '[') {
            return null;
        }
        this.d++;
        dq8 dq8VarF = f("![");
        z05 z05Var = this.a;
        pt0 pt0Var = z05Var.j;
        pt0 pt0Var2 = new pt0(dq8VarF, i, pt0Var, z05Var.i, true);
        if (pt0Var != null) {
            pt0Var.g = true;
        }
        z05Var.j = pt0Var2;
        return dq8VarF;
    }

    @Override // defpackage.p54
    public final char d() {
        return '!';
    }
}
