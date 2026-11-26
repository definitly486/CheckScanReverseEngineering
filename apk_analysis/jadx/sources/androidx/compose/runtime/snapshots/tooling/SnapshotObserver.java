package androidx.compose.runtime.snapshots.tooling;

import androidx.compose.runtime.snapshots.Snapshot;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface SnapshotObserver {
    default void onApplied(Snapshot snapshot, Set<? extends Object> set) {
    }

    default void onCreated(Snapshot snapshot, Snapshot snapshot2, SnapshotInstanceObservers snapshotInstanceObservers) {
    }

    default SnapshotInstanceObservers onPreCreate(Snapshot snapshot, boolean z) {
        return null;
    }

    default void onPreDispose(Snapshot snapshot) {
    }
}
