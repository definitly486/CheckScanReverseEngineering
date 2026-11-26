package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dh8 implements Runnable {
    public final /* synthetic */ ch8.b b;
    public final /* synthetic */ j06.b c;
    public final /* synthetic */ long d;
    public final /* synthetic */ ch8 e;

    public dh8(ch8 ch8Var, ch8.b bVar, j06.b bVar2, long j) {
        this.e = ch8Var;
        this.b = bVar;
        this.c = bVar2;
        this.d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.execute(this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c.toString());
        sb.append("(scheduled in SynchronizationContext with delay of ");
        return k2.b(this.d, ")", sb);
    }
}
