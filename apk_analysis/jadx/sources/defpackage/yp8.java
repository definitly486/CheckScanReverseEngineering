package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yp8 implements xp8 {
    public volatile wp8 a;
    public volatile wp8 b;

    @Override // defpackage.xp8
    public final void a(wp8 wp8Var) {
        this.a = wp8Var;
        this.b = null;
    }

    @Override // defpackage.xp8
    public final void b(int i, wp8 wp8Var) {
        wp8 wp8Var2;
        if (wp8Var == null) {
            wp8Var = this.a;
        }
        if (wp8Var != null) {
            wp8Var2 = new wp8(wp8Var.a, wp8Var.b, wp8Var.c, wp8Var.d, Integer.valueOf(i));
        } else {
            wp8Var2 = null;
        }
        this.b = wp8Var2;
    }

    @Override // defpackage.xp8
    public final wp8 c() {
        return this.b;
    }

    @Override // defpackage.xp8
    public final wp8 get() {
        return this.a;
    }
}
