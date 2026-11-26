package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class kp7 extends AtomicReference<cp2> implements cp2 {
    public kp7(kp7 kp7Var) {
        lazySet(kp7Var);
    }

    @Override // defpackage.cp2
    public final void dispose() {
        ip2.a(this);
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return ip2.d(get());
    }
}
