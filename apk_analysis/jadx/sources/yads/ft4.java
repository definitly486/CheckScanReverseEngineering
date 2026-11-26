package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ft4 extends RuntimeException {
    public final ht4 b;
    public final rq3 c;
    public final String d;

    /* JADX WARN: Illegal instructions before constructor call */
    public ft4(ht4 ht4Var, String str, Exception exc, rq3 rq3Var, String str2, int i) {
        exc = (i & 4) != 0 ? null : exc;
        rq3Var = (i & 8) != 0 ? null : rq3Var;
        str2 = (i & 16) != 0 ? null : str2;
        super(str, exc);
        this.b = ht4Var;
        this.c = rq3Var;
        this.d = str2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ft4(String str, Exception exc, rq3 rq3Var, String str2) {
        super(str, exc);
        ht4 ht4Var = ht4.DEPENDENCY_FAILED;
        this.b = ht4Var;
        this.c = rq3Var;
        this.d = str2;
    }
}
