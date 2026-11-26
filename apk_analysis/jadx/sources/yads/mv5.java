package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mv5 implements et4 {
    public final et4 b;
    public final String c;

    public mv5(String str, et4 et4Var) {
        this.b = et4Var;
        this.c = str;
    }

    @Override // yads.et4
    public final void b(Exception exc) {
        this.b.a(exc, this.c);
    }
}
