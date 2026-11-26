package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.snapshots.tooling.SnapshotInstanceObservers;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserver;
import androidx.compose.runtime.snapshots.tooling.SnapshotObserverKt;
import androidx.compose.runtime.tooling.ComposeToolingFlags;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.b36;
import defpackage.bm3;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class MutableSnapshot extends Snapshot {
    private boolean applied;
    private List<? extends StateObject> merged;
    private MutableScatterSet<StateObject> modified;
    private SnapshotIdSet previousIds;
    private int[] previousPinnedSnapshots;
    private final nl3<Object, j59> readObserver;
    private int snapshots;
    private int writeCount;
    private final nl3<Object, j59> writeObserver;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final int[] EmptyIntArray = new int[0];

    public MutableSnapshot(long j, SnapshotIdSet snapshotIdSet, nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
        super(j, snapshotIdSet, (jh2) null);
        this.readObserver = nl3Var;
        this.writeObserver = nl3Var2;
        this.previousIds = SnapshotIdSet.Companion.getEMPTY();
        this.previousPinnedSnapshots = EmptyIntArray;
        this.snapshots = 1;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x007c A[LOOP:0: B:7:0x001e->B:24:0x007c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x007f A[EDGE_INSN: B:28:0x007f->B:25:0x007f BREAK  A[LOOP:0: B:7:0x001e->B:24:0x007c], SYNTHETIC] */
    private final void abandon() {
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        if (modified$runtime != null) {
            validateNotApplied();
            setModified$runtime(null);
            long snapshotId = getSnapshotId();
            Object[] objArr = modified$runtime.elements;
            long[] jArr = modified$runtime.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i != length) {
                            break;
                            break;
                        }
                        i++;
                    } else {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                for (StateRecord firstStateRecord = ((StateObject) objArr[(i << 3) + i3]).getFirstStateRecord(); firstStateRecord != null; firstStateRecord = firstStateRecord.getNext$runtime()) {
                                    if (firstStateRecord.getSnapshotId$runtime() == snapshotId || qn1.M(this.previousIds, Long.valueOf(firstStateRecord.getSnapshotId$runtime()))) {
                                        firstStateRecord.setSnapshotId$runtime(SnapshotKt.INVALID_SNAPSHOT);
                                    }
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        } else if (i != length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
        closeAndReleasePinning$runtime();
    }

    private final void releasePreviouslyPinnedSnapshotsLocked() {
        int length = this.previousPinnedSnapshots.length;
        for (int i = 0; i < length; i++) {
            SnapshotKt.releasePinningLocked(this.previousPinnedSnapshots[i]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MutableSnapshot takeNestedMutableSnapshot$default(MutableSnapshot mutableSnapshot, nl3 nl3Var, nl3 nl3Var2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: takeNestedMutableSnapshot");
            return null;
        }
        if ((i & 1) != 0) {
            nl3Var = null;
        }
        if ((i & 2) != 0) {
            nl3Var2 = null;
        }
        return mutableSnapshot.takeNestedMutableSnapshot(nl3Var, nl3Var2);
    }

    private final void validateNotApplied() {
        if (this.applied) {
            PreconditionsKt.throwIllegalStateException("Unsupported operation on a snapshot that has been applied");
        }
    }

    private final void validateNotAppliedOrPinned() {
        if (!this.applied || ((Snapshot) this).pinningTrackingHandle >= 0) {
            return;
        }
        PreconditionsKt.throwIllegalStateException("Unsupported operation on a disposed or applied snapshot");
    }

    public final <T> T advance$runtime(ll3<? extends T> ll3Var) {
        recordPrevious$runtime(getSnapshotId());
        T tInvoke = ll3Var.invoke();
        if (getApplied$runtime() || getDisposed$runtime()) {
            return tInvoke;
        }
        long snapshotId = getSnapshotId();
        synchronized (SnapshotKt.getLock()) {
            long j = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId++;
            setSnapshotId$runtime(j);
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(getSnapshotId());
            j59 j59Var = j59.a;
        }
        setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId + 1, getSnapshotId()));
        return tInvoke;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01df A[Catch: all -> 0x0195, LOOP:6: B:90:0x01b3->B:100:0x01df, LOOP_END, TryCatch #2 {all -> 0x0195, blocks: (B:67:0x0151, B:69:0x0161, B:72:0x016d, B:74:0x0179, B:76:0x0183, B:78:0x0189, B:81:0x0198, B:87:0x01a9, B:90:0x01b3, B:92:0x01bd, B:94:0x01c7, B:96:0x01cd, B:97:0x01d7, B:100:0x01df, B:101:0x01e2, B:103:0x01e6, B:105:0x01f0, B:106:0x01fc, B:84:0x01a0), top: B:118:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x01a7 A[EDGE_INSN: B:127:0x01a7->B:86:0x01a7 BREAK  A[LOOP:4: B:72:0x016d->B:84:0x01a0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x01e2 A[EDGE_INSN: B:132:0x01e2->B:101:0x01e2 BREAK  A[LOOP:6: B:90:0x01b3->B:100:0x01df], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x019e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x01a0 A[Catch: all -> 0x0195, LOOP:4: B:72:0x016d->B:84:0x01a0, LOOP_END, TryCatch #2 {all -> 0x0195, blocks: (B:67:0x0151, B:69:0x0161, B:72:0x016d, B:74:0x0179, B:76:0x0183, B:78:0x0189, B:81:0x0198, B:87:0x01a9, B:90:0x01b3, B:92:0x01bd, B:94:0x01c7, B:96:0x01cd, B:97:0x01d7, B:100:0x01df, B:101:0x01e2, B:103:0x01e6, B:105:0x01f0, B:106:0x01fc, B:84:0x01a0), top: B:118:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:99:0x01dd A[DONT_INVERT] */
    public SnapshotApplyResult apply() {
        Map<StateRecord, ? extends StateRecord> mapOptimisticMerges;
        List list;
        MutableScatterSet<StateObject> modified$runtime;
        long j;
        long j2;
        MutableScatterSet<StateObject> modified$runtime2 = getModified$runtime();
        if (modified$runtime2 != null) {
            GlobalSnapshot globalSnapshot = SnapshotKt.globalSnapshot;
            mapOptimisticMerges = SnapshotKt.optimisticMerges(globalSnapshot.getSnapshotId(), this, SnapshotKt.openSnapshots.clear(globalSnapshot.getSnapshotId()));
        } else {
            mapOptimisticMerges = null;
        }
        kx2 kx2Var = kx2.b;
        synchronized (SnapshotKt.getLock()) {
            try {
                SnapshotKt.validateOpen(this);
                if (modified$runtime2 == null || modified$runtime2.getSize() == 0) {
                    closeLocked$runtime();
                    GlobalSnapshot globalSnapshot2 = SnapshotKt.globalSnapshot;
                    MutableScatterSet<StateObject> modified$runtime3 = globalSnapshot2.getModified$runtime();
                    SnapshotKt.resetGlobalSnapshotLocked(globalSnapshot2, SnapshotKt.emptyLambda);
                    if (modified$runtime3 == null || !modified$runtime3.isNotEmpty()) {
                        list = kx2Var;
                        modified$runtime = null;
                    } else {
                        list = SnapshotKt.applyObservers;
                        modified$runtime = modified$runtime3;
                    }
                } else {
                    GlobalSnapshot globalSnapshot3 = SnapshotKt.globalSnapshot;
                    SnapshotApplyResult snapshotApplyResultInnerApplyLocked$runtime = innerApplyLocked$runtime(SnapshotKt.nextSnapshotId, modified$runtime2, mapOptimisticMerges, SnapshotKt.openSnapshots.clear(globalSnapshot3.getSnapshotId()));
                    if (!aa4.e(snapshotApplyResultInnerApplyLocked$runtime, SnapshotApplyResult.Success.INSTANCE)) {
                        return snapshotApplyResultInnerApplyLocked$runtime;
                    }
                    closeLocked$runtime();
                    modified$runtime = globalSnapshot3.getModified$runtime();
                    SnapshotKt.resetGlobalSnapshotLocked(globalSnapshot3, SnapshotKt.emptyLambda);
                    setModified$runtime(null);
                    globalSnapshot3.setModified$runtime(null);
                    list = SnapshotKt.applyObservers;
                }
                j59 j59Var = j59.a;
                this.applied = true;
                if (modified$runtime != null) {
                    Set setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(modified$runtime);
                    if (!setWrapIntoSet.isEmpty()) {
                        if (ComposeToolingFlags.isVerboseTracingEnabled) {
                            Object objBeginSection = Trace.INSTANCE.beginSection("Compose:applyObservers");
                            try {
                                int size = list.size();
                                for (int i = 0; i < size; i++) {
                                    ((bm3) list.get(i)).invoke(setWrapIntoSet, this);
                                }
                                j59 j59Var2 = j59.a;
                                Trace.INSTANCE.endSection(objBeginSection);
                            } catch (Throwable th) {
                                Trace.INSTANCE.endSection(objBeginSection);
                                throw th;
                            }
                        } else {
                            int size2 = list.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                ((bm3) list.get(i2)).invoke(setWrapIntoSet, this);
                            }
                        }
                    }
                }
                if (modified$runtime2 != null && modified$runtime2.isNotEmpty()) {
                    Set setWrapIntoSet2 = ScatterSetWrapperKt.wrapIntoSet(modified$runtime2);
                    if (ComposeToolingFlags.isVerboseTracingEnabled) {
                        Object objBeginSection2 = Trace.INSTANCE.beginSection("Compose:applyObservers");
                        try {
                            int size3 = list.size();
                            for (int i3 = 0; i3 < size3; i3++) {
                                ((bm3) list.get(i3)).invoke(setWrapIntoSet2, this);
                            }
                            j59 j59Var3 = j59.a;
                            Trace.INSTANCE.endSection(objBeginSection2);
                        } catch (Throwable th2) {
                            Trace.INSTANCE.endSection(objBeginSection2);
                            throw th2;
                        }
                    } else {
                        int size4 = list.size();
                        for (int i4 = 0; i4 < size4; i4++) {
                            ((bm3) list.get(i4)).invoke(setWrapIntoSet2, this);
                        }
                    }
                }
                SnapshotObserverKt.dispatchObserverOnApplied(this, modified$runtime2);
                synchronized (SnapshotKt.getLock()) {
                    try {
                        releasePinnedSnapshotsForCloseLocked$runtime();
                        SnapshotKt.checkAndOverwriteUnusedRecordsLocked();
                        if (modified$runtime != null) {
                            Object[] objArr = modified$runtime.elements;
                            long[] jArr = modified$runtime.metadata;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i5 = 0;
                                j = 128;
                                while (true) {
                                    long j3 = jArr[i5];
                                    j2 = 255;
                                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i5 != length) {
                                            break;
                                            break;
                                        }
                                        i5++;
                                    } else {
                                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                                        for (int i7 = 0; i7 < i6; i7++) {
                                            if ((j3 & 255) < 128) {
                                                SnapshotKt.processForUnusedRecordsLocked((StateObject) objArr[(i5 << 3) + i7]);
                                            }
                                            j3 >>= 8;
                                        }
                                        if (i6 != 8) {
                                            break;
                                        }
                                        if (i5 != length) {
                                            break;
                                        }
                                        i5++;
                                    }
                                }
                            } else {
                                j = 128;
                                j2 = 255;
                            }
                        } else {
                            j = 128;
                            j2 = 255;
                        }
                        if (modified$runtime2 != null) {
                            Object[] objArr2 = modified$runtime2.elements;
                            long[] jArr2 = modified$runtime2.metadata;
                            int length2 = jArr2.length - 2;
                            if (length2 >= 0) {
                                int i8 = 0;
                                while (true) {
                                    long j4 = jArr2[i8];
                                    if ((((~j4) << 7) & j4 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i8 != length2) {
                                            break;
                                            break;
                                        }
                                        i8++;
                                    } else {
                                        int i9 = 8 - ((~(i8 - length2)) >>> 31);
                                        for (int i10 = 0; i10 < i9; i10++) {
                                            if ((j4 & j2) < j) {
                                                SnapshotKt.processForUnusedRecordsLocked((StateObject) objArr2[(i8 << 3) + i10]);
                                            }
                                            j4 >>= 8;
                                        }
                                        if (i9 != 8) {
                                            break;
                                        }
                                        if (i8 != length2) {
                                            break;
                                        }
                                        i8++;
                                    }
                                }
                            }
                        }
                        List<? extends StateObject> list2 = this.merged;
                        if (list2 != null) {
                            int size5 = list2.size();
                            for (int i11 = 0; i11 < size5; i11++) {
                                SnapshotKt.processForUnusedRecordsLocked(list2.get(i11));
                            }
                        }
                        this.merged = null;
                        j59 j59Var4 = j59.a;
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                return SnapshotApplyResult.Success.INSTANCE;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void closeLocked$runtime() {
        SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.clear(getSnapshotId()).andNot(this.previousIds);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
        if (getDisposed$runtime()) {
            return;
        }
        super.dispose();
        mo5628nestedDeactivated$runtime(this);
        SnapshotObserverKt.dispatchObserverOnPreDispose(this);
    }

    public final boolean getApplied$runtime() {
        return this.applied;
    }

    public final List<StateObject> getMerged$runtime() {
        return this.merged;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public MutableScatterSet<StateObject> getModified$runtime() {
        return this.modified;
    }

    public final SnapshotIdSet getPreviousIds$runtime() {
        return this.previousIds;
    }

    public final int[] getPreviousPinnedSnapshots$runtime() {
        return this.previousPinnedSnapshots;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: getReadObserver$runtime */
    public nl3<Object, j59> getReadObserver() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean getReadOnly() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public Snapshot getRoot() {
        return this;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public int getWriteCount$runtime() {
        return this.writeCount;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public nl3<Object, j59> getWriteObserver$runtime() {
        return this.writeObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean hasPendingChanges() {
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        return modified$runtime != null && modified$runtime.isNotEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:67:0x017a  */
    /* JADX WARN: Code duplicated, block: B:69:0x0184  */
    /* JADX WARN: Code duplicated, block: B:78:0x01af  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b6 A[LOOP:3: B:79:0x01b4->B:80:0x01b6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:88:0x019a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final SnapshotApplyResult innerApplyLocked$runtime(long j, MutableScatterSet<StateObject> mutableScatterSet, Map<StateRecord, ? extends StateRecord> map, SnapshotIdSet snapshotIdSet) {
        ArrayList arrayList;
        ArrayList arrayListH0;
        ArrayList arrayList2;
        int size;
        int i;
        List<? extends StateObject> list;
        int size2;
        int i2;
        StateObject stateObject;
        StateRecord stateRecord;
        SnapshotIdSet snapshotIdSet2;
        Object[] objArr;
        long[] jArr;
        SnapshotIdSet snapshotIdSet3;
        Object[] objArr2;
        long[] jArr2;
        int i3;
        long j2;
        ArrayList arrayList3;
        StateRecord stateRecordMergeRecords;
        SnapshotIdSet snapshotIdSetOr = getInvalid$runtime().set(getSnapshotId()).or(this.previousIds);
        Object[] objArr3 = mutableScatterSet.elements;
        long[] jArr3 = mutableScatterSet.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i4 = 0;
            arrayList2 = null;
            arrayListH0 = null;
            while (true) {
                long j3 = jArr3[i4];
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8 - ((~(i4 - length)) >>> 31);
                    int i6 = 0;
                    while (i6 < i5) {
                        if ((j3 & 255) < 128) {
                            objArr2 = objArr3;
                            StateObject stateObject2 = (StateObject) objArr3[(i4 << 3) + i6];
                            jArr2 = jArr3;
                            StateRecord firstStateRecord = stateObject2.getFirstStateRecord();
                            i3 = i6;
                            ArrayList arrayList4 = arrayList2;
                            StateRecord stateRecord2 = SnapshotKt.readable(firstStateRecord, j, snapshotIdSet);
                            if (stateRecord2 == null) {
                                arrayList3 = arrayListH0;
                                j2 = j3;
                            } else {
                                arrayList3 = arrayListH0;
                                j2 = j3;
                                StateRecord stateRecord3 = SnapshotKt.readable(firstStateRecord, getSnapshotId(), snapshotIdSetOr);
                                if (stateRecord3 != null && stateRecord3.getSnapshotId$runtime() != SnapshotId_jvmKt.toSnapshotId(1) && !stateRecord2.equals(stateRecord3)) {
                                    snapshotIdSet3 = snapshotIdSetOr;
                                    StateRecord stateRecord4 = SnapshotKt.readable(firstStateRecord, getSnapshotId(), getInvalid$runtime());
                                    if (stateRecord4 == null) {
                                        SnapshotKt.readError();
                                        h8.d();
                                        return null;
                                    }
                                    if (map == null || (stateRecordMergeRecords = map.get(stateRecord2)) == null) {
                                        stateRecordMergeRecords = stateObject2.mergeRecords(stateRecord3, stateRecord2, stateRecord4);
                                    }
                                    if (stateRecordMergeRecords == null) {
                                        return new SnapshotApplyResult.Failure(this);
                                    }
                                    if (!stateRecordMergeRecords.equals(stateRecord4)) {
                                        if (stateRecordMergeRecords.equals(stateRecord2)) {
                                            ArrayList arrayList5 = arrayList4 == null ? new ArrayList() : arrayList4;
                                            arrayList5.add(new b36(stateObject2, stateRecord2.create(getSnapshotId())));
                                            arrayListH0 = arrayList3 == null ? new ArrayList() : arrayList3;
                                            arrayListH0.add(stateObject2);
                                            arrayList2 = arrayList5;
                                        } else {
                                            arrayList2 = arrayList4 == null ? new ArrayList() : arrayList4;
                                            arrayList2.add(!stateRecordMergeRecords.equals(stateRecord3) ? new b36(stateObject2, stateRecordMergeRecords) : new b36(stateObject2, stateRecord3.create(getSnapshotId())));
                                        }
                                    }
                                    arrayListH0 = arrayList3;
                                }
                                arrayList2 = arrayList4;
                                arrayListH0 = arrayList3;
                            }
                            snapshotIdSet3 = snapshotIdSetOr;
                            arrayList2 = arrayList4;
                            arrayListH0 = arrayList3;
                        } else {
                            snapshotIdSet3 = snapshotIdSetOr;
                            objArr2 = objArr3;
                            jArr2 = jArr3;
                            i3 = i6;
                            j2 = j3;
                        }
                        j3 = j2 >> 8;
                        i6 = i3 + 1;
                        jArr3 = jArr2;
                        objArr3 = objArr2;
                        snapshotIdSetOr = snapshotIdSet3;
                    }
                    snapshotIdSet2 = snapshotIdSetOr;
                    objArr = objArr3;
                    jArr = jArr3;
                    if (i5 != 8) {
                        break;
                    }
                } else {
                    snapshotIdSet2 = snapshotIdSetOr;
                    objArr = objArr3;
                    jArr = jArr3;
                }
                if (i4 != length) {
                    i4++;
                    jArr3 = jArr;
                    objArr3 = objArr;
                    snapshotIdSetOr = snapshotIdSet2;
                } else {
                    arrayList = arrayList2;
                }
            }
            if (arrayList2 != null) {
                advance$runtime();
                size2 = arrayList2.size();
                for (i2 = 0; i2 < size2; i2++) {
                    b36 b36Var = (b36) arrayList2.get(i2);
                    stateObject = (StateObject) b36Var.b;
                    stateRecord = (StateRecord) b36Var.c;
                    stateRecord.setSnapshotId$runtime(j);
                    synchronized (SnapshotKt.getLock()) {
                        stateRecord.setNext$runtime(stateObject.getFirstStateRecord());
                        stateObject.prependStateRecord(stateRecord);
                        j59 j59Var = j59.a;
                    }
                }
            }
            if (arrayListH0 != null) {
                size = arrayListH0.size();
                for (i = 0; i < size; i++) {
                    mutableScatterSet.remove((StateObject) arrayListH0.get(i));
                }
                list = this.merged;
                if (list != null) {
                    arrayListH0 = qn1.h0(arrayListH0, list);
                }
                this.merged = arrayListH0;
            }
            return SnapshotApplyResult.Success.INSTANCE;
        }
        arrayList = null;
        arrayListH0 = null;
        arrayList2 = arrayList;
        if (arrayList2 != null) {
            advance$runtime();
            size2 = arrayList2.size();
            while (i2 < size2) {
                b36 b36Var2 = (b36) arrayList2.get(i2);
                stateObject = (StateObject) b36Var2.b;
                stateRecord = (StateRecord) b36Var2.c;
                stateRecord.setSnapshotId$runtime(j);
                synchronized (SnapshotKt.getLock()) {
                    stateRecord.setNext$runtime(stateObject.getFirstStateRecord());
                    stateObject.prependStateRecord(stateRecord);
                    j59 j59Var2 = j59.a;
                }
            }
        }
        if (arrayListH0 != null) {
            size = arrayListH0.size();
            while (i < size) {
                mutableScatterSet.remove((StateObject) arrayListH0.get(i));
            }
            list = this.merged;
            if (list != null) {
                arrayListH0 = qn1.h0(arrayListH0, list);
            }
            this.merged = arrayListH0;
        }
        return SnapshotApplyResult.Success.INSTANCE;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: nestedActivated$runtime */
    public void mo5627nestedActivated$runtime(Snapshot snapshot) {
        this.snapshots++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: nestedDeactivated$runtime */
    public void mo5628nestedDeactivated$runtime(Snapshot snapshot) {
        if (!(this.snapshots > 0)) {
            PreconditionsKt.throwIllegalArgumentException("no pending nested snapshots");
        }
        int i = this.snapshots - 1;
        this.snapshots = i;
        if (i != 0 || this.applied) {
            return;
        }
        abandon();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime() {
        if (this.applied || getDisposed$runtime()) {
            return;
        }
        advance$runtime();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* JADX INFO: renamed from: recordModified$runtime */
    public void mo5629recordModified$runtime(StateObject stateObject) {
        MutableScatterSet<StateObject> modified$runtime = getModified$runtime();
        if (modified$runtime == null) {
            modified$runtime = ScatterSetKt.mutableScatterSetOf();
            setModified$runtime(modified$runtime);
        }
        modified$runtime.add(stateObject);
    }

    public final void recordPrevious$runtime(long j) {
        synchronized (SnapshotKt.getLock()) {
            this.previousIds = this.previousIds.set(j);
            j59 j59Var = j59.a;
        }
    }

    public final void recordPreviousList$runtime(SnapshotIdSet snapshotIdSet) {
        synchronized (SnapshotKt.getLock()) {
            this.previousIds = this.previousIds.or(snapshotIdSet);
            j59 j59Var = j59.a;
        }
    }

    public final void recordPreviousPinnedSnapshot$runtime(int i) {
        if (i >= 0) {
            int[] iArr = this.previousPinnedSnapshots;
            iArr.getClass();
            int length = iArr.length;
            int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
            iArrCopyOf[length] = i;
            this.previousPinnedSnapshots = iArrCopyOf;
        }
    }

    public final void recordPreviousPinnedSnapshots$runtime(int[] iArr) {
        if (iArr.length == 0) {
            return;
        }
        int[] iArr2 = this.previousPinnedSnapshots;
        if (iArr2.length != 0) {
            iArr = aq5.y(iArr2, iArr);
        }
        this.previousPinnedSnapshots = iArr;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void releasePinnedSnapshotsForCloseLocked$runtime() {
        releasePreviouslyPinnedSnapshotsLocked();
        super.releasePinnedSnapshotsForCloseLocked$runtime();
    }

    public final void setApplied$runtime(boolean z) {
        this.applied = z;
    }

    public final void setMerged$runtime(List<? extends StateObject> list) {
        this.merged = list;
    }

    public void setModified$runtime(MutableScatterSet<StateObject> mutableScatterSet) {
        this.modified = mutableScatterSet;
    }

    public final void setPreviousIds$runtime(SnapshotIdSet snapshotIdSet) {
        this.previousIds = snapshotIdSet;
    }

    public final void setPreviousPinnedSnapshots$runtime(int[] iArr) {
        this.previousPinnedSnapshots = iArr;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void setWriteCount$runtime(int i) {
        this.writeCount = i;
    }

    public MutableSnapshot takeNestedMutableSnapshot(nl3<Object, j59> nl3Var, nl3<Object, j59> nl3Var2) {
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        NestedMutableSnapshot nestedMutableSnapshot;
        validateNotDisposed$runtime();
        validateNotAppliedOrPinned();
        PersistentList persistentList = SnapshotObserverKt.observers;
        nl3<Object, j59> nl3Var3 = nl3Var;
        nl3<Object, j59> writeObserver = nl3Var2;
        if (persistentList != null) {
            b36<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> b36VarMergeObservers = SnapshotObserverKt.mergeObservers(persistentList, this, false, nl3Var3, writeObserver);
            SnapshotInstanceObservers snapshotInstanceObservers = b36VarMergeObservers.b;
            nl3<Object, j59> readObserver = snapshotInstanceObservers.getReadObserver();
            writeObserver = snapshotInstanceObservers.getWriteObserver();
            map = b36VarMergeObservers.c;
            nl3Var3 = readObserver;
        } else {
            map = null;
        }
        recordPrevious$runtime(getSnapshotId());
        synchronized (SnapshotKt.getLock()) {
            long j = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId++;
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(j);
            SnapshotIdSet invalid$runtime = getInvalid$runtime();
            setInvalid$runtime(invalid$runtime.set(j));
            nestedMutableSnapshot = new NestedMutableSnapshot(j, SnapshotKt.addRange(invalid$runtime, getSnapshotId() + 1, j), SnapshotKt.mergedReadObserver$default(nl3Var3, getReadObserver(), false, 4, null), SnapshotKt.mergedWriteObserver(writeObserver, getWriteObserver$runtime()), this);
        }
        if (!getApplied$runtime() && !getDisposed$runtime()) {
            long snapshotId = getSnapshotId();
            synchronized (SnapshotKt.getLock()) {
                long j2 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId++;
                setSnapshotId$runtime(j2);
                SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(getSnapshotId());
                j59 j59Var = j59.a;
            }
            setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId + 1, getSnapshotId()));
        }
        if (persistentList != null) {
            SnapshotObserverKt.dispatchCreatedObservers(persistentList, this, nestedMutableSnapshot, map);
        }
        return nestedMutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public Snapshot takeNestedSnapshot(nl3<Object, j59> nl3Var) {
        nl3<Object, j59> nl3Var2;
        Map<SnapshotObserver, SnapshotInstanceObservers> map;
        NestedReadonlySnapshot nestedReadonlySnapshot;
        validateNotDisposed$runtime();
        validateNotAppliedOrPinned();
        long snapshotId = getSnapshotId();
        MutableSnapshot mutableSnapshot = this instanceof GlobalSnapshot ? null : this;
        PersistentList persistentList = SnapshotObserverKt.observers;
        if (persistentList != null) {
            b36<SnapshotInstanceObservers, Map<SnapshotObserver, SnapshotInstanceObservers>> b36VarMergeObservers = SnapshotObserverKt.mergeObservers(persistentList, mutableSnapshot, true, nl3Var, null);
            SnapshotInstanceObservers snapshotInstanceObservers = b36VarMergeObservers.b;
            nl3<Object, j59> readObserver = snapshotInstanceObservers.getReadObserver();
            snapshotInstanceObservers.getWriteObserver();
            nl3Var2 = readObserver;
            map = b36VarMergeObservers.c;
        } else {
            nl3Var2 = nl3Var;
            map = null;
        }
        recordPrevious$runtime(getSnapshotId());
        synchronized (SnapshotKt.getLock()) {
            long j = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId++;
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(j);
            nestedReadonlySnapshot = new NestedReadonlySnapshot(j, SnapshotKt.addRange(getInvalid$runtime(), snapshotId + 1, j), SnapshotKt.mergedReadObserver$default(nl3Var2, getReadObserver(), false, 4, null), this);
        }
        if (!getApplied$runtime() && !getDisposed$runtime()) {
            long snapshotId2 = getSnapshotId();
            synchronized (SnapshotKt.getLock()) {
                long j2 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId++;
                setSnapshotId$runtime(j2);
                SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(getSnapshotId());
                j59 j59Var = j59.a;
            }
            setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId2 + 1, getSnapshotId()));
        }
        if (persistentList != null) {
            SnapshotObserverKt.dispatchCreatedObservers(persistentList, mutableSnapshot, nestedReadonlySnapshot, map);
        }
        return nestedReadonlySnapshot;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final void advance$runtime() {
        recordPrevious$runtime(getSnapshotId());
        j59 j59Var = j59.a;
        if (getApplied$runtime() || getDisposed$runtime()) {
            return;
        }
        long snapshotId = getSnapshotId();
        synchronized (SnapshotKt.getLock()) {
            long j = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId++;
            setSnapshotId$runtime(j);
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.set(getSnapshotId());
        }
        setInvalid$runtime(SnapshotKt.addRange(getInvalid$runtime(), snapshotId + 1, getSnapshotId()));
    }
}
