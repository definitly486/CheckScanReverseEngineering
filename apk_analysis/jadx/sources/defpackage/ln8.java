package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ln8 extends ll8 {
    public final Runnable d;

    public ln8(Runnable runnable, long j, boolean z) {
        super(j, z);
        this.d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.run();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.d;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(cd2.a(runnable));
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        return xp.e(sb, this.c ? "Blocking" : "Non-blocking", ']');
    }
}
