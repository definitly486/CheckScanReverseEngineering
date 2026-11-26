package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import defpackage.ah;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class DerivedSnapshotState<T> extends StateObjectImpl implements DerivedState<T> {
    private final ll3<T> calculation;
    private ResultRecord<T> first = new ResultRecord<>(SnapshotKt.currentSnapshot().getSnapshotId());
    private final SnapshotMutationPolicy<T> policy;

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedSnapshotState(ll3<? extends T> ll3Var, SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        this.calculation = ll3Var;
        this.policy = snapshotMutationPolicy;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00ab A[Catch: all -> 0x0043, LOOP:1: B:16:0x0056->B:30:0x00ab, LOOP_END, TryCatch #2 {all -> 0x0043, blocks: (B:8:0x0026, B:10:0x0036, B:13:0x0046, B:16:0x0056, B:18:0x0069, B:20:0x0074, B:22:0x007e, B:24:0x0097, B:26:0x009d, B:30:0x00ab, B:31:0x00b1), top: B:87:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x00b1 A[EDGE_INSN: B:92:0x00b1->B:31:0x00b1 BREAK  A[LOOP:1: B:16:0x0056->B:30:0x00ab], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private final ResultRecord<T> currentRecord(ResultRecord<T> resultRecord, Snapshot snapshot, boolean z, ll3<? extends T> ll3Var) {
        Snapshot.Companion companion;
        SnapshotMutationPolicy<T> policy;
        int i;
        ResultRecord<T> resultRecord2 = resultRecord;
        int i2 = 0;
        if (!resultRecord2.isValid(this, snapshot)) {
            final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap(0, 1, null);
            final IntRef intRef = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
            if (intRef == null) {
                intRef = new IntRef(0);
                SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.set(intRef);
            }
            final int element = intRef.getElement();
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
            DerivedStateObserver[] derivedStateObserverArr = mutableVectorDerivedStateObservers.content;
            int size = mutableVectorDerivedStateObservers.getSize();
            for (int i3 = 0; i3 < size; i3++) {
                derivedStateObserverArr[i3].start(this);
            }
            try {
                intRef.setElement(element + 1);
                Object objObserve = Snapshot.Companion.observe(new nl3() { // from class: androidx.compose.runtime.c
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DerivedSnapshotState.currentRecord$lambda$1$0$0(this.b, intRef, mutableObjectIntMap, element, obj);
                    }
                }, null, ll3Var);
                intRef.setElement(element);
                DerivedStateObserver[] derivedStateObserverArr2 = mutableVectorDerivedStateObservers.content;
                int size2 = mutableVectorDerivedStateObservers.getSize();
                for (int i4 = 0; i4 < size2; i4++) {
                    derivedStateObserverArr2[i4].done(this);
                }
                synchronized (SnapshotKt.getLock()) {
                    try {
                        companion = Snapshot.Companion;
                        Snapshot current = companion.getCurrent();
                        if (resultRecord2.getResult() == ResultRecord.Companion.getUnset() || (policy = getPolicy()) == 0 || !policy.equivalent(objObserve, resultRecord2.getResult())) {
                            resultRecord2 = (ResultRecord) SnapshotKt.newWritableRecord(this.first, this, current);
                            resultRecord2.setDependencies(mutableObjectIntMap);
                            resultRecord2.setResultHash(resultRecord2.readableHash(this, current));
                            resultRecord2.setResult(objObserve);
                        } else {
                            resultRecord2.setDependencies(mutableObjectIntMap);
                            resultRecord2.setResultHash(resultRecord2.readableHash(this, current));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                IntRef intRef2 = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
                if (intRef2 == null || intRef2.getElement() != 0) {
                    return resultRecord2;
                }
                companion.notifyObjectsInitialized();
                synchronized (SnapshotKt.getLock()) {
                    Snapshot current2 = companion.getCurrent();
                    resultRecord2.setValidSnapshotId(current2.getSnapshotId());
                    resultRecord2.setValidSnapshotWriteCount(current2.getWriteCount$runtime());
                    j59 j59Var = j59.a;
                }
                return resultRecord2;
            } catch (Throwable th2) {
                DerivedStateObserver[] derivedStateObserverArr3 = mutableVectorDerivedStateObservers.content;
                int size3 = mutableVectorDerivedStateObservers.getSize();
                for (int i5 = 0; i5 < size3; i5++) {
                    derivedStateObserverArr3[i5].done(this);
                }
                throw th2;
            }
        }
        if (z) {
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers2 = SnapshotStateKt.derivedStateObservers();
            DerivedStateObserver[] derivedStateObserverArr4 = mutableVectorDerivedStateObservers2.content;
            int size4 = mutableVectorDerivedStateObservers2.getSize();
            for (int i6 = 0; i6 < size4; i6++) {
                derivedStateObserverArr4[i6].start(this);
            }
            try {
                ObjectIntMap<StateObject> dependencies = resultRecord2.getDependencies();
                IntRef intRef3 = (IntRef) SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.get();
                if (intRef3 == null) {
                    intRef3 = new IntRef(0);
                    SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel.set(intRef3);
                }
                int element2 = intRef3.getElement();
                Object[] objArr = dependencies.keys;
                int[] iArr = dependencies.values;
                long[] jArr = dependencies.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i7 = 0;
                    while (true) {
                        long j = jArr[i7];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                            if (i7 != length) {
                                break;
                                break;
                            }
                            i7++;
                            i2 = 0;
                        } else {
                            int i8 = 8;
                            int i9 = 8 - ((~(i7 - length)) >>> 31);
                            while (i2 < i9) {
                                if ((j & 255) < 128) {
                                    int i10 = (i7 << 3) + i2;
                                    i = i8;
                                    StateObject stateObject = (StateObject) objArr[i10];
                                    intRef3.setElement(element2 + iArr[i10]);
                                    nl3<Object, j59> readObserver = snapshot.getReadObserver();
                                    if (readObserver != null) {
                                        readObserver.invoke(stateObject);
                                    }
                                } else {
                                    i = i8;
                                }
                                j >>= i;
                                i2++;
                                i8 = i;
                            }
                            if (i9 != i8) {
                                break;
                            }
                            if (i7 != length) {
                                break;
                            }
                            i7++;
                            i2 = 0;
                        }
                    }
                }
                intRef3.setElement(element2);
                j59 j59Var2 = j59.a;
            } finally {
                DerivedStateObserver[] derivedStateObserverArr5 = mutableVectorDerivedStateObservers2.content;
                int size5 = mutableVectorDerivedStateObservers2.getSize();
                for (int i11 = 0; i11 < size5; i11++) {
                    derivedStateObserverArr5[i11].done(this);
                }
            }
        }
        return resultRecord2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 currentRecord$lambda$1$0$0(DerivedSnapshotState derivedSnapshotState, IntRef intRef, MutableObjectIntMap mutableObjectIntMap, int i, Object obj) {
        if (obj == derivedSnapshotState) {
            ah.f("A derived state calculation cannot read itself");
            return null;
        }
        if (obj instanceof StateObject) {
            mutableObjectIntMap.set(obj, Math.min(intRef.getElement() - i, mutableObjectIntMap.getOrDefault(obj, Integer.MAX_VALUE)));
        }
        return j59.a;
    }

    private final String displayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        return resultRecord.isValid(this, Snapshot.Companion.getCurrent()) ? String.valueOf(resultRecord.getResult()) : "<Not calculated>";
    }

    public static /* synthetic */ void getDebuggerDisplayValue$annotations() {
    }

    public final ResultRecord<?> current(Snapshot snapshot) {
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, snapshot), snapshot, false, this.calculation);
    }

    @Override // androidx.compose.runtime.DerivedState
    public DerivedState.Record<T> getCurrentRecord() {
        Snapshot current = Snapshot.Companion.getCurrent();
        return currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, false, this.calculation);
    }

    public final T getDebuggerDisplayValue() {
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.current(this.first);
        if (resultRecord.isValid(this, Snapshot.Companion.getCurrent())) {
            return (T) resultRecord.getResult();
        }
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public StateRecord getFirstStateRecord() {
        return this.first;
    }

    @Override // androidx.compose.runtime.DerivedState
    public SnapshotMutationPolicy<T> getPolicy() {
        return this.policy;
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        Snapshot.Companion companion = Snapshot.Companion;
        nl3<Object, j59> readObserver = companion.getCurrent().getReadObserver();
        if (readObserver != null) {
            readObserver.invoke(this);
        }
        Snapshot current = companion.getCurrent();
        return (T) currentRecord((ResultRecord) SnapshotKt.current(this.first, current), current, true, this.calculation).getResult();
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void prependStateRecord(StateRecord stateRecord) {
        stateRecord.getClass();
        this.first = (ResultRecord) stateRecord;
    }

    public String toString() {
        return "DerivedState(value=" + displayValue() + ")@" + hashCode();
    }

    public static final class ResultRecord<T> extends StateRecord implements DerivedState.Record<T> {
        private ObjectIntMap<StateObject> dependencies;
        private Object result;
        private int resultHash;
        private long validSnapshotId;
        private int validSnapshotWriteCount;
        public static final Companion Companion = new Companion(null);
        public static final int $stable = 8;
        private static final Object Unset = new Object();

        public ResultRecord(long j) {
            super(j);
            this.dependencies = ObjectIntMapKt.emptyObjectIntMap();
            this.result = Unset;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void assign(StateRecord stateRecord) {
            stateRecord.getClass();
            ResultRecord resultRecord = (ResultRecord) stateRecord;
            setDependencies(resultRecord.getDependencies());
            this.result = resultRecord.result;
            this.resultHash = resultRecord.resultHash;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create() {
            return create(SnapshotKt.currentSnapshot().getSnapshotId());
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public T getCurrentValue() {
            return (T) this.result;
        }

        @Override // androidx.compose.runtime.DerivedState.Record
        public ObjectIntMap<StateObject> getDependencies() {
            return this.dependencies;
        }

        public final Object getResult() {
            return this.result;
        }

        public final int getResultHash() {
            return this.resultHash;
        }

        public final long getValidSnapshotId() {
            return this.validSnapshotId;
        }

        public final int getValidSnapshotWriteCount() {
            return this.validSnapshotWriteCount;
        }

        public final boolean isValid(DerivedState<?> derivedState, Snapshot snapshot) {
            boolean z;
            boolean z2;
            synchronized (SnapshotKt.getLock()) {
                z = true;
                z2 = (this.validSnapshotId == snapshot.getSnapshotId() && this.validSnapshotWriteCount == snapshot.getWriteCount$runtime()) ? false : true;
            }
            if (this.result == Unset || (z2 && this.resultHash != readableHash(derivedState, snapshot))) {
                z = false;
            }
            if (!z || !z2) {
                return z;
            }
            synchronized (SnapshotKt.getLock()) {
                this.validSnapshotId = snapshot.getSnapshotId();
                this.validSnapshotWriteCount = snapshot.getWriteCount$runtime();
                j59 j59Var = j59.a;
            }
            return z;
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00db A[PHI: r12
          0x00db: PHI (r12v1 int) = (r12v0 int), (r12v2 int) binds: [B:29:0x00ac, B:39:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:43:0x00e1 A[Catch: all -> 0x00cf, LOOP:3: B:28:0x009f->B:43:0x00e1, LOOP_END, TryCatch #1 {all -> 0x00cf, blocks: (B:11:0x002c, B:14:0x0039, B:16:0x0048, B:18:0x0056, B:20:0x0060, B:49:0x011f, B:23:0x007f, B:25:0x0083, B:28:0x009f, B:30:0x00ae, B:32:0x00b8, B:34:0x00be, B:37:0x00d2, B:46:0x00fd, B:43:0x00e1, B:45:0x00eb, B:55:0x0142, B:59:0x0153), top: B:75:0x002c }] */
        /* JADX WARN: Code duplicated, block: B:62:0x015e A[DONT_GENERATE, LOOP:5: B:61:0x015c->B:62:0x015e, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:83:0x00fd A[EDGE_INSN: B:83:0x00fd->B:46:0x00fd BREAK  A[LOOP:3: B:28:0x009f->B:43:0x00e1], SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v10, types: [androidx.compose.runtime.DerivedSnapshotState$ResultRecord] */
        /* JADX WARN: Type inference failed for: r7v8, types: [androidx.compose.runtime.snapshots.StateRecord] */
        /* JADX WARN: Type inference failed for: r7v9, types: [androidx.compose.runtime.snapshots.StateRecord, java.lang.Object] */
        public final int readableHash(DerivedState<?> derivedState, Snapshot snapshot) {
            ObjectIntMap<StateObject> dependencies;
            int iIdentityHashCode;
            long[] jArr;
            int i;
            Object[] objArr;
            int[] iArr;
            long[] jArr2;
            int i2;
            Object[] objArr2;
            int[] iArr2;
            long j;
            long j2;
            int i3;
            ?? Current;
            synchronized (SnapshotKt.getLock()) {
                dependencies = getDependencies();
            }
            int i4 = 7;
            if (!dependencies.isNotEmpty()) {
                return 7;
            }
            MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
            DerivedStateObserver[] derivedStateObserverArr = mutableVectorDerivedStateObservers.content;
            int size = mutableVectorDerivedStateObservers.getSize();
            for (int i5 = 0; i5 < size; i5++) {
                derivedStateObserverArr[i5].start(derivedState);
            }
            try {
                Object[] objArr3 = dependencies.keys;
                int[] iArr3 = dependencies.values;
                long[] jArr3 = dependencies.metadata;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    iIdentityHashCode = 7;
                    int i6 = 0;
                    while (true) {
                        long j3 = jArr3[i6];
                        long j4 = -9187201950435737472L;
                        if ((((~j3) << i4) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i7 = 8;
                            int i8 = 8 - ((~(i6 - length)) >>> 31);
                            i = i4;
                            int i9 = 0;
                            while (i9 < i8) {
                                if ((j3 & 255) < 128) {
                                    int i10 = (i6 << 3) + i9;
                                    j2 = j4;
                                    StateObject stateObject = (StateObject) objArr3[i10];
                                    int i11 = i7;
                                    if (iArr3[i10] != 1) {
                                        jArr2 = jArr3;
                                        i2 = i9;
                                        objArr2 = objArr3;
                                        iArr2 = iArr3;
                                        j = j3;
                                    } else {
                                        if (stateObject instanceof DerivedSnapshotState) {
                                            Current = ((DerivedSnapshotState) stateObject).current(snapshot);
                                            ObjectIntMap<StateObject> dependencies2 = Current.getDependencies();
                                            Object[] objArr4 = dependencies2.keys;
                                            long[] jArr4 = dependencies2.metadata;
                                            jArr2 = jArr3;
                                            int length2 = jArr4.length - 2;
                                            i2 = i9;
                                            objArr2 = objArr3;
                                            iArr2 = iArr3;
                                            if (length2 >= 0) {
                                                int i12 = 0;
                                                while (true) {
                                                    long j5 = jArr4[i12];
                                                    j = j3;
                                                    int iIdentityHashCode2 = iIdentityHashCode;
                                                    if ((((~j5) << i) & j5 & j2) == j2) {
                                                        iIdentityHashCode = iIdentityHashCode2;
                                                        if (i12 != length2) {
                                                            break;
                                                            break;
                                                        }
                                                        i12++;
                                                        j3 = j;
                                                        i11 = 8;
                                                    } else {
                                                        int i13 = 8 - ((~(i12 - length2)) >>> 31);
                                                        for (int i14 = 0; i14 < i13; i14++) {
                                                            if ((j5 & 255) < 128) {
                                                                iIdentityHashCode2 = (iIdentityHashCode2 * 31) + System_jvmKt.identityHashCode((StateObject) objArr4[(i12 << 3) + i14]);
                                                            }
                                                            j5 >>= i11;
                                                        }
                                                        if (i13 != i11) {
                                                            iIdentityHashCode = iIdentityHashCode2;
                                                            break;
                                                        }
                                                        iIdentityHashCode = iIdentityHashCode2;
                                                        if (i12 != length2) {
                                                            break;
                                                        }
                                                        i12++;
                                                        j3 = j;
                                                        i11 = 8;
                                                    }
                                                }
                                            } else {
                                                j = j3;
                                            }
                                        } else {
                                            jArr2 = jArr3;
                                            i2 = i9;
                                            objArr2 = objArr3;
                                            iArr2 = iArr3;
                                            j = j3;
                                            Current = SnapshotKt.current(stateObject.getFirstStateRecord(), snapshot);
                                        }
                                        iIdentityHashCode = (((iIdentityHashCode * 31) + System_jvmKt.identityHashCode(Current)) * 31) + Long.hashCode(Current.getSnapshotId$runtime());
                                    }
                                    i3 = 8;
                                } else {
                                    jArr2 = jArr3;
                                    i2 = i9;
                                    objArr2 = objArr3;
                                    iArr2 = iArr3;
                                    j = j3;
                                    j2 = j4;
                                    i3 = i7;
                                }
                                j3 = j >> i3;
                                i9 = i2 + 1;
                                i7 = i3;
                                jArr3 = jArr2;
                                j4 = j2;
                                objArr3 = objArr2;
                                iArr3 = iArr2;
                            }
                            jArr = jArr3;
                            objArr = objArr3;
                            iArr = iArr3;
                            if (i8 != i7) {
                                break;
                            }
                        } else {
                            jArr = jArr3;
                            i = i4;
                            objArr = objArr3;
                            iArr = iArr3;
                        }
                        if (i6 != length) {
                            i6++;
                            i4 = i;
                            jArr3 = jArr;
                            objArr3 = objArr;
                            iArr3 = iArr;
                        } else {
                            i4 = iIdentityHashCode;
                        }
                    }
                    j59 j59Var = j59.a;
                    return iIdentityHashCode;
                }
                iIdentityHashCode = i4;
                j59 j59Var2 = j59.a;
                return iIdentityHashCode;
            } finally {
                DerivedStateObserver[] derivedStateObserverArr2 = mutableVectorDerivedStateObservers.content;
                int size2 = mutableVectorDerivedStateObservers.getSize();
                for (int i15 = 0; i15 < size2; i15++) {
                    derivedStateObserverArr2[i15].done(derivedState);
                }
            }
        }

        public void setDependencies(ObjectIntMap<StateObject> objectIntMap) {
            this.dependencies = objectIntMap;
        }

        public final void setResult(Object obj) {
            this.result = obj;
        }

        public final void setResultHash(int i) {
            this.resultHash = i;
        }

        public final void setValidSnapshotId(long j) {
            this.validSnapshotId = j;
        }

        public final void setValidSnapshotWriteCount(int i) {
            this.validSnapshotWriteCount = i;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final Object getUnset() {
                return ResultRecord.Unset;
            }

            private Companion() {
            }
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public StateRecord create(long j) {
            return new ResultRecord(j);
        }
    }
}
