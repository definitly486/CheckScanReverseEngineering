package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ue4;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotStateMap<K, V> implements StateObject, Map<K, V>, ue4 {
    public static final int $stable = 0;
    private final Set<Map.Entry<K, V>> entries;
    private StateRecord firstStateRecord;
    private final Set<K> keys;
    private final Collection<V> values;

    public SnapshotStateMap() {
        PersistentMap persistentMapPersistentHashMapOf = ExtensionsKt.persistentHashMapOf();
        Snapshot snapshotCurrentSnapshot = SnapshotKt.currentSnapshot();
        StateMapStateRecord stateMapStateRecord = new StateMapStateRecord(snapshotCurrentSnapshot.getSnapshotId(), persistentMapPersistentHashMapOf);
        if (!(snapshotCurrentSnapshot instanceof GlobalSnapshot)) {
            stateMapStateRecord.setNext$runtime(new StateMapStateRecord(SnapshotId_jvmKt.toSnapshotId(1), persistentMapPersistentHashMapOf));
        }
        this.firstStateRecord = stateMapStateRecord;
        this.entries = new SnapshotMapEntrySet(this);
        this.keys = new SnapshotMapKeySet(this);
        this.values = new SnapshotMapValueSet(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean attemptUpdate(StateMapStateRecord<K, V> stateMapStateRecord, int i, PersistentMap<K, ? extends V> persistentMap) {
        boolean z;
        synchronized (SnapshotStateMapKt.sync) {
            if (stateMapStateRecord.getModification$runtime() == i) {
                stateMapStateRecord.setMap$runtime(persistentMap);
                z = true;
                stateMapStateRecord.setModification$runtime(stateMapStateRecord.getModification$runtime() + 1);
            } else {
                z = false;
            }
        }
        return z;
    }

    private final int commitUpdate(StateMapStateRecord<K, V> stateMapStateRecord, PersistentMap<K, ? extends V> persistentMap) {
        int modification$runtime;
        synchronized (SnapshotStateMapKt.sync) {
            stateMapStateRecord.setMap$runtime(persistentMap);
            modification$runtime = stateMapStateRecord.getModification$runtime();
            stateMapStateRecord.setModification$runtime(modification$runtime + 1);
        }
        return modification$runtime;
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    public static /* synthetic */ void getReadable$runtime$annotations() {
    }

    private final <R> R mutate(nl3<? super Map<K, V>, ? extends R> nl3Var) {
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        R rInvoke;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateRecord firstStateRecord = getFirstStateRecord();
                firstStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                j59 j59Var = j59.a;
            }
            map$runtime.getClass();
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            rInvoke = nl3Var.invoke(builder);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (aa4.e(persistentMapBuild, map$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                zAttemptUpdate = attemptUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), modification$runtime, persistentMapBuild);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!zAttemptUpdate);
        return rInvoke;
    }

    private final void update(nl3<? super PersistentMap<K, ? extends V>, ? extends PersistentMap<K, ? extends V>> nl3Var) {
        Snapshot current;
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
        PersistentMap<K, ? extends V> persistentMapInvoke = nl3Var.invoke(stateMapStateRecord.getMap$runtime());
        if (persistentMapInvoke != stateMapStateRecord.getMap$runtime()) {
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                commitUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), persistentMapInvoke);
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    private final <R> R withCurrent(nl3<? super StateMapStateRecord<K, V>, ? extends R> nl3Var) {
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        return nl3Var.invoke(SnapshotKt.current((StateMapStateRecord) firstStateRecord));
    }

    private final <R> R writable(nl3<? super StateMapStateRecord<K, V>, ? extends R> nl3Var) {
        Snapshot current;
        R rInvoke;
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) firstStateRecord;
        synchronized (SnapshotKt.getLock()) {
            current = Snapshot.Companion.getCurrent();
            rInvoke = nl3Var.invoke(SnapshotKt.writableRecord(stateMapStateRecord, this, current));
        }
        SnapshotKt.notifyWrite(current, this);
        return rInvoke;
    }

    public final boolean all$runtime(nl3<? super Map.Entry<? extends K, ? extends V>, Boolean> nl3Var) {
        Iterator<E> it = ((ImmutableSet) getReadable$runtime().getMap$runtime().entrySet()).iterator();
        while (it.hasNext()) {
            if (!nl3Var.invoke((Map.Entry) it.next()).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public final boolean any$runtime(nl3<? super Map.Entry<? extends K, ? extends V>, Boolean> nl3Var) {
        Iterator<E> it = ((ImmutableSet) getReadable$runtime().getMap$runtime().entrySet()).iterator();
        while (it.hasNext()) {
            if (nl3Var.invoke((Map.Entry) it.next()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public void clear() {
        Snapshot current;
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
        stateMapStateRecord.getMap$runtime();
        PersistentMap<K, ? extends V> persistentMapPersistentHashMapOf = ExtensionsKt.persistentHashMapOf();
        if (persistentMapPersistentHashMapOf != stateMapStateRecord.getMap$runtime()) {
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                commitUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), persistentMapPersistentHashMapOf);
            }
            SnapshotKt.notifyWrite(current, this);
        }
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return getReadable$runtime().getMap$runtime().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return getReadable$runtime().getMap$runtime().containsValue(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public V get(Object obj) {
        return getReadable$runtime().getMap$runtime().get(obj);
    }

    public final Map<K, V> getDebuggerDisplayValue() {
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        return ((StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord)).getMap$runtime();
    }

    public Set<Map.Entry<K, V>> getEntries() {
        return this.entries;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.firstStateRecord;
    }

    public Set<K> getKeys() {
        return this.keys;
    }

    public final int getModification$runtime() {
        return getReadable$runtime().getModification$runtime();
    }

    public final StateMapStateRecord<K, V> getReadable$runtime() {
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        return (StateMapStateRecord) SnapshotKt.readable((StateMapStateRecord) firstStateRecord, this);
    }

    public int getSize() {
        return getReadable$runtime().getMap$runtime().size();
    }

    public Collection<V> getValues() {
        return this.values;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return getReadable$runtime().getMap$runtime().isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord stateRecord) {
        stateRecord.getClass();
        this.firstStateRecord = (StateMapStateRecord) stateRecord;
    }

    @Override // java.util.Map
    public V put(K k, V v) {
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        V vPut;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateRecord firstStateRecord = getFirstStateRecord();
                firstStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                j59 j59Var = j59.a;
            }
            map$runtime.getClass();
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            vPut = builder.put(k, v);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (aa4.e(persistentMapBuild, map$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                zAttemptUpdate = attemptUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), modification$runtime, persistentMapBuild);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!zAttemptUpdate);
        return vPut;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateRecord firstStateRecord = getFirstStateRecord();
                firstStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                j59 j59Var = j59.a;
            }
            map$runtime.getClass();
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            builder.putAll(map);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (aa4.e(persistentMapBuild, map$runtime)) {
                return;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                zAttemptUpdate = attemptUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), modification$runtime, persistentMapBuild);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!zAttemptUpdate);
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        V vRemove;
        Snapshot current;
        boolean zAttemptUpdate;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateRecord firstStateRecord = getFirstStateRecord();
                firstStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                j59 j59Var = j59.a;
            }
            map$runtime.getClass();
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            vRemove = builder.remove(obj);
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (aa4.e(persistentMapBuild, map$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                zAttemptUpdate = attemptUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), modification$runtime, persistentMapBuild);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!zAttemptUpdate);
        return vRemove;
    }

    public final boolean removeIf$runtime(nl3<? super Map.Entry<K, V>, Boolean> nl3Var) {
        PersistentMap<K, V> map$runtime;
        int modification$runtime;
        Snapshot current;
        boolean zAttemptUpdate;
        boolean z = false;
        do {
            synchronized (SnapshotStateMapKt.sync) {
                StateRecord firstStateRecord = getFirstStateRecord();
                firstStateRecord.getClass();
                StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord);
                map$runtime = stateMapStateRecord.getMap$runtime();
                modification$runtime = stateMapStateRecord.getModification$runtime();
                j59 j59Var = j59.a;
            }
            map$runtime.getClass();
            PersistentMap.Builder<K, V> builder = map$runtime.builder();
            for (Map.Entry<K, V> entry : entrySet()) {
                if (nl3Var.invoke(entry).booleanValue()) {
                    builder.remove(entry.getKey());
                    z = true;
                }
            }
            j59 j59Var2 = j59.a;
            PersistentMap<K, V> persistentMapBuild = builder.build();
            if (aa4.e(persistentMapBuild, map$runtime)) {
                break;
            }
            StateRecord firstStateRecord2 = getFirstStateRecord();
            firstStateRecord2.getClass();
            StateMapStateRecord stateMapStateRecord2 = (StateMapStateRecord) firstStateRecord2;
            synchronized (SnapshotKt.getLock()) {
                current = Snapshot.Companion.getCurrent();
                zAttemptUpdate = attemptUpdate((StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord2, this, current), modification$runtime, persistentMapBuild);
            }
            SnapshotKt.notifyWrite(current, this);
        } while (!zAttemptUpdate);
        return z;
    }

    public final boolean removeValue$runtime(V v) {
        Object next;
        Iterator<T> it = entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!aa4.e(((Map.Entry) next).getValue(), v));
        Map.Entry entry = (Map.Entry) next;
        if (entry == null) {
            return false;
        }
        remove(entry.getKey());
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    public final Map<K, V> toMap() {
        return getReadable$runtime().getMap$runtime();
    }

    public String toString() {
        StateRecord firstStateRecord = getFirstStateRecord();
        firstStateRecord.getClass();
        return "SnapshotStateMap(value=" + ((StateMapStateRecord) SnapshotKt.current((StateMapStateRecord) firstStateRecord)).getMap$runtime() + ")@" + hashCode();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    public static final class StateMapStateRecord<K, V> extends StateRecord {
        public static final int $stable = 8;
        private PersistentMap<K, ? extends V> map;
        private int modification;

        public StateMapStateRecord(long j, PersistentMap<K, ? extends V> persistentMap) {
            super(j);
            this.map = persistentMap;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord stateRecord) {
            stateRecord.getClass();
            StateMapStateRecord stateMapStateRecord = (StateMapStateRecord) stateRecord;
            synchronized (SnapshotStateMapKt.sync) {
                this.map = stateMapStateRecord.map;
                this.modification = stateMapStateRecord.modification;
                j59 j59Var = j59.a;
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return new StateMapStateRecord(SnapshotKt.currentSnapshot().getSnapshotId(), this.map);
        }

        public final PersistentMap<K, V> getMap$runtime() {
            return this.map;
        }

        public final int getModification$runtime() {
            return this.modification;
        }

        public final void setMap$runtime(PersistentMap<K, ? extends V> persistentMap) {
            this.map = persistentMap;
        }

        public final void setModification$runtime(int i) {
            this.modification = i;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create(long j) {
            return new StateMapStateRecord(j, this.map);
        }
    }
}
