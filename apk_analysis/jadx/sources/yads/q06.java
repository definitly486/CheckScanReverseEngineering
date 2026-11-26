package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q06 {
    public final int a;
    public final n65[] b;
    public final er2[] c;
    public final m16 d;
    public final sw3 e;

    public q06(n65[] n65VarArr, er2[] er2VarArr, m16 m16Var, sw3 sw3Var) {
        this.b = n65VarArr;
        this.c = (er2[]) er2VarArr.clone();
        this.d = m16Var;
        this.e = sw3Var;
        this.a = n65VarArr.length;
    }

    public final boolean a(int i) {
        return this.b[i] != null;
    }
}
