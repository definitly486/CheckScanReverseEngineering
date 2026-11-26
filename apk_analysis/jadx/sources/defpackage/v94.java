package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v94 implements Runnable {
    public final /* synthetic */ p94.c b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ p94 d;

    public v94(p94 p94Var, p94.c cVar, boolean z) {
        this.d = p94Var;
        this.b = cVar;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.d.v.o(this.b, this.c);
    }
}
