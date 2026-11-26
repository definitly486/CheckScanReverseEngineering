package androidx.compose.runtime.snapshots.tooling;

import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import defpackage.b36;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ox2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotObserverKt {
    private static PersistentList<? extends SnapshotObserver> observers;

    public static final <R extends Snapshot> R creatingSnapshot(Snapshot snapshot, nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2, boolean z, bm3<? super nl3<Object, j59>, ? super nl3<Object, j59>, ? extends R> bm3Var) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        PersistentList persistentList = observers;
        if (persistentList != null) {
            b36<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> b36VarMergeObservers = mergeObservers(persistentList, snapshot, z, nl3Var, nl3Var2);
            SnapshotInstanceObservers snapshotInstanceObservers = b36VarMergeObservers.b;
            nl3<Object, j59> readObserver = snapshotInstanceObservers.getReadObserver();
            nl3Var2 = snapshotInstanceObservers.getWriteObserver();
            map = b36VarMergeObservers.c;
            nl3Var = readObserver;
        } else {
            map = null;
        }
        R rInvoke = bm3Var.invoke(nl3Var, nl3Var2);
        if (persistentList != null) {
            dispatchCreatedObservers(persistentList, snapshot, rInvoke, map);
        }
        return rInvoke;
    }

    public static final void dispatchCreatedObservers(PersistentList<? extends SnapshotObserver> persistentList, Snapshot snapshot, Snapshot snapshot2, Map<SnapshotObserver, SnapshotInstanceObservers> map) {
        int size = persistentList.size();
        for (int i = 0; i < size; i++) {
            SnapshotObserver snapshotObserver = persistentList.get(i);
            snapshotObserver.onCreated(snapshot2, snapshot, map != null ? map.get(snapshotObserver) : null);
        }
    }

    public static final void dispatchObserverOnApplied(Snapshot snapshot, ScatterSet<StateObject> scatterSet) {
        Set<? extends Object> setWrapIntoSet;
        PersistentList<? extends SnapshotObserver> persistentList = observers;
        if (persistentList == null || persistentList.isEmpty()) {
            return;
        }
        if (scatterSet == null || (setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(scatterSet)) == null) {
            setWrapIntoSet = ox2.b;
        }
        int size = persistentList.size();
        for (int i = 0; i < size; i++) {
            persistentList.get(i).onApplied(snapshot, setWrapIntoSet);
        }
    }

    public static final void dispatchObserverOnPreDispose(Snapshot snapshot) {
        PersistentList<? extends SnapshotObserver> persistentList = observers;
        if (persistentList != null) {
            int size = persistentList.size();
            for (int i = 0; i < size; i++) {
                persistentList.get(i).onPreDispose(snapshot);
            }
        }
    }

    private static /* synthetic */ void getObservers$annotations() {
    }

    public static final b36<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> mergeObservers(PersistentList<? extends SnapshotObserver> persistentList, Snapshot snapshot, boolean z, nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
        int size = persistentList.size();
        LinkedHashMap linkedHashMap = null;
        for (int i = 0; i < size; i++) {
            SnapshotObserver snapshotObserver = persistentList.get(i);
            SnapshotInstanceObservers snapshotInstanceObserversOnPreCreate = snapshotObserver.onPreCreate(snapshot, z);
            if (snapshotInstanceObserversOnPreCreate != null) {
                nl3Var = mergeObservers(snapshotInstanceObserversOnPreCreate.getReadObserver(), nl3Var);
                nl3Var2 = mergeObservers(snapshotInstanceObserversOnPreCreate.getWriteObserver(), nl3Var2);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                linkedHashMap.put(snapshotObserver, snapshotInstanceObserversOnPreCreate);
            }
        }
        return new b36<>(new SnapshotInstanceObservers(nl3Var, nl3Var2), linkedHashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 mergeObservers$lambda$1(nl3 nl3Var, nl3 nl3Var2, Object obj) {
        nl3Var.invoke(obj);
        nl3Var2.invoke(obj);
        return j59.a;
    }

    public static final ObserverHandle observeSnapshots(Snapshot.Companion companion, final SnapshotObserver snapshotObserver) {
        synchronized (SnapshotKt.getLock()) {
            try {
                PersistentList<? extends SnapshotObserver> persistentListPersistentListOf = observers;
                if (persistentListPersistentListOf == null) {
                    persistentListPersistentListOf = ExtensionsKt.persistentListOf();
                }
                observers = persistentListPersistentListOf.add(snapshotObserver);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new ObserverHandle() { // from class: i48
            @Override // androidx.compose.runtime.snapshots.ObserverHandle
            public final void dispose() {
                SnapshotObserverKt.observeSnapshots$lambda$1(snapshotObserver);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void observeSnapshots$lambda$1(SnapshotObserver snapshotObserver) {
        synchronized (SnapshotKt.getLock()) {
            try {
                PersistentList<? extends SnapshotObserver> persistentList = observers;
                PersistentList<? extends SnapshotObserver> persistentList2 = null;
                PersistentList<? extends SnapshotObserver> persistentListRemove = persistentList != null ? persistentList.remove(snapshotObserver) : null;
                if (persistentListRemove != null && !persistentListRemove.isEmpty()) {
                    persistentList2 = persistentListRemove;
                }
                observers = persistentList2;
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static final nl3<Object, j59> mergeObservers(final nl3<Object, j59> nl3Var, final nl3<Object, j59> nl3Var2) {
        if (nl3Var == null || nl3Var2 == null) {
            return nl3Var == null ? nl3Var2 : nl3Var;
        }
        return new nl3() { // from class: h48
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SnapshotObserverKt.mergeObservers$lambda$1(nl3Var, nl3Var2, obj);
            }
        };
    }
}
