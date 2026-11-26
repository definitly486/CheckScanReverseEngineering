package defpackage;

import com.google.android.gms.common.api.internal.zaar;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes4.dex */
public abstract class jz1 implements Runnable {
    public final /* synthetic */ int b;
    public final Object c;

    public /* synthetic */ jz1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    public abstract void a();

    public abstract void b();

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ky1 ky1Var = (ky1) obj;
                ky1 ky1VarA = ky1Var.a();
                try {
                    a();
                    return;
                } finally {
                    ky1Var.c(ky1VarA);
                }
            default:
                zaar zaarVar = (zaar) obj;
                Lock lock = zaarVar.b;
                lock.lock();
                try {
                    try {
                        if (!Thread.interrupted()) {
                            b();
                        }
                        break;
                    } catch (RuntimeException e) {
                        qja qjaVar = zaarVar.a.n;
                        qjaVar.sendMessage(qjaVar.obtainMessage(2, e));
                        break;
                    }
                    return;
                } finally {
                    lock.unlock();
                }
        }
    }
}
