package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class y73 {
    public int a;
    public int b;
    public int c;
    public float d;

    public static void a(y73 y73Var, int i, int i2, float f, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        if ((i3 & 4) != 0) {
            f = 0.0f;
        }
        y73Var.b = Math.max(y73Var.b, i);
        y73Var.c = Math.max(y73Var.c, i2);
        y73Var.d = Math.max(y73Var.d, f);
    }

    public final int b() {
        return this.c;
    }

    public final boolean c() {
        return this.d > 0.0f;
    }

    public final int a() {
        return this.a;
    }
}
