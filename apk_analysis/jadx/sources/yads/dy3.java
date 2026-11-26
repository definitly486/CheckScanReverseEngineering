package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dy3 {
    public final f80 a;

    public dy3(f80 f80Var) {
        this.a = f80Var;
    }

    public final Float a() {
        int i;
        int i2;
        f80 f80Var = this.a;
        p80 p80Var = f80Var.a;
        i80 i80Var = f80Var.d;
        if (p80Var != null) {
            return Float.valueOf(p80Var.a);
        }
        if (i80Var == null || (i = i80Var.c) <= 0 || (i2 = i80Var.d) <= 0) {
            return null;
        }
        return Float.valueOf(i / i2);
    }
}
