package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class p75 implements Runnable {
    public final /* synthetic */ String b;
    public final /* synthetic */ long c;
    public final /* synthetic */ r75 d;

    public p75(r75 r75Var, String str, long j) {
        this.d = r75Var;
        this.b = str;
        this.c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.b.a(this.b, this.c);
        r75 r75Var = this.d;
        ki6 ki6Var = r75Var.b;
        r75Var.toString();
        ki6Var.a();
    }
}
