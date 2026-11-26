package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zt7 implements Runnable {
    public final /* synthetic */ yt7.b b;
    public final /* synthetic */ yt7.c c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ yt7 e;

    public zt7(yt7 yt7Var, yt7.b bVar, yt7.c cVar, Object obj) {
        this.e = yt7Var;
        this.b = bVar;
        this.c = cVar;
        this.d = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.e) {
            try {
                if (this.b.b != 0) {
                    return;
                }
                this.e.a.remove(this.c);
                if (this.e.a.isEmpty()) {
                    this.e.b.shutdown();
                    this.e.b = null;
                }
                this.c.b(this.d);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
