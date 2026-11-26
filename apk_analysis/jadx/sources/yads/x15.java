package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class x15 implements g14 {
    public final vc0 a;
    public final q15 b;
    public sk0 c;
    public final ll0 d;
    public final int e;

    public x15(vc0 vc0Var, zk0 zk0Var) {
        defpackage.vp0 vp0Var = new defpackage.vp0(zk0Var, 4);
        sk0 sk0Var = new sk0();
        ll0 ll0Var = new ll0();
        this.a = vc0Var;
        this.b = vp0Var;
        this.c = sk0Var;
        this.d = ll0Var;
        this.e = 1048576;
    }

    @Override // yads.g14
    public final cs a(p04 p04Var) {
        p04Var.c.getClass();
        p04Var.c.getClass();
        return new y15(p04Var, this.a, this.b, this.c.a(p04Var), this.d, this.e);
    }

    @Override // yads.g14
    public final g14 a(sk0 sk0Var) {
        if (sk0Var != null) {
            this.c = sk0Var;
            return this;
        }
        defpackage.o2.d("MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        return null;
    }

    public static /* synthetic */ ov a(bt2 bt2Var, rw4 rw4Var) {
        return new ov(bt2Var);
    }
}
