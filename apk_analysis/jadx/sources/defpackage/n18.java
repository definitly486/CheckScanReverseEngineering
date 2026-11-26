package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class n18 implements Runnable {
    public final /* synthetic */ boolean b;
    public final /* synthetic */ m18.c.a c;

    public n18(m18.c.a aVar, boolean z) {
        this.c = aVar;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eb9.a();
        m18.c cVar = m18.c.this;
        boolean z = cVar.a;
        boolean z2 = this.b;
        cVar.a = z2;
        if (z != z2) {
            cVar.b.a(z2);
        }
    }
}
