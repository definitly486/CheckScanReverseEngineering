package androidx.compose.runtime.snapshots;

import defpackage.bm3;
import defpackage.it8;
import defpackage.o22;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotContextElementImpl implements SnapshotContextElement, it8<Snapshot> {
    public static final int $stable = 8;
    private final Snapshot snapshot;

    public SnapshotContextElementImpl(Snapshot snapshot) {
        this.snapshot = snapshot;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) SnapshotContextElement.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) SnapshotContextElement.DefaultImpls.get(this, bVar);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, o22.a
    public o22.b<?> getKey() {
        return SnapshotContextElement.Key;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return SnapshotContextElement.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotContextElement, defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return SnapshotContextElement.DefaultImpls.plus(this, o22Var);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.it8
    public Snapshot updateThreadContext(o22 o22Var) {
        return this.snapshot.unsafeEnter();
    }

    @Override // defpackage.it8
    public void restoreThreadContext(o22 o22Var, Snapshot snapshot) {
        this.snapshot.unsafeLeave(snapshot);
    }
}
