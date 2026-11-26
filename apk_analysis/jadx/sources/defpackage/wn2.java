package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wn2 extends qj3 {
    public boolean c;
    public final /* synthetic */ un2 d;
    public final /* synthetic */ un2.b e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wn2(v48 v48Var, un2 un2Var, un2.b bVar) {
        super(v48Var);
        this.d = un2Var;
        this.e = bVar;
    }

    @Override // defpackage.qj3, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        if (this.c) {
            return;
        }
        this.c = true;
        un2 un2Var = this.d;
        un2.b bVar = this.e;
        synchronized (un2Var) {
            try {
                int i = bVar.h - 1;
                bVar.h = i;
                if (i == 0 && bVar.f) {
                    un2Var.V(bVar);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
