package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.internal.WeakReference;
import androidx.compose.runtime.tooling.ComposeToolingFlags;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.h8;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ps0;
import defpackage.ry1;
import defpackage.ss0;
import defpackage.u00;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotKt {
    private static final long INVALID_SNAPSHOT = 0;
    private static List<? extends bm3<? super Set<? extends Object>, ? super Snapshot, j59>> applyObservers;
    private static final SnapshotWeakSet<StateObject> extraStateObjects;
    private static final GlobalSnapshot globalSnapshot;
    private static List<? extends nl3<Object, j59>> globalWriteObservers;
    private static long nextSnapshotId;
    private static SnapshotIdSet openSnapshots;
    private static AtomicInt pendingApplyObserverCount;
    private static final SnapshotDoubleIndexHeap pinningTable;
    private static final Snapshot snapshotInitializer;
    private static final nl3<SnapshotIdSet, j59> emptyLambda = new u00(5);
    private static final SnapshotThreadLocal<Snapshot> threadSnapshot = new SnapshotThreadLocal<>();
    private static final Object lock = new Object();

    static {
        SnapshotIdSet.Companion companion = SnapshotIdSet.Companion;
        openSnapshots = companion.getEMPTY();
        nextSnapshotId = SnapshotId_jvmKt.toSnapshotId(1) + 1;
        pinningTable = new SnapshotDoubleIndexHeap();
        extraStateObjects = new SnapshotWeakSet<>();
        kx2 kx2Var = kx2.b;
        applyObservers = kx2Var;
        globalWriteObservers = kx2Var;
        long j = nextSnapshotId;
        nextSnapshotId = 1 + j;
        GlobalSnapshot globalSnapshot2 = new GlobalSnapshot(j, companion.getEMPTY());
        openSnapshots = openSnapshots.set(globalSnapshot2.getSnapshotId());
        globalSnapshot = globalSnapshot2;
        snapshotInitializer = globalSnapshot2;
        pendingApplyObserverCount = new AtomicInt(0);
    }

    public static final SnapshotIdSet addRange(SnapshotIdSet snapshotIdSet, long j, long j2) {
        while (aa4.g(j, j2) < 0) {
            snapshotIdSet = snapshotIdSet.set(j);
            j++;
        }
        return snapshotIdSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:53:0x00c8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00ca A[Catch: all -> 0x00c0, LOOP:2: B:42:0x0090->B:54:0x00ca, LOOP_END, TryCatch #0 {all -> 0x00c0, blocks: (B:37:0x0081, B:39:0x0086, B:42:0x0090, B:44:0x00a0, B:46:0x00ac, B:48:0x00b5, B:51:0x00c2, B:54:0x00ca, B:55:0x00cd), top: B:62:0x0081 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x00cd A[EDGE_INSN: B:72:0x00cd->B:55:0x00cd BREAK  A[LOOP:2: B:42:0x0090->B:54:0x00ca], SYNTHETIC] */
    public static final <T> T advanceGlobalSnapshot(nl3<? super SnapshotIdSet, ? extends T> nl3Var) {
        MutableScatterSet<StateObject> modified$runtime;
        T t;
        GlobalSnapshot globalSnapshot2 = globalSnapshot;
        synchronized (getLock()) {
            try {
                modified$runtime = globalSnapshot2.getModified$runtime();
                if (modified$runtime != null) {
                    pendingApplyObserverCount.add(1);
                }
                t = (T) resetGlobalSnapshotLocked(globalSnapshot2, nl3Var);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (modified$runtime != null) {
            try {
                List<? extends bm3<? super Set<? extends Object>, ? super Snapshot, j59>> list = applyObservers;
                Set setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(modified$runtime);
                if (ComposeToolingFlags.isVerboseTracingEnabled) {
                    Object objBeginSection = Trace.INSTANCE.beginSection("Compose:applyObservers");
                    try {
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            list.get(i).invoke(setWrapIntoSet, globalSnapshot2);
                        }
                        j59 j59Var = j59.a;
                        Trace.INSTANCE.endSection(objBeginSection);
                    } catch (Throwable th2) {
                        Trace.INSTANCE.endSection(objBeginSection);
                        throw th2;
                    }
                } else {
                    int size2 = list.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        list.get(i2).invoke(setWrapIntoSet, globalSnapshot2);
                    }
                }
                pendingApplyObserverCount.add(-1);
            } catch (Throwable th3) {
                pendingApplyObserverCount.add(-1);
                throw th3;
            }
        }
        synchronized (getLock()) {
            try {
                checkAndOverwriteUnusedRecordsLocked();
                if (modified$runtime != null) {
                    Object[] objArr = modified$runtime.elements;
                    long[] jArr = modified$runtime.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i3 = 0;
                        while (true) {
                            long j = jArr[i3];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i3 != length) {
                                    break;
                                    break;
                                }
                                i3++;
                            } else {
                                int i4 = 8 - ((~(i3 - length)) >>> 31);
                                for (int i5 = 0; i5 < i4; i5++) {
                                    if ((255 & j) < 128) {
                                        processForUnusedRecordsLocked((StateObject) objArr[(i3 << 3) + i5]);
                                    }
                                    j >>= 8;
                                }
                                if (i4 != 8) {
                                    break;
                                }
                                if (i3 != length) {
                                    break;
                                }
                                i3++;
                            }
                        }
                    }
                    j59 j59Var2 = j59.a;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkAndOverwriteUnusedRecordsLocked() {
        SnapshotWeakSet<StateObject> snapshotWeakSet = extraStateObjects;
        int size$runtime = snapshotWeakSet.getSize$runtime();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= size$runtime) {
                break;
            }
            WeakReference<StateObject> weakReference = snapshotWeakSet.getValues$runtime()[i];
            StateObject stateObject = weakReference != null ? weakReference.get() : null;
            if (stateObject != null && overwriteUnusedRecordsLocked(stateObject)) {
                if (i2 != i) {
                    snapshotWeakSet.getValues$runtime()[i2] = weakReference;
                    snapshotWeakSet.getHashes$runtime()[i2] = snapshotWeakSet.getHashes$runtime()[i];
                }
                i2++;
            }
            i++;
        }
        for (int i3 = i2; i3 < size$runtime; i3++) {
            snapshotWeakSet.getValues$runtime()[i3] = null;
            snapshotWeakSet.getHashes$runtime()[i3] = 0;
        }
        if (i2 != size$runtime) {
            snapshotWeakSet.setSize$runtime(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Snapshot createTransparentSnapshotWithNoParentReadObserver(Snapshot snapshot, nl3<Object, j59> nl3Var, boolean z) {
        boolean z2 = snapshot instanceof MutableSnapshot;
        if (z2 || snapshot == null) {
            return new TransparentObserverMutableSnapshot(z2 ? (MutableSnapshot) snapshot : null, nl3Var, null, false, z);
        }
        return new TransparentObserverSnapshot(snapshot, nl3Var, false, z);
    }

    public static /* synthetic */ Snapshot createTransparentSnapshotWithNoParentReadObserver$default(Snapshot snapshot, nl3 nl3Var, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return createTransparentSnapshotWithNoParentReadObserver(snapshot, nl3Var, z);
    }

    public static final <T extends StateRecord> T current(T t) {
        T t2;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot current = companion.getCurrent();
        T t3 = (T) readable(t, current.getSnapshotId(), current.getInvalid$runtime());
        if (t3 != null) {
            return t3;
        }
        synchronized (getLock()) {
            Snapshot current2 = companion.getCurrent();
            t2 = (T) readable(t, current2.getSnapshotId(), current2.getInvalid$runtime());
        }
        if (t2 != null) {
            return t2;
        }
        readError();
        h8.d();
        return null;
    }

    public static final Snapshot currentSnapshot() {
        Snapshot snapshot = threadSnapshot.get();
        return snapshot == null ? globalSnapshot : snapshot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 emptyLambda$lambda$0(SnapshotIdSet snapshotIdSet) {
        return j59.a;
    }

    private static final StateRecord findYoungestOr(StateRecord stateRecord, nl3<? super StateRecord, Boolean> nl3Var) {
        StateRecord stateRecord2 = stateRecord;
        while (stateRecord != null) {
            if (nl3Var.invoke(stateRecord).booleanValue()) {
                return stateRecord;
            }
            if (aa4.g(stateRecord2.getSnapshotId$runtime(), stateRecord.getSnapshotId$runtime()) < 0) {
                stateRecord2 = stateRecord;
            }
            stateRecord = stateRecord.getNext$runtime();
        }
        return stateRecord2;
    }

    public static final Object getLock() {
        return lock;
    }

    public static /* synthetic */ void getLock$annotations() {
    }

    public static final Snapshot getSnapshotInitializer() {
        return snapshotInitializer;
    }

    public static /* synthetic */ void getSnapshotInitializer$annotations() {
    }

    public static final nl3<Object, j59> mergedReadObserver(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2, boolean z) {
        if (!z) {
            nl3Var2 = null;
        }
        if (nl3Var == null || nl3Var2 == null || nl3Var == nl3Var2) {
            return nl3Var == null ? nl3Var2 : nl3Var;
        }
        return new ps0(2, nl3Var, nl3Var2);
    }

    public static /* synthetic */ nl3 mergedReadObserver$default(nl3 nl3Var, nl3 nl3Var2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return mergedReadObserver(nl3Var, nl3Var2, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 mergedReadObserver$lambda$0(nl3 nl3Var, nl3 nl3Var2, Object obj) {
        nl3Var.invoke(obj);
        nl3Var2.invoke(obj);
        return j59.a;
    }

    public static final nl3<Object, j59> mergedWriteObserver(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
        if (nl3Var == null || nl3Var2 == null || nl3Var == nl3Var2) {
            return nl3Var == null ? nl3Var2 : nl3Var;
        }
        return new ry1(3, nl3Var, nl3Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 mergedWriteObserver$lambda$0(nl3 nl3Var, nl3 nl3Var2, Object obj) {
        nl3Var.invoke(obj);
        nl3Var2.invoke(obj);
        return j59.a;
    }

    public static final <T extends StateRecord> T newOverwritableRecordLocked(T t, StateObject stateObject) {
        T t2 = (T) usedLocked(stateObject);
        if (t2 != null) {
            t2.setSnapshotId$runtime(Long.MAX_VALUE);
            return t2;
        }
        T t3 = (T) t.create(Long.MAX_VALUE);
        t3.setNext$runtime(stateObject.getFirstStateRecord());
        stateObject.prependStateRecord(t3);
        return t3;
    }

    public static final <T extends StateRecord> T newWritableRecord(T t, StateObject stateObject, Snapshot snapshot) {
        T t2;
        synchronized (getLock()) {
            t2 = (T) newWritableRecordLocked(t, stateObject, snapshot);
        }
        return t2;
    }

    private static final <T extends StateRecord> T newWritableRecordLocked(T t, StateObject stateObject, Snapshot snapshot) {
        T t2 = (T) newOverwritableRecordLocked(t, stateObject);
        t2.assign(t);
        t2.setSnapshotId$runtime(snapshot.getSnapshotId());
        return t2;
    }

    public static final void notifyWrite(Snapshot snapshot, StateObject stateObject) {
        snapshot.setWriteCount$runtime(snapshot.getWriteCount$runtime() + 1);
        nl3<Object, j59> writeObserver$runtime = snapshot.getWriteObserver$runtime();
        if (writeObserver$runtime != null) {
            writeObserver$runtime.invoke(stateObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<StateRecord, StateRecord> optimisticMerges(long j, MutableSnapshot mutableSnapshot, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        Map<StateRecord, StateRecord> map;
        SnapshotIdSet snapshotIdSet2;
        Object[] objArr;
        int i;
        long[] jArr2;
        Map<StateRecord, StateRecord> map2;
        Object[] objArr2;
        int i2;
        int i3;
        MutableScatterSet<StateObject> modified$runtime = mutableSnapshot.getModified$runtime();
        Map<StateRecord, StateRecord> map3 = null;
        if (modified$runtime == null) {
            return null;
        }
        long snapshotId = mutableSnapshot.getSnapshotId();
        SnapshotIdSet snapshotIdSetOr = mutableSnapshot.getInvalid$runtime().set(snapshotId).or(mutableSnapshot.getPreviousIds$runtime());
        Object[] objArr3 = modified$runtime.elements;
        long[] jArr3 = modified$runtime.metadata;
        int length = jArr3.length - 2;
        if (length < 0) {
            return null;
        }
        HashMap map4 = null;
        int i4 = 0;
        while (true) {
            long j2 = jArr3[i4];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i5 = 8;
                int i6 = 8 - ((~(i4 - length)) >>> 31);
                int i7 = 0;
                while (i7 < i6) {
                    if ((255 & j2) < 128) {
                        StateObject stateObject = (StateObject) objArr3[(i4 << 3) + i7];
                        map2 = map3;
                        StateRecord firstStateRecord = stateObject.getFirstStateRecord();
                        jArr2 = jArr3;
                        i2 = i4;
                        i3 = i5;
                        StateRecord stateRecord = readable(firstStateRecord, j, snapshotIdSet);
                        if (stateRecord == null) {
                            objArr2 = objArr3;
                        } else {
                            objArr2 = objArr3;
                            StateRecord stateRecord2 = readable(firstStateRecord, snapshotId, snapshotIdSetOr);
                            if (stateRecord2 != null && !stateRecord.equals(stateRecord2)) {
                                StateRecord stateRecord3 = readable(firstStateRecord, snapshotId, mutableSnapshot.getInvalid$runtime());
                                if (stateRecord3 == null) {
                                    readError();
                                    h8.d();
                                    return map2;
                                }
                                StateRecord stateRecordMergeRecords = stateObject.mergeRecords(stateRecord2, stateRecord, stateRecord3);
                                if (stateRecordMergeRecords == null) {
                                    return map2;
                                }
                                if (map4 == null) {
                                    map4 = new HashMap();
                                }
                                map4.put(stateRecord, stateRecordMergeRecords);
                                map4 = map4;
                            }
                        }
                    } else {
                        jArr2 = jArr3;
                        map2 = map3;
                        objArr2 = objArr3;
                        i2 = i4;
                        i3 = i5;
                    }
                    j2 >>= i3;
                    i7++;
                    map3 = map2;
                    i4 = i2;
                    i5 = i3;
                    jArr3 = jArr2;
                    objArr3 = objArr2;
                    snapshotIdSetOr = snapshotIdSetOr;
                }
                jArr = jArr3;
                map = map3;
                snapshotIdSet2 = snapshotIdSetOr;
                objArr = objArr3;
                i = i4;
                if (i6 != i5) {
                    return map4;
                }
            } else {
                jArr = jArr3;
                map = map3;
                snapshotIdSet2 = snapshotIdSetOr;
                objArr = objArr3;
                i = i4;
            }
            int i8 = i;
            if (i8 == length) {
                return map4;
            }
            i4 = i8 + 1;
            map3 = map;
            jArr3 = jArr;
            objArr3 = objArr;
            snapshotIdSetOr = snapshotIdSet2;
        }
    }

    public static final <T extends StateRecord, R> R overwritable(T t, StateObject stateObject, T t2, nl3<? super T, ? extends R> nl3Var) {
        Snapshot current;
        R rInvoke;
        synchronized (getLock()) {
            current = Snapshot.Companion.getCurrent();
            rInvoke = nl3Var.invoke(overwritableRecord(t, stateObject, current, t2));
        }
        notifyWrite(current, stateObject);
        return rInvoke;
    }

    public static final <T extends StateRecord> T overwritableRecord(T t, StateObject stateObject, Snapshot snapshot, T t2) {
        T t3;
        if (snapshot.getReadOnly()) {
            snapshot.mo5629recordModified$runtime(stateObject);
        }
        long snapshotId = snapshot.getSnapshotId();
        if (t2.getSnapshotId$runtime() == snapshotId) {
            return t2;
        }
        synchronized (getLock()) {
            t3 = (T) newOverwritableRecordLocked(t, stateObject);
        }
        t3.setSnapshotId$runtime(snapshotId);
        if (t2.getSnapshotId$runtime() != SnapshotId_jvmKt.toSnapshotId(1)) {
            snapshot.mo5629recordModified$runtime(stateObject);
        }
        return t3;
    }

    private static final boolean overwriteUnusedRecordsLocked(StateObject stateObject) {
        StateRecord stateRecord;
        long jLowestOrDefault = pinningTable.lowestOrDefault(nextSnapshotId);
        StateRecord stateRecord2 = null;
        StateRecord firstStateRecord = null;
        int i = 0;
        for (StateRecord firstStateRecord2 = stateObject.getFirstStateRecord(); firstStateRecord2 != null; firstStateRecord2 = firstStateRecord2.getNext$runtime()) {
            long snapshotId$runtime = firstStateRecord2.getSnapshotId$runtime();
            if (snapshotId$runtime != INVALID_SNAPSHOT) {
                if (aa4.g(snapshotId$runtime, jLowestOrDefault) >= 0) {
                    i++;
                } else if (stateRecord2 == null) {
                    i++;
                    stateRecord2 = firstStateRecord2;
                } else {
                    if (aa4.g(firstStateRecord2.getSnapshotId$runtime(), stateRecord2.getSnapshotId$runtime()) < 0) {
                        stateRecord = stateRecord2;
                        stateRecord2 = firstStateRecord2;
                    } else {
                        stateRecord = firstStateRecord2;
                    }
                    if (firstStateRecord == null) {
                        firstStateRecord = stateObject.getFirstStateRecord();
                        StateRecord stateRecord3 = firstStateRecord;
                        while (true) {
                            if (firstStateRecord == null) {
                                firstStateRecord = stateRecord3;
                                break;
                            }
                            if (aa4.g(firstStateRecord.getSnapshotId$runtime(), jLowestOrDefault) >= 0) {
                                break;
                            }
                            if (aa4.g(stateRecord3.getSnapshotId$runtime(), firstStateRecord.getSnapshotId$runtime()) < 0) {
                                stateRecord3 = firstStateRecord;
                            }
                            firstStateRecord = firstStateRecord.getNext$runtime();
                        }
                    }
                    stateRecord2.setSnapshotId$runtime(INVALID_SNAPSHOT);
                    stateRecord2.assign(firstStateRecord);
                    stateRecord2 = stateRecord;
                }
            }
        }
        return i > 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void processForUnusedRecordsLocked(StateObject stateObject) {
        if (overwriteUnusedRecordsLocked(stateObject)) {
            extraStateObjects.add(stateObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void readError() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final <T extends StateRecord> T readable(T t, StateObject stateObject) {
        T t2;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot current = companion.getCurrent();
        nl3<Object, j59> readObserver = current.getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(stateObject);
        }
        T t3 = (T) readable(t, current.getSnapshotId(), current.getInvalid$runtime());
        if (t3 != null) {
            return t3;
        }
        synchronized (getLock()) {
            Snapshot current2 = companion.getCurrent();
            StateRecord firstStateRecord = stateObject.getFirstStateRecord();
            firstStateRecord.getClass();
            t2 = (T) readable(firstStateRecord, current2.getSnapshotId(), current2.getInvalid$runtime());
            if (t2 == null) {
                readError();
                throw new KotlinNothingValueException();
            }
        }
        return t2;
    }

    public static final void releasePinningLocked(int i) {
        pinningTable.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void reportReadonlySnapshotWrite() {
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T resetGlobalSnapshotLocked(GlobalSnapshot globalSnapshot2, nl3<? super SnapshotIdSet, ? extends T> nl3Var) {
        long snapshotId = globalSnapshot2.getSnapshotId();
        T tInvoke = nl3Var.invoke(openSnapshots.clear(snapshotId));
        long j = nextSnapshotId;
        nextSnapshotId = 1 + j;
        openSnapshots = openSnapshots.clear(snapshotId);
        globalSnapshot2.setSnapshotId$runtime(j);
        globalSnapshot2.setInvalid$runtime(openSnapshots);
        globalSnapshot2.setWriteCount$runtime(0);
        globalSnapshot2.setModified$runtime(null);
        globalSnapshot2.releasePinnedSnapshotLocked$runtime();
        openSnapshots = openSnapshots.set(j);
        return tInvoke;
    }

    public static final <T> T sync(ll3<? extends T> ll3Var) {
        T tInvoke;
        synchronized (getLock()) {
            tInvoke = ll3Var.invoke();
        }
        return tInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends Snapshot> T takeNewSnapshot(nl3<? super SnapshotIdSet, ? extends T> nl3Var) {
        return (T) advanceGlobalSnapshot(new ss0(nl3Var, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Snapshot takeNewSnapshot$lambda$0(nl3 nl3Var, SnapshotIdSet snapshotIdSet) {
        Snapshot snapshot = (Snapshot) nl3Var.invoke(snapshotIdSet);
        synchronized (getLock()) {
            openSnapshots = openSnapshots.set(snapshot.getSnapshotId());
            j59 j59Var = j59.a;
        }
        return snapshot;
    }

    public static final int trackPinning(long j, SnapshotIdSet snapshotIdSet) {
        int iAdd;
        long jLowest = snapshotIdSet.lowest(j);
        synchronized (getLock()) {
            iAdd = pinningTable.add(jLowest);
        }
        return iAdd;
    }

    private static final StateRecord usedLocked(StateObject stateObject) {
        long jLowestOrDefault = pinningTable.lowestOrDefault(nextSnapshotId) - 1;
        SnapshotIdSet empty = SnapshotIdSet.Companion.getEMPTY();
        StateRecord stateRecord = null;
        for (StateRecord firstStateRecord = stateObject.getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime()) {
            if (firstStateRecord.getSnapshotId$runtime() != INVALID_SNAPSHOT) {
                if (valid(firstStateRecord, jLowestOrDefault, empty)) {
                    if (stateRecord == null) {
                        stateRecord = firstStateRecord;
                    } else if (aa4.g(firstStateRecord.getSnapshotId$runtime(), stateRecord.getSnapshotId$runtime()) >= 0) {
                        return stateRecord;
                    }
                }
            }
            return firstStateRecord;
        }
        return null;
    }

    private static final boolean valid(long j, long j2, SnapshotIdSet snapshotIdSet) {
        return (j2 == INVALID_SNAPSHOT || aa4.g(j2, j) > 0 || snapshotIdSet.get(j2)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void validateOpen(Snapshot snapshot) {
        long jLowestOrDefault;
        if (openSnapshots.get(snapshot.getSnapshotId())) {
            return;
        }
        StringBuilder sb = new StringBuilder("Snapshot is not open: snapshotId=");
        sb.append(snapshot.getSnapshotId());
        sb.append(", disposed=");
        sb.append(snapshot.getDisposed$runtime());
        sb.append(", applied=");
        MutableSnapshot mutableSnapshot = snapshot instanceof MutableSnapshot ? (MutableSnapshot) snapshot : null;
        sb.append(mutableSnapshot != null ? Boolean.valueOf(mutableSnapshot.getApplied$runtime()) : "read-only");
        sb.append(", lowestPin=");
        synchronized (getLock()) {
            jLowestOrDefault = pinningTable.lowestOrDefault(-1L);
        }
        sb.append(jLowestOrDefault);
        throw new IllegalStateException(sb.toString().toString());
    }

    public static final <T extends StateRecord, R> R withCurrent(T t, nl3<? super T, ? extends R> nl3Var) {
        return nl3Var.invoke(current(t));
    }

    public static final <T extends StateRecord, R> R writable(T t, StateObject stateObject, nl3<? super T, ? extends R> nl3Var) {
        Snapshot current;
        R rInvoke;
        synchronized (getLock()) {
            current = Snapshot.Companion.getCurrent();
            rInvoke = nl3Var.invoke(writableRecord(t, stateObject, current));
        }
        notifyWrite(current, stateObject);
        return rInvoke;
    }

    public static final <T extends StateRecord> T writableRecord(T t, StateObject stateObject, Snapshot snapshot) {
        T t2;
        if (snapshot.getReadOnly()) {
            snapshot.mo5629recordModified$runtime(stateObject);
        }
        long snapshotId = snapshot.getSnapshotId();
        T t3 = (T) readable(t, snapshotId, snapshot.getInvalid$runtime());
        if (t3 == null) {
            readError();
            h8.d();
            return null;
        }
        if (t3.getSnapshotId$runtime() == snapshot.getSnapshotId()) {
            return t3;
        }
        synchronized (getLock()) {
            t2 = (T) readable(stateObject.getFirstStateRecord(), snapshotId, snapshot.getInvalid$runtime());
            if (t2 == null) {
                readError();
                throw new KotlinNothingValueException();
            }
            if (t2.getSnapshotId$runtime() != snapshotId) {
                t2 = (T) newWritableRecordLocked(t2, stateObject, snapshot);
            }
        }
        t2.getClass();
        if (t3.getSnapshotId$runtime() != SnapshotId_jvmKt.toSnapshotId(1)) {
            snapshot.mo5629recordModified$runtime(stateObject);
        }
        return t2;
    }

    private static final boolean valid(StateRecord stateRecord, long j, SnapshotIdSet snapshotIdSet) {
        return valid(j, stateRecord.getSnapshotId$runtime(), snapshotIdSet);
    }

    public static final <T extends StateRecord, R> R writable(T t, StateObject stateObject, Snapshot snapshot, nl3<? super T, ? extends R> nl3Var) {
        R rInvoke;
        synchronized (getLock()) {
            rInvoke = nl3Var.invoke(writableRecord(t, stateObject, snapshot));
        }
        notifyWrite(snapshot, stateObject);
        return rInvoke;
    }

    public static final <T extends StateRecord> T current(T t, Snapshot snapshot) {
        T t2;
        T t3 = (T) readable(t, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        if (t3 != null) {
            return t3;
        }
        synchronized (getLock()) {
            t2 = (T) readable(t, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        }
        if (t2 != null) {
            return t2;
        }
        readError();
        h8.d();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends StateRecord> T readable(T t, long j, SnapshotIdSet snapshotIdSet) {
        T t2 = null;
        while (t != null) {
            if (valid(t, j, snapshotIdSet) && (t2 == null || aa4.g(t2.getSnapshotId$runtime(), t.getSnapshotId$runtime()) < 0)) {
                t2 = t;
            }
            t = (T) t.getNext$runtime();
        }
        if (t2 != null) {
            return t2;
        }
        return null;
    }

    public static final <T extends StateRecord> T readable(T t, StateObject stateObject, Snapshot snapshot) {
        T t2;
        nl3<Object, j59> readObserver = snapshot.getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(stateObject);
        }
        T t3 = (T) readable(t, snapshot.getSnapshotId(), snapshot.getInvalid$runtime());
        if (t3 != null) {
            return t3;
        }
        synchronized (getLock()) {
            Snapshot current = Snapshot.Companion.getCurrent();
            StateRecord firstStateRecord = stateObject.getFirstStateRecord();
            firstStateRecord.getClass();
            t2 = (T) readable(firstStateRecord, current.getSnapshotId(), current.getInvalid$runtime());
            if (t2 == null) {
                readError();
                throw new KotlinNothingValueException();
            }
        }
        return t2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void advanceGlobalSnapshot() {
        advanceGlobalSnapshot(emptyLambda);
    }
}
