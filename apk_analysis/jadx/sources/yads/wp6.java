package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wp6 implements Runnable {
    public final /* synthetic */ aq6 b;

    public wp6(aq6 aq6Var) {
        this.b = aq6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float f;
        aq6 aq6Var = this.b;
        int streamVolume = aq6Var.c.getStreamVolume(3);
        int streamMaxVolume = aq6Var.c.getStreamMaxVolume(3);
        aq6Var.d.getClass();
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            f = 0.0f;
        } else {
            f = streamVolume / streamMaxVolume;
            if (f > 1.0f) {
                f = 1.0f;
            }
        }
        this.b.g.set(false);
        if (((Float) this.b.f.getAndSet(Float.valueOf(f))).floatValue() != f) {
            this.b.a.post(new up6(this, f));
        }
    }
}
