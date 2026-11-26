package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class h14 extends b14 {
    public h14(Object obj) {
        super(obj, -1, -1, -1L, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1, types: [yads.b14] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public final h14 a(Object obj) {
        boolean zEquals = this.a.equals(obj);
        ?? b14Var = this;
        if (!zEquals) {
            b14Var = new b14(obj, this.b, this.c, this.d, this.e);
        }
        return new h14((b14) b14Var);
    }

    public h14(Object obj, long j) {
        super(obj, -1, -1, j, -1);
    }

    public h14(Object obj, long j, int i) {
        super(obj, -1, -1, j, i);
    }

    public h14(Object obj, int i, int i2, long j) {
        super(obj, i, i2, j, -1);
    }

    public h14(b14 b14Var) {
        super(b14Var);
    }
}
