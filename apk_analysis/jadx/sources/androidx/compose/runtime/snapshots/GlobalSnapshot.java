package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.snapshots.tooling.SnapshotInstanceObservers;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserver;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import defpackage.b36;
import defpackage.eg1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y83;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalSnapshot extends MutableSnapshot {
    public static final int $stable = 8;

    public GlobalSnapshot(long j, SnapshotIdSet snapshotIdSet) {
        super(j, snapshotIdSet, null, new eg1(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(Object obj) {
        synchronized (SnapshotKt.getLock()) {
            List list = SnapshotKt.globalWriteObservers;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ((nl3) list.get(i)).invoke(obj);
            }
        }
        return j59.a;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public SnapshotApplyResult apply() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        synchronized (SnapshotKt.getLock()) {
            releasePinnedSnapshotLocked$runtime();
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: nestedActivated$runtime, reason: merged with bridge method [inline-methods] */
    public Void mo5627nestedActivated$runtime(Snapshot snapshot) {
        throw y83.d();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: nestedDeactivated$runtime, reason: merged with bridge method [inline-methods] */
    public Void mo5628nestedDeactivated$runtime(Snapshot snapshot) {
        throw y83.d();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
        SnapshotKt.advanceGlobalSnapshot();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public MutableSnapshot takeNestedMutableSnapshot(final nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
        final nl3<Object, j59> nl3Var3;
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        PersistentList persistentList = SnapshotObserverKt.observers;
        if (persistentList != null) {
            b36<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> b36VarMergeObservers = SnapshotObserverKt.mergeObservers(persistentList, null, false, nl3Var, nl3Var2);
            SnapshotInstanceObservers snapshotInstanceObservers = b36VarMergeObservers.b;
            nl3<Object, j59> readObserver = snapshotInstanceObservers.getReadObserver();
            nl3<Object, j59> writeObserver = snapshotInstanceObservers.getWriteObserver();
            map = b36VarMergeObservers.c;
            nl3Var = readObserver;
            nl3Var3 = writeObserver;
        } else {
            nl3Var3 = nl3Var2;
            map = null;
        }
        MutableSnapshot mutableSnapshot = (MutableSnapshot) SnapshotKt.takeNewSnapshot(new nl3<SnapshotIdSet, MutableSnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedMutableSnapshot$1$1
            @Override // defpackage.nl3
            public final MutableSnapshot invoke(SnapshotIdSet snapshotIdSet) {
                long j;
                synchronized (SnapshotKt.getLock()) {
                    j = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId++;
                }
                return new MutableSnapshot(j, snapshotIdSet, nl3Var, nl3Var3);
            }
        });
        if (persistentList != null) {
            SnapshotObserverKt.dispatchCreatedObservers(persistentList, null, mutableSnapshot, map);
        }
        return mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public Snapshot takeNestedSnapshot(final nl3<Object, j59> nl3Var) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        PersistentList persistentList = SnapshotObserverKt.observers;
        if (persistentList != null) {
            b36<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> b36VarMergeObservers = SnapshotObserverKt.mergeObservers(persistentList, null, true, nl3Var, null);
            SnapshotInstanceObservers snapshotInstanceObservers = b36VarMergeObservers.b;
            nl3<Object, j59> readObserver = snapshotInstanceObservers.getReadObserver();
            snapshotInstanceObservers.getWriteObserver();
            map = b36VarMergeObservers.c;
            nl3Var = readObserver;
        } else {
            map = null;
        }
        ReadonlySnapshot readonlySnapshot = (ReadonlySnapshot) SnapshotKt.takeNewSnapshot(new nl3<SnapshotIdSet, ReadonlySnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedSnapshot$1$1
            @Override // defpackage.nl3
            public final ReadonlySnapshot invoke(SnapshotIdSet snapshotIdSet) {
                long j;
                synchronized (SnapshotKt.getLock()) {
                    j = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId++;
                }
                return new ReadonlySnapshot(j, snapshotIdSet, nl3Var);
            }
        });
        if (persistentList != null) {
            SnapshotObserverKt.dispatchCreatedObservers(persistentList, null, readonlySnapshot, map);
        }
        return readonlySnapshot;
    }
}
