package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dw implements Runnable {
    public final /* synthetic */ r75 b;
    public final /* synthetic */ ew c;

    public dw(ew ewVar, r75 r75Var) {
        this.c = ewVar;
        this.b = r75Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.c.c.put(this.b);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
