package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class m50 {
    public boolean a;

    public m50() {
    }

    public final synchronized void a() {
        while (!this.a) {
            wait();
        }
    }

    public final synchronized void b() {
        boolean z = false;
        while (!this.a) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean c() {
        return this.a;
    }

    public final synchronized boolean d() {
        if (this.a) {
            return false;
        }
        this.a = true;
        notifyAll();
        return true;
    }

    public m50(int i) {
    }
}
