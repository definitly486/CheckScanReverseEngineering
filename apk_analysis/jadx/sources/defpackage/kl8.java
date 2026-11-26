package defpackage;

import android.os.Handler;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class kl8<T> {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public volatile k57<? extends T> c;

    public final class a {
        public a() {
        }
    }

    public static void b(final ll3 ll3Var) {
        ((Handler) po8.a.getValue()).post(new Runnable() { // from class: zk8
            @Override // java.lang.Runnable
            public final void run() {
                ll3Var.invoke();
            }
        });
    }

    public final void a(kk2 kk2Var, x3 x3Var) {
        synchronized (this) {
            try {
                k57<? extends T> k57Var = this.c;
                if (k57Var == null) {
                    this.a.add(new tr4(kk2Var, x3Var));
                } else {
                    Object obj = k57Var.b;
                    Object obj2 = obj instanceof k57.a ? null : obj;
                    Throwable thA = k57.a(obj);
                    if (obj2 != null && kk2Var != null) {
                        b(new bl8(kk2Var, obj2));
                    }
                    if (thA != null && x3Var != null) {
                        b(new cl8(x3Var, thA));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
