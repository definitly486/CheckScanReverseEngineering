package defpackage;

import java.io.EOFException;

/* JADX INFO: loaded from: classes5.dex */
public final class s1 implements Runnable {
    public final /* synthetic */ t1.a b;

    public s1(t1.a aVar) {
        this.b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws EOFException {
        t1.a aVar = this.b;
        try {
            r46.c();
            try {
                a34 a34Var = r46.a;
                a34Var.getClass();
                aVar.a.m();
                a34Var.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            ((kv5.b) aVar).n(th3);
        }
    }
}
