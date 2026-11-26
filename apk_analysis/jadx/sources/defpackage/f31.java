package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class f31 extends AtomicReference<z21> implements cp2 {
    @Override // defpackage.cp2
    public final void dispose() {
        z21 andSet;
        if (get() == null || (andSet = getAndSet(null)) == null) {
            return;
        }
        try {
            andSet.cancel();
        } catch (Exception e) {
            m13.d(e);
            d97.b(e);
        }
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return get() == null;
    }
}
