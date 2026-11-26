package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nd5 implements n5 {
    public final d9 a;

    public nd5(d9 d9Var) {
        this.a = d9Var;
    }

    @Override // yads.n5
    public final y2 a() {
        return new pd5();
    }

    @Override // yads.n5
    public final g9 b() {
        return new od5(this.a);
    }
}
