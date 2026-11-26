package androidx.compose.runtime;

import defpackage.a31;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.zya;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Latch {
    public static final int $stable = 8;
    private final Object lock = new Object();
    private List<e02<j59>> awaiters = new ArrayList();
    private List<e02<j59>> spareList = new ArrayList();
    private boolean _isOpen = true;

    public final Object await(e02<? super j59> e02Var) throws Throwable {
        if (isOpen()) {
            return j59.a;
        }
        final c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        synchronized (this.lock) {
            this.awaiters.add(c31Var);
        }
        c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.compose.runtime.Latch$await$2$2
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Object obj = this.this$0.lock;
                Latch latch = this.this$0;
                a31<j59> a31Var = c31Var;
                synchronized (obj) {
                    latch.awaiters.remove(a31Var);
                    j59 j59Var = j59.a;
                }
            }

            @Override // defpackage.nl3
            public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                invoke2(th);
                return j59.a;
            }
        });
        Object objS = c31Var.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    public final void closeLatch() {
        synchronized (this.lock) {
            this._isOpen = false;
            j59 j59Var = j59.a;
        }
    }

    public final boolean isOpen() {
        boolean z;
        synchronized (this.lock) {
            z = this._isOpen;
        }
        return z;
    }

    public final void openLatch() {
        synchronized (this.lock) {
            try {
                if (isOpen()) {
                    return;
                }
                List<e02<j59>> list = this.awaiters;
                this.awaiters = this.spareList;
                this.spareList = list;
                this._isOpen = true;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    list.get(i).resumeWith(j59.a);
                }
                list.clear();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <R> R withClosed(ll3<? extends R> ll3Var) {
        closeLatch();
        try {
            return ll3Var.invoke();
        } finally {
            openLatch();
        }
    }
}
