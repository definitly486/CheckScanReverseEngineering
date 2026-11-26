package androidx.paging;

import androidx.paging.internal.SynchronizedLock;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class InvalidateCallbackTracker<T> {
    private final nl3<T, j59> callbackInvoker;
    private final List<T> callbacks;
    private boolean invalid;
    private final ll3<Boolean> invalidGetter;
    private final SynchronizedLock lock;

    /* JADX WARN: Multi-variable type inference failed */
    public InvalidateCallbackTracker(nl3<? super T, j59> nl3Var, ll3<Boolean> ll3Var) {
        nl3Var.getClass();
        this.callbackInvoker = nl3Var;
        this.invalidGetter = ll3Var;
        this.lock = new SynchronizedLock();
        this.callbacks = new ArrayList();
    }

    public final int callbackCount$paging_common() {
        return this.callbacks.size();
    }

    public final boolean getInvalid$paging_common() {
        return this.invalid;
    }

    public final boolean invalidate$paging_common() {
        if (this.invalid) {
            return false;
        }
        synchronized (this.lock) {
            if (this.invalid) {
                return false;
            }
            this.invalid = true;
            List listT0 = qn1.t0(this.callbacks);
            this.callbacks.clear();
            nl3<T, j59> nl3Var = this.callbackInvoker;
            Iterator<T> it = listT0.iterator();
            while (it.hasNext()) {
                nl3Var.invoke(it.next());
            }
            return true;
        }
    }

    public final void registerInvalidatedCallback$paging_common(T t) {
        ll3<Boolean> ll3Var = this.invalidGetter;
        boolean z = true;
        if (ll3Var != null && ll3Var.invoke().booleanValue()) {
            invalidate$paging_common();
        }
        if (this.invalid) {
            this.callbackInvoker.invoke(t);
            return;
        }
        synchronized (this.lock) {
            if (!this.invalid) {
                this.callbacks.add(t);
                z = false;
            }
        }
        if (z) {
            this.callbackInvoker.invoke(t);
        }
    }

    public final void unregisterInvalidatedCallback$paging_common(T t) {
        synchronized (this.lock) {
            this.callbacks.remove(t);
        }
    }

    public /* synthetic */ InvalidateCallbackTracker(nl3 nl3Var, ll3 ll3Var, int i, jh2 jh2Var) {
        this(nl3Var, (i & 2) != 0 ? null : ll3Var);
    }
}
