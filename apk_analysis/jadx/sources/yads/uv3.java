package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uv3 {
    public static final Object c = new Object();
    public final oa4 a;
    public final z94 b;

    public uv3() {
        oa4 oa4Var;
        oa4 oa4Var2 = oa4.b;
        if (oa4Var2 == null) {
            synchronized (oa4.c) {
                oa4Var = oa4.b;
                if (oa4Var == null) {
                    oa4Var = new oa4();
                    oa4.b = oa4Var;
                }
            }
            oa4Var2 = oa4Var;
        }
        z94 z94VarA = y94.a();
        this.a = oa4Var2;
        this.b = z94VarA;
    }
}
