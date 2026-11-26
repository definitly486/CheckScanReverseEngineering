package androidx.datastore.core;

import defpackage.nl3;
import defpackage.sj0;

/* JADX INFO: loaded from: classes2.dex */
public final class CloseableKt {
    public static final <T extends Closeable, R> R use(T t, nl3<? super T, ? extends R> nl3Var) throws Throwable {
        t.getClass();
        nl3Var.getClass();
        try {
            R rInvoke = nl3Var.invoke(t);
            try {
                t.close();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            if (th == null) {
                return rInvoke;
            }
            throw th;
        } catch (Throwable th2) {
            try {
                t.close();
            } catch (Throwable th3) {
                sj0.c(th2, th3);
            }
            throw th2;
        }
    }
}
