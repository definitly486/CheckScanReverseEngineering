package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class a78 extends r1<z68<?>> {
    public final AtomicReference<Object> a = new AtomicReference<>(null);

    @Override // defpackage.r1
    public final boolean a(p1 p1Var) {
        AtomicReference<Object> atomicReference = this.a;
        if (atomicReference.get() != null) {
            return false;
        }
        atomicReference.set(px.e);
        return true;
    }

    @Override // defpackage.r1
    public final e02[] b(p1 p1Var) {
        this.a.set(null);
        return q1.b;
    }
}
