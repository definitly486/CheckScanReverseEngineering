package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ud2 implements vd2 {
    public final cn1 a;
    public boolean b;

    public ud2(cn1 cn1Var) {
        this.a = cn1Var;
    }

    @Override // yads.vd2
    public final cn1 a() {
        if (this.b) {
            return null;
        }
        this.b = true;
        return this.a;
    }

    @Override // yads.vd2
    public final cn1 b() {
        return this.a;
    }
}
