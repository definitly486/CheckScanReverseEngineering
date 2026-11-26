package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class nt implements tv4 {
    public final Object a;

    public nt() {
        this.a = new AtomicLong();
    }

    @Override // defpackage.tv4
    public void a() {
        ((AtomicLong) this.a).getAndAdd(1L);
    }

    public nt(th5 th5Var) {
        this.a = th5Var;
    }
}
