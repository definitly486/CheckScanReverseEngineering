package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ha4 extends rb4 {
    public static final /* synthetic */ long g = pz0.a.objectFieldOffset(ha4.class.getDeclaredField("_invoked$volatile"));
    private volatile /* synthetic */ int _invoked$volatile;
    public final pb4 f;

    public ha4(pb4 pb4Var) {
        this.f = pb4Var;
    }

    @Override // defpackage.rb4
    public final boolean k() {
        return true;
    }

    @Override // defpackage.rb4
    public final void l(Throwable th) {
        if (pz0.a.compareAndSwapInt(this, g, 0, 1)) {
            this.f.invoke(th);
        }
    }
}
