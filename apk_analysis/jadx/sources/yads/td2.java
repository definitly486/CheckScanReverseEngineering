package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class td2 extends defpackage.r0 {
    public final defpackage.fr b;
    public final /* synthetic */ wd2 c;

    public td2(wd2 wd2Var, br0 br0Var, fs2 fs2Var) {
        this.c = wd2Var;
        defpackage.fr frVar = new defpackage.fr();
        cn1 cn1Var = new cn1(br0Var, fs2Var);
        frVar.addLast(jf2.b(br0Var) ? new sd2(cn1Var, wd2Var.c, wd2Var.d) : new ud2(cn1Var));
        this.b = frVar;
    }

    public final cn1 a() {
        vd2 ud2Var;
        vd2 vd2Var = (vd2) this.b.j();
        if (vd2Var == null) {
            return null;
        }
        cn1 cn1VarA = vd2Var.a();
        if (cn1VarA == null) {
            this.b.removeLast();
            return a();
        }
        if (cn1VarA == vd2Var.b() || !jf2.b(cn1VarA.a) || this.b.size() >= Integer.MAX_VALUE) {
            return cn1VarA;
        }
        defpackage.fr frVar = this.b;
        if (jf2.b(cn1VarA.a)) {
            wd2 wd2Var = this.c;
            ud2Var = new sd2(cn1VarA, wd2Var.c, wd2Var.d);
        } else {
            ud2Var = new ud2(cn1VarA);
        }
        frVar.addLast(ud2Var);
        return a();
    }

    @Override // defpackage.r0
    public final void computeNext() {
        cn1 cn1VarA = a();
        if (cn1VarA != null) {
            setNext(cn1VarA);
        } else {
            done();
        }
    }
}
