package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vg3<T, U> extends gg3<U> {
    public final zg3 c;
    public final xl3<? super T, ? extends dt6<? extends U>> d;
    public final boolean e = true;
    public final int f = Integer.MAX_VALUE;
    public final int g;

    public vg3(zg3 zg3Var, n08 n08Var, int i) {
        this.c = zg3Var;
        this.d = n08Var;
        this.g = i;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super U> wb8Var) {
        xl3<? super T, ? extends dt6<? extends U>> xl3Var = this.d;
        zg3 zg3Var = this.c;
        if (nh3.a(zg3Var, wb8Var, xl3Var)) {
            return;
        }
        zg3Var.a(new tg3.b(wb8Var, this.d, this.e, this.f, this.g));
    }
}
