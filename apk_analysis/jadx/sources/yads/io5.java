package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class io5 implements nu3 {
    @Override // yads.nu3
    public final void a() {
        synchronized (jo5.a) {
            Object obj = jo5.b;
            synchronized (obj) {
                if (jo5.c) {
                    return;
                }
                long jA = jo5.a();
                synchronized (obj) {
                    jo5.d = jA;
                    jo5.c = true;
                }
            }
        }
    }

    @Override // yads.nu3
    public final void b() {
    }
}
