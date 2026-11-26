package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class hy implements Runnable {
    public final i80 b;

    public hy(i80 i80Var) {
        this.b = i80Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.c();
    }
}
