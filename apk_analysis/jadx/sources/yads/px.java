package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class px implements pv5 {
    public final gf3 a;

    public px(gf3 gf3Var, nv5 nv5Var) {
        this.a = gf3Var;
    }

    @Override // yads.pv5
    public final xq3 get(String str) {
        xq3 xq3Var = (xq3) this.a.a.get(str);
        if (xq3Var != null) {
            return xq3Var;
        }
        return null;
    }
}
