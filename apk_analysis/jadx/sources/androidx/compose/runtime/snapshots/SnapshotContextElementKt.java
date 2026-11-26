package androidx.compose.runtime.snapshots;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotContextElementKt {
    public static final SnapshotContextElement asContextElement(Snapshot snapshot) {
        return new SnapshotContextElementImpl(snapshot);
    }
}
