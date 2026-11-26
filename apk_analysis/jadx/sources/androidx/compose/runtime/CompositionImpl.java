package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.ObservableComposition;
import defpackage.aa4;
import defpackage.av;
import defpackage.b36;
import defpackage.bm3;
import defpackage.fe0;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ox2;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionImpl implements ControlledComposition, ReusableComposition, RecomposeScopeOwner, CompositionServices, PausableComposition, ObservableComposition {
    public static final int $stable = 8;
    private final Set<RememberObserver> abandonSet;
    private final Applier<?> applier;
    private final Changes changes;
    private bm3<? super Composer, ? super Integer, j59> composable;
    private final InternalComposer composer;
    private final MutableScatterSet<RecomposeScopeImpl> conditionallyInvalidatedScopes;
    private final MutableScatterMap<Object, Object> derivedStates;
    private final MutableScatterSet<RecomposeScopeImpl> invalidatedScopes;
    private CompositionImpl invalidationDelegate;
    private int invalidationDelegateGroup;
    private MutableScatterMap<Object, Object> invalidations;
    private final boolean isRoot;
    private final Changes lateChanges;
    private final MutableScatterMap<Object, Object> observations;
    private final MutableScatterMap<Object, Object> observationsProcessed;
    private final CompositionObserverHolder observerHolder;
    private final CompositionContext parent;
    private boolean pendingInvalidScopes;
    private PausedCompositionImpl pendingPausedComposition;
    private final RememberEventDispatcher rememberManager;
    private ShouldPauseCallback shouldPause;
    private final SlotStorage slotStorage;
    private int state;
    private final AtomicReference<Object> pendingModifications = new AtomicReference<>(null);
    private final Object lock = new Object();

    public CompositionImpl(CompositionContext compositionContext, Applier<?> applier) {
        this.parent = compositionContext;
        this.applier = applier;
        jh2 jh2Var = null;
        int i = 0;
        int i2 = 1;
        this.abandonSet = new MutableScatterSet(i, i2, jh2Var).asMutableSet();
        SlotStorage slotStorageCreateSlotStorage = createSlotStorage();
        if (compositionContext.getCollectingCallByInformation$runtime()) {
            slotStorageCreateSlotStorage.collectCalledByInformation();
        }
        if (compositionContext.getCollectingSourceInformation$runtime()) {
            slotStorageCreateSlotStorage.collectSourceInformation();
        }
        this.slotStorage = slotStorageCreateSlotStorage;
        this.observations = ScopeMap.m5395constructorimpl$default(null, 1, null);
        this.invalidatedScopes = new MutableScatterSet<>(i, i2, jh2Var);
        this.conditionallyInvalidatedScopes = new MutableScatterSet<>(i, i2, jh2Var);
        this.derivedStates = ScopeMap.m5395constructorimpl$default(null, 1, null);
        this.changes = createChangeList();
        this.lateChanges = createChangeList();
        this.observationsProcessed = ScopeMap.m5395constructorimpl$default(null, 1, null);
        this.invalidations = ScopeMap.m5395constructorimpl$default(null, 1, null);
        this.observerHolder = new CompositionObserverHolder(null, false, compositionContext, 3, null);
        this.rememberManager = new RememberEventDispatcher();
        InternalComposer internalComposerCreateComposer = createComposer();
        compositionContext.registerComposer$runtime(internalComposerCreateComposer);
        this.composer = internalComposerCreateComposer;
        this.isRoot = compositionContext instanceof Recomposer;
        this.composable = ComposableSingletons$CompositionKt.INSTANCE.getLambda$954879418$runtime();
    }

    /* JADX WARN: Code duplicated, block: B:190:0x00c8 A[EDGE_INSN: B:190:0x00c8->B:37:0x00c8 BREAK  A[LOOP:2: B:23:0x0077->B:34:0x00b3], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x0187 A[EDGE_INSN: B:213:0x0187->B:74:0x0187 BREAK  A[LOOP:13: B:61:0x014b->B:72:0x017f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b3 A[LOOP:2: B:23:0x0077->B:34:0x00b3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:71:0x017d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x017f A[LOOP:13: B:61:0x014b->B:72:0x017f, LOOP_END] */
    private final void addPendingInvalidationsLocked(Set<? extends Object> set, boolean z) {
        char c;
        long j;
        long j2;
        long j3;
        long[] jArr;
        int i;
        long[] jArr2;
        int i2;
        int i3;
        long j4;
        boolean zContains;
        long[] jArr3;
        long[] jArr4;
        long[] jArr5;
        long j5;
        boolean zIsEmpty;
        int i4;
        long j6;
        long j7;
        char c2;
        long j8;
        int i5;
        int i6;
        Object obj = null;
        char c3 = 7;
        long j9 = -9187201950435737472L;
        int i7 = 8;
        if (set instanceof ScatterSetWrapper) {
            ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
            Object[] objArr = set$runtime.elements;
            long[] jArr6 = set$runtime.metadata;
            int length = jArr6.length - 2;
            if (length >= 0) {
                int i8 = 0;
                j2 = 128;
                while (true) {
                    long j10 = jArr6[i8];
                    j3 = 255;
                    if ((((~j10) << c3) & j10 & j9) != j9) {
                        int i9 = 8 - ((~(i8 - length)) >>> 31);
                        int i10 = 0;
                        while (i10 < i9) {
                            if ((j10 & 255) < 128) {
                                c2 = c3;
                                Object obj2 = objArr[(i8 << 3) + i10];
                                j8 = j9;
                                if (obj2 instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj2).invalidateForResult(obj);
                                    j7 = j10;
                                    i5 = length;
                                } else {
                                    addPendingInvalidationsLocked(obj2, z);
                                    Object obj3 = this.derivedStates.get(obj2);
                                    if (obj3 == null) {
                                        j7 = j10;
                                        i5 = length;
                                    } else if (obj3 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                                        Object[] objArr2 = mutableScatterSet.elements;
                                        long[] jArr7 = mutableScatterSet.metadata;
                                        int length2 = jArr7.length - 2;
                                        if (length2 >= 0) {
                                            j7 = j10;
                                            int i11 = 0;
                                            while (true) {
                                                long j11 = jArr7[i11];
                                                int i12 = i7;
                                                i5 = length;
                                                if ((((~j11) << c2) & j11 & j8) != j8) {
                                                    int i13 = 8 - ((~(i11 - length2)) >>> 31);
                                                    int i14 = 0;
                                                    while (i14 < i13) {
                                                        if ((j11 & 255) < 128) {
                                                            addPendingInvalidationsLocked((DerivedState) objArr2[(i11 << 3) + i14], z);
                                                        }
                                                        j11 >>= i12;
                                                        i14++;
                                                        i12 = i12;
                                                    }
                                                    if (i13 != i12) {
                                                        break;
                                                    }
                                                    if (i11 != length2) {
                                                        break;
                                                    }
                                                    i11++;
                                                    length = i5;
                                                    i7 = 8;
                                                } else if (i11 != length2) {
                                                    break;
                                                    break;
                                                } else {
                                                    i11++;
                                                    length = i5;
                                                    i7 = 8;
                                                }
                                            }
                                        } else {
                                            j7 = j10;
                                            i5 = length;
                                        }
                                    } else {
                                        j7 = j10;
                                        i5 = length;
                                        addPendingInvalidationsLocked((DerivedState) obj3, z);
                                    }
                                    j59 j59Var = j59.a;
                                }
                                i6 = 8;
                            } else {
                                j7 = j10;
                                c2 = c3;
                                j8 = j9;
                                i5 = length;
                                i6 = i7;
                            }
                            i10++;
                            length = i5;
                            i7 = i6;
                            c3 = c2;
                            j9 = j8;
                            j10 = j7 >> i6;
                            obj = null;
                        }
                        c = c3;
                        j = j9;
                        int i15 = length;
                        if (i9 != i7) {
                            break;
                        } else {
                            length = i15;
                        }
                    } else {
                        c = c3;
                        j = j9;
                    }
                    if (i8 == length) {
                        break;
                    }
                    i8++;
                    c3 = c;
                    j9 = j;
                    obj = null;
                    i7 = 8;
                }
            } else {
                c = 7;
                j = -9187201950435737472L;
                j2 = 128;
                j3 = 255;
            }
        } else {
            c = 7;
            j = -9187201950435737472L;
            j2 = 128;
            j3 = 255;
            for (Object obj4 : set) {
                if (obj4 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj4).invalidateForResult(null);
                } else {
                    addPendingInvalidationsLocked(obj4, z);
                    Object obj5 = this.derivedStates.get(obj4);
                    if (obj5 != null) {
                        if (obj5 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) obj5;
                            Object[] objArr3 = mutableScatterSet2.elements;
                            long[] jArr8 = mutableScatterSet2.metadata;
                            int length3 = jArr8.length - 2;
                            if (length3 >= 0) {
                                int i16 = 0;
                                while (true) {
                                    long j12 = jArr8[i16];
                                    if ((((~j12) << 7) & j12 & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i16 != length3) {
                                            break;
                                            break;
                                        }
                                        i16++;
                                    } else {
                                        int i17 = 8 - ((~(i16 - length3)) >>> 31);
                                        for (int i18 = 0; i18 < i17; i18++) {
                                            if ((j12 & 255) < 128) {
                                                addPendingInvalidationsLocked((DerivedState) objArr3[(i16 << 3) + i18], z);
                                            }
                                            j12 >>= 8;
                                        }
                                        if (i17 != 8) {
                                            break;
                                        } else if (i16 != length3) {
                                            break;
                                        } else {
                                            i16++;
                                        }
                                    }
                                }
                            }
                        } else {
                            addPendingInvalidationsLocked((DerivedState) obj5, z);
                        }
                    }
                    j59 j59Var2 = j59.a;
                }
            }
        }
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet3 = this.conditionallyInvalidatedScopes;
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet4 = this.invalidatedScopes;
        if (z && mutableScatterSet3.isNotEmpty()) {
            MutableScatterMap<Object, Object> mutableScatterMap = this.observations;
            long[] jArr9 = mutableScatterMap.metadata;
            int length4 = jArr9.length - 2;
            if (length4 >= 0) {
                int i19 = 0;
                while (true) {
                    long j13 = jArr9[i19];
                    if ((((~j13) << c) & j13 & j) != j) {
                        int i20 = 8 - ((~(i19 - length4)) >>> 31);
                        int i21 = 0;
                        while (i21 < i20) {
                            if ((j13 & j3) < j2) {
                                int i22 = (i19 << 3) + i21;
                                Object obj6 = mutableScatterMap.keys[i22];
                                Object obj7 = mutableScatterMap.values[i22];
                                if (obj7 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj7;
                                    Object[] objArr4 = mutableScatterSet5.elements;
                                    long[] jArr10 = mutableScatterSet5.metadata;
                                    int length5 = jArr10.length - 2;
                                    jArr5 = jArr9;
                                    j5 = j13;
                                    if (length5 >= 0) {
                                        int i23 = 0;
                                        while (true) {
                                            long j14 = jArr10[i23];
                                            Object[] objArr5 = objArr4;
                                            long[] jArr11 = jArr10;
                                            if ((((~j14) << c) & j14 & j) != j) {
                                                int i24 = 8 - ((~(i23 - length5)) >>> 31);
                                                for (int i25 = 0; i25 < i24; i25 = i4 + 1) {
                                                    if ((j14 & j3) < j2) {
                                                        i4 = i25;
                                                        int i26 = (i23 << 3) + i4;
                                                        j6 = j14;
                                                        RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr5[i26];
                                                        if (mutableScatterSet3.contains(recomposeScopeImpl) || mutableScatterSet4.contains(recomposeScopeImpl)) {
                                                            mutableScatterSet5.removeElementAt(i26);
                                                        }
                                                    } else {
                                                        i4 = i25;
                                                        j6 = j14;
                                                    }
                                                    j14 = j6 >> 8;
                                                }
                                                if (i24 != 8) {
                                                    break;
                                                }
                                            }
                                            if (i23 == length5) {
                                                break;
                                            }
                                            i23++;
                                            length5 = length5;
                                            objArr4 = objArr5;
                                            jArr10 = jArr11;
                                        }
                                    }
                                    zIsEmpty = mutableScatterSet5.isEmpty();
                                } else {
                                    jArr5 = jArr9;
                                    j5 = j13;
                                    obj7.getClass();
                                    RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj7;
                                    zIsEmpty = mutableScatterSet3.contains(recomposeScopeImpl2) || mutableScatterSet4.contains(recomposeScopeImpl2);
                                }
                                if (zIsEmpty) {
                                    mutableScatterMap.removeValueAt(i22);
                                }
                            } else {
                                jArr5 = jArr9;
                                j5 = j13;
                            }
                            j13 = j5 >> 8;
                            i21++;
                            jArr9 = jArr5;
                        }
                        jArr4 = jArr9;
                        if (i20 != 8) {
                            break;
                        }
                    } else {
                        jArr4 = jArr9;
                    }
                    if (i19 == length4) {
                        break;
                    }
                    i19++;
                    jArr9 = jArr4;
                }
            }
            mutableScatterSet3.clear();
            cleanUpDerivedStateObservations();
            return;
        }
        if (mutableScatterSet4.isNotEmpty()) {
            MutableScatterMap<Object, Object> mutableScatterMap2 = this.observations;
            long[] jArr12 = mutableScatterMap2.metadata;
            int length6 = jArr12.length - 2;
            if (length6 >= 0) {
                int i27 = 0;
                while (true) {
                    long j15 = jArr12[i27];
                    if ((((~j15) << c) & j15 & j) != j) {
                        int i28 = 8 - ((~(i27 - length6)) >>> 31);
                        int i29 = 0;
                        while (i29 < i28) {
                            if ((j15 & j3) < j2) {
                                int i30 = (i27 << 3) + i29;
                                Object obj8 = mutableScatterMap2.keys[i30];
                                Object obj9 = mutableScatterMap2.values[i30];
                                if (obj9 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj9;
                                    Object[] objArr6 = mutableScatterSet6.elements;
                                    long[] jArr13 = mutableScatterSet6.metadata;
                                    int length7 = jArr13.length - 2;
                                    if (length7 >= 0) {
                                        j4 = j15;
                                        int i31 = 0;
                                        while (true) {
                                            long j16 = jArr13[i31];
                                            i2 = length6;
                                            i3 = i27;
                                            if ((((~j16) << c) & j16 & j) != j) {
                                                int i32 = 8 - ((~(i31 - length7)) >>> 31);
                                                int i33 = 0;
                                                while (i33 < i32) {
                                                    if ((j16 & j3) < j2) {
                                                        int i34 = (i31 << 3) + i33;
                                                        jArr3 = jArr12;
                                                        if (mutableScatterSet4.contains((RecomposeScopeImpl) objArr6[i34])) {
                                                            mutableScatterSet6.removeElementAt(i34);
                                                        }
                                                    } else {
                                                        jArr3 = jArr12;
                                                    }
                                                    j16 >>= 8;
                                                    i33++;
                                                    jArr12 = jArr3;
                                                }
                                                jArr2 = jArr12;
                                                if (i32 != 8) {
                                                    break;
                                                }
                                            } else {
                                                jArr2 = jArr12;
                                            }
                                            if (i31 == length7) {
                                                break;
                                            }
                                            i31++;
                                            length6 = i2;
                                            i27 = i3;
                                            jArr12 = jArr2;
                                        }
                                    } else {
                                        jArr2 = jArr12;
                                        i2 = length6;
                                        i3 = i27;
                                        j4 = j15;
                                    }
                                    zContains = mutableScatterSet6.isEmpty();
                                } else {
                                    jArr2 = jArr12;
                                    i2 = length6;
                                    i3 = i27;
                                    j4 = j15;
                                    obj9.getClass();
                                    zContains = mutableScatterSet4.contains((RecomposeScopeImpl) obj9);
                                }
                                if (zContains) {
                                    mutableScatterMap2.removeValueAt(i30);
                                }
                            } else {
                                jArr2 = jArr12;
                                i2 = length6;
                                i3 = i27;
                                j4 = j15;
                            }
                            j15 = j4 >> 8;
                            i29++;
                            length6 = i2;
                            i27 = i3;
                            jArr12 = jArr2;
                        }
                        jArr = jArr12;
                        int i35 = length6;
                        int i36 = i27;
                        if (i28 != 8) {
                            break;
                        }
                        length6 = i35;
                        i = i36;
                    } else {
                        jArr = jArr12;
                        i = i27;
                    }
                    if (i == length6) {
                        break;
                    }
                    i27 = i + 1;
                    jArr12 = jArr;
                }
            }
            cleanUpDerivedStateObservations();
            mutableScatterSet4.clear();
        }
    }

    private final void applyChangesInLocked(Changes changes) {
        Applier<?> pausableApplier$runtime;
        RememberEventDispatcher rememberManager$runtime;
        long[] jArr;
        long[] jArr2;
        long j;
        char c;
        long j2;
        int i;
        boolean zIsEmpty;
        long[] jArr3;
        this.rememberManager.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
        try {
            if (changes.isEmpty()) {
                try {
                    if (this.lateChanges.isEmpty() && this.pendingPausedComposition == null) {
                        this.rememberManager.dispatchAbandons();
                    }
                } finally {
                    this.rememberManager.clear();
                }
            } else {
                PausedCompositionImpl pausedCompositionImpl = this.pendingPausedComposition;
                if (pausedCompositionImpl == null || (pausableApplier$runtime = pausedCompositionImpl.getPausableApplier$runtime()) == null) {
                    pausableApplier$runtime = this.applier;
                }
                PausedCompositionImpl pausedCompositionImpl2 = this.pendingPausedComposition;
                String str = aa4.e(pausableApplier$runtime, pausedCompositionImpl2 != null ? pausedCompositionImpl2.getPausableApplier$runtime() : null) ? "Compose:recordChanges" : "Compose:applyChanges";
                Trace trace = Trace.INSTANCE;
                Object objBeginSection = trace.beginSection(str);
                try {
                    PausedCompositionImpl pausedCompositionImpl3 = this.pendingPausedComposition;
                    if (pausedCompositionImpl3 == null || (rememberManager$runtime = pausedCompositionImpl3.getRememberManager$runtime()) == null) {
                        rememberManager$runtime = this.rememberManager;
                    }
                    pausableApplier$runtime.onBeginChanges();
                    changes.execute(this.slotStorage, pausableApplier$runtime, rememberManager$runtime, this.composer.getErrorContext$runtime());
                    pausableApplier$runtime.onEndChanges();
                    j59 j59Var = j59.a;
                    trace.endSection(objBeginSection);
                    this.rememberManager.dispatchRememberObservers();
                    this.rememberManager.dispatchSideEffects();
                    if (this.pendingInvalidScopes) {
                        Object objBeginSection2 = trace.beginSection("Compose:unobserve");
                        int i2 = 0;
                        try {
                            this.pendingInvalidScopes = false;
                            MutableScatterMap<Object, Object> mutableScatterMap = this.observations;
                            long[] jArr4 = mutableScatterMap.metadata;
                            int length = jArr4.length - 2;
                            if (length >= 0) {
                                int i3 = 0;
                                while (true) {
                                    long j3 = jArr4[i3];
                                    char c2 = 7;
                                    long j4 = -9187201950435737472L;
                                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i4 = 8;
                                        int i5 = 8 - ((~(i3 - length)) >>> 31);
                                        int i6 = i2;
                                        while (i6 < i5) {
                                            if ((j3 & 255) < 128) {
                                                int i7 = (i3 << 3) + i6;
                                                c = c2;
                                                Object obj = mutableScatterMap.keys[i7];
                                                Object obj2 = mutableScatterMap.values[i7];
                                                j2 = j4;
                                                if (obj2 instanceof MutableScatterSet) {
                                                    MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                                    Object[] objArr = mutableScatterSet.elements;
                                                    long[] jArr5 = mutableScatterSet.metadata;
                                                    int length2 = jArr5.length - 2;
                                                    if (length2 >= 0) {
                                                        j = j3;
                                                        int i8 = i4;
                                                        int i9 = 0;
                                                        while (true) {
                                                            long j5 = jArr5[i9];
                                                            Object[] objArr2 = objArr;
                                                            long[] jArr6 = jArr5;
                                                            if ((((~j5) << c) & j5 & j2) != j2) {
                                                                int i10 = 8 - ((~(i9 - length2)) >>> 31);
                                                                int i11 = 0;
                                                                while (i11 < i10) {
                                                                    if ((j5 & 255) < 128) {
                                                                        jArr3 = jArr4;
                                                                        int i12 = (i9 << 3) + i11;
                                                                        if (!((RecomposeScopeImpl) objArr2[i12]).getValid()) {
                                                                            mutableScatterSet.removeElementAt(i12);
                                                                        }
                                                                    } else {
                                                                        jArr3 = jArr4;
                                                                    }
                                                                    j5 >>= i8;
                                                                    i11++;
                                                                    jArr4 = jArr3;
                                                                }
                                                                jArr2 = jArr4;
                                                                if (i10 != i8) {
                                                                    break;
                                                                }
                                                            } else {
                                                                jArr2 = jArr4;
                                                            }
                                                            if (i9 == length2) {
                                                                break;
                                                            }
                                                            i9++;
                                                            objArr = objArr2;
                                                            jArr5 = jArr6;
                                                            jArr4 = jArr2;
                                                            i8 = 8;
                                                        }
                                                    } else {
                                                        jArr2 = jArr4;
                                                        j = j3;
                                                    }
                                                    zIsEmpty = mutableScatterSet.isEmpty();
                                                } else {
                                                    jArr2 = jArr4;
                                                    j = j3;
                                                    obj2.getClass();
                                                    zIsEmpty = !((RecomposeScopeImpl) obj2).getValid();
                                                }
                                                if (zIsEmpty) {
                                                    mutableScatterMap.removeValueAt(i7);
                                                }
                                                i = 8;
                                            } else {
                                                jArr2 = jArr4;
                                                j = j3;
                                                c = c2;
                                                j2 = j4;
                                                i = i4;
                                            }
                                            j3 = j >> i;
                                            i6++;
                                            i4 = i;
                                            c2 = c;
                                            j4 = j2;
                                            jArr4 = jArr2;
                                        }
                                        jArr = jArr4;
                                        if (i5 != i4) {
                                            break;
                                        }
                                    } else {
                                        jArr = jArr4;
                                    }
                                    if (i3 == length) {
                                        break;
                                    }
                                    i3++;
                                    jArr4 = jArr;
                                    i2 = 0;
                                }
                            }
                            cleanUpDerivedStateObservations();
                            j59 j59Var2 = j59.a;
                            Trace.INSTANCE.endSection(objBeginSection2);
                        } catch (Throwable th) {
                            Trace.INSTANCE.endSection(objBeginSection2);
                            throw th;
                        }
                    }
                    try {
                        if (this.lateChanges.isEmpty() && this.pendingPausedComposition == null) {
                            this.rememberManager.dispatchAbandons();
                        }
                    } finally {
                        this.rememberManager.clear();
                    }
                } catch (Throwable th2) {
                    Trace.INSTANCE.endSection(objBeginSection);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                if (this.lateChanges.isEmpty() && this.pendingPausedComposition == null) {
                    this.rememberManager.dispatchAbandons();
                }
                throw th3;
            } finally {
                this.rememberManager.clear();
            }
        }
    }

    private final void cleanUpDerivedStateObservations() {
        long j;
        char c;
        long j2;
        long j3;
        long[] jArr;
        long[] jArr2;
        int i;
        long j4;
        char c2;
        long j5;
        int i2;
        boolean zIsEmpty;
        long[] jArr3;
        int i3;
        int i4;
        MutableScatterMap<Object, Object> mutableScatterMap = this.derivedStates;
        long[] jArr4 = mutableScatterMap.metadata;
        int length = jArr4.length - 2;
        long j6 = 255;
        char c3 = 7;
        long j7 = -9187201950435737472L;
        int i5 = 8;
        if (length >= 0) {
            int i6 = 0;
            while (true) {
                long j8 = jArr4[i6];
                j3 = 128;
                if ((((~j8) << c3) & j8 & j7) != j7) {
                    int i7 = 8 - ((~(i6 - length)) >>> 31);
                    int i8 = 0;
                    while (i8 < i7) {
                        if ((j8 & j6) < 128) {
                            j4 = j6;
                            int i9 = (i6 << 3) + i8;
                            Object obj = mutableScatterMap.keys[i9];
                            Object obj2 = mutableScatterMap.values[i9];
                            c2 = c3;
                            if (obj2 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.elements;
                                j5 = j7;
                                long[] jArr5 = mutableScatterSet.metadata;
                                int length2 = jArr5.length - 2;
                                if (length2 >= 0) {
                                    int i10 = i5;
                                    int i11 = 0;
                                    while (true) {
                                        long j9 = jArr5[i11];
                                        Object[] objArr2 = objArr;
                                        long[] jArr6 = jArr5;
                                        if ((((~j9) << c2) & j9 & j5) != j5) {
                                            int i12 = 8 - ((~(i11 - length2)) >>> 31);
                                            int i13 = 0;
                                            while (i13 < i12) {
                                                if ((j9 & j4) < 128) {
                                                    jArr3 = jArr4;
                                                    int i14 = (i11 << 3) + i13;
                                                    i3 = i8;
                                                    i4 = i13;
                                                    if (!ScopeMap.m5396containsimpl(this.observations, (DerivedState) objArr2[i14])) {
                                                        mutableScatterSet.removeElementAt(i14);
                                                    }
                                                } else {
                                                    jArr3 = jArr4;
                                                    i3 = i8;
                                                    i4 = i13;
                                                }
                                                j9 >>= i10;
                                                i13 = i4 + 1;
                                                jArr4 = jArr3;
                                                i8 = i3;
                                            }
                                            jArr2 = jArr4;
                                            i = i8;
                                            if (i12 != i10) {
                                                break;
                                            }
                                        } else {
                                            jArr2 = jArr4;
                                            i = i8;
                                        }
                                        int i15 = i11;
                                        if (i15 == length2) {
                                            break;
                                        }
                                        i11 = i15 + 1;
                                        objArr = objArr2;
                                        jArr5 = jArr6;
                                        jArr4 = jArr2;
                                        i8 = i;
                                        i10 = 8;
                                    }
                                } else {
                                    jArr2 = jArr4;
                                    i = i8;
                                }
                                zIsEmpty = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr4;
                                i = i8;
                                j5 = j7;
                                obj2.getClass();
                                zIsEmpty = !ScopeMap.m5396containsimpl(this.observations, (DerivedState) obj2);
                            }
                            if (zIsEmpty) {
                                mutableScatterMap.removeValueAt(i9);
                            }
                            i2 = 8;
                        } else {
                            jArr2 = jArr4;
                            i = i8;
                            j4 = j6;
                            c2 = c3;
                            j5 = j7;
                            i2 = i5;
                        }
                        j8 >>= i2;
                        i8 = i + 1;
                        i5 = i2;
                        c3 = c2;
                        j6 = j4;
                        j7 = j5;
                        jArr4 = jArr2;
                    }
                    jArr = jArr4;
                    j = j6;
                    c = c3;
                    j2 = j7;
                    if (i7 != i5) {
                        break;
                    }
                } else {
                    jArr = jArr4;
                    j = j6;
                    c = c3;
                    j2 = j7;
                }
                if (i6 == length) {
                    break;
                }
                i6++;
                c3 = c;
                j6 = j;
                j7 = j2;
                jArr4 = jArr;
                i5 = 8;
            }
        } else {
            j = 255;
            c = 7;
            j2 = -9187201950435737472L;
            j3 = 128;
        }
        if (!this.conditionallyInvalidatedScopes.isNotEmpty()) {
            return;
        }
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSet2 = this.conditionallyInvalidatedScopes;
        Object[] objArr3 = mutableScatterSet2.elements;
        long[] jArr7 = mutableScatterSet2.metadata;
        int length3 = jArr7.length - 2;
        if (length3 < 0) {
            return;
        }
        int i16 = 0;
        while (true) {
            long j10 = jArr7[i16];
            if ((((~j10) << c) & j10 & j2) != j2) {
                int i17 = 8 - ((~(i16 - length3)) >>> 31);
                for (int i18 = 0; i18 < i17; i18++) {
                    if ((j10 & j) < j3) {
                        int i19 = (i16 << 3) + i18;
                        if (!((RecomposeScopeImpl) objArr3[i19]).isConditional()) {
                            mutableScatterSet2.removeElementAt(i19);
                        }
                    }
                    j10 >>= 8;
                }
                if (i17 != 8) {
                    return;
                }
            }
            if (i16 == length3) {
                return;
            } else {
                i16++;
            }
        }
    }

    private final boolean clearDeactivated() {
        boolean z;
        synchronized (this.lock) {
            z = true;
            if (this.state != 1) {
                z = false;
            }
            if (z) {
                this.state = 0;
            }
        }
        return z;
    }

    private final void composeInitial(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.composable = bm3Var;
        this.parent.composeInitial$runtime(this, bm3Var);
    }

    private final PausedComposition composeInitialPaused(boolean z, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        if (this.pendingPausedComposition != null) {
            PreconditionsKt.throwIllegalStateException("A pausable composition is in progress");
        }
        PausedCompositionImpl pausedCompositionImpl = new PausedCompositionImpl(this, this.parent, this.composer, this.abandonSet, bm3Var, z, this.applier, this.lock);
        this.pendingPausedComposition = pausedCompositionImpl;
        return pausedCompositionImpl;
    }

    private final void composeInitialWithReuse(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.composer.startReuseFromRoot$runtime();
        composeInitial(bm3Var);
        this.composer.endReuseFromRoot$runtime();
    }

    private final Changes createChangeList() {
        ComposeRuntimeFlags composeRuntimeFlags = ComposeRuntimeFlags.INSTANCE;
        return new ChangeList();
    }

    private final InternalComposer createComposer() {
        ComposeRuntimeFlags composeRuntimeFlags = ComposeRuntimeFlags.INSTANCE;
        return new GapComposer(this.applier, this.parent, SlotTableKt.asGapBufferSlotTable(this.slotStorage), this.abandonSet, this.changes, this.lateChanges, this.observerHolder, this);
    }

    private final SlotStorage createSlotStorage() {
        ComposeRuntimeFlags composeRuntimeFlags = ComposeRuntimeFlags.INSTANCE;
        return new SlotTable();
    }

    private final void drainPendingModificationsForCompositionLocked() {
        Object andSet = this.pendingModifications.getAndSet(CompositionKt.PendingApplyNoModifications);
        if (andSet != null) {
            if (andSet.equals(CompositionKt.PendingApplyNoModifications)) {
                throw av.b("pending composition has not been applied");
            }
            if (andSet instanceof Set) {
                addPendingInvalidationsLocked((Set<? extends Object>) andSet, true);
                return;
            }
            if (!(andSet instanceof Object[])) {
                ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
                h8.d();
                return;
            }
            for (Set<? extends Object> set : (Set[]) andSet) {
                addPendingInvalidationsLocked(set, true);
            }
        }
    }

    private final void drainPendingModificationsLocked() {
        Object andSet = this.pendingModifications.getAndSet(null);
        if (aa4.e(andSet, CompositionKt.PendingApplyNoModifications)) {
            return;
        }
        if (andSet instanceof Set) {
            addPendingInvalidationsLocked((Set<? extends Object>) andSet, false);
            return;
        }
        if (andSet instanceof Object[]) {
            for (Set<? extends Object> set : (Set[]) andSet) {
                addPendingInvalidationsLocked(set, false);
            }
            return;
        }
        if (andSet == null) {
            if (this.pendingPausedComposition == null) {
                ComposerKt.composeImmediateRuntimeError("calling recordModificationsOf and applyChanges concurrently is not supported");
            }
        } else {
            ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
            h8.d();
        }
    }

    private final void drainPendingModificationsOutOfBandLocked() {
        Object andSet = this.pendingModifications.getAndSet(ox2.b);
        if (aa4.e(andSet, CompositionKt.PendingApplyNoModifications) || andSet == null) {
            return;
        }
        if (andSet instanceof Set) {
            addPendingInvalidationsLocked((Set<? extends Object>) andSet, false);
            return;
        }
        if (!(andSet instanceof Object[])) {
            ComposerKt.composeRuntimeError("corrupt pendingModifications drain: " + this.pendingModifications);
            h8.d();
            return;
        }
        for (Set<? extends Object> set : (Set[]) andSet) {
            addPendingInvalidationsLocked(set, false);
        }
    }

    private final void ensureRunning() {
        String str;
        int i = this.state;
        if (!(i == 0)) {
            if (i == 1) {
                str = "The composition should be activated before setting content.";
            } else if (i != 2) {
                str = i != 3 ? "" : "The composition is disposed";
            } else {
                str = "A previous pausable composition for this composition was cancelled. This composition must be disposed.";
            }
            PreconditionsKt.throwIllegalStateException(str);
        }
        if (this.pendingPausedComposition == null) {
            return;
        }
        PreconditionsKt.throwIllegalStateException("A pausable composition is in progress");
    }

    private static /* synthetic */ void getAbandonSet$annotations() {
    }

    private final boolean getAreChildrenComposing() {
        return this.composer.getAreChildrenComposing$runtime();
    }

    public static /* synthetic */ void getPendingInvalidScopes$runtime$annotations() {
    }

    public static /* synthetic */ void getSlotStorage$runtime$annotations() {
    }

    private final <T> T guardChanges(ll3<? extends T> ll3Var) {
        try {
            return ll3Var.invoke();
        } catch (Throwable th) {
            try {
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    try {
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher.dispatchAbandons();
                    } finally {
                        rememberEventDispatcher.clear();
                    }
                }
                throw th;
            } catch (Throwable th2) {
                abandonChanges();
                throw th2;
            }
        }
    }

    private final <T> T guardInvalidationsLocked(nl3<? super ScopeMap<RecomposeScopeImpl, Object>, ? extends T> nl3Var) {
        MutableScatterMap<Object, Object> mutableScatterMapM5316takeInvalidationsafanTW4 = m5316takeInvalidationsafanTW4();
        try {
            return nl3Var.invoke(ScopeMap.m5392boximpl(mutableScatterMapM5316takeInvalidationsafanTW4));
        } catch (Throwable th) {
            this.invalidations = mutableScatterMapM5316takeInvalidationsafanTW4;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x009b A[Catch: all -> 0x001e, LOOP:0: B:32:0x005a->B:46:0x009b, LOOP_END, TryCatch #0 {all -> 0x001e, blocks: (B:4:0x000b, B:6:0x0010, B:14:0x0023, B:16:0x0029, B:20:0x002f, B:21:0x0038, B:24:0x003e, B:25:0x0044, B:27:0x004a, B:29:0x004e, B:32:0x005a, B:34:0x006a, B:36:0x0076, B:38:0x0080, B:42:0x008f, B:46:0x009b, B:47:0x009e, B:50:0x00a3), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a3 A[Catch: all -> 0x001e, EDGE_INSN: B:50:0x00a3->B:51:0x00a8 BREAK  A[LOOP:0: B:32:0x005a->B:46:0x009b], TRY_LEAVE, TryCatch #0 {all -> 0x001e, blocks: (B:4:0x000b, B:6:0x0010, B:14:0x0023, B:16:0x0029, B:20:0x002f, B:21:0x0038, B:24:0x003e, B:25:0x0044, B:27:0x004a, B:29:0x004e, B:32:0x005a, B:34:0x006a, B:36:0x0076, B:38:0x0080, B:42:0x008f, B:46:0x009b, B:47:0x009e, B:50:0x00a3), top: B:63:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00a3 A[SYNTHETIC] */
    private final InvalidationResult invalidateChecked(RecomposeScopeImpl recomposeScopeImpl, Anchor anchor, Object obj) {
        synchronized (this.lock) {
            try {
                CompositionImpl compositionImpl = this.invalidationDelegate;
                CompositionImpl compositionImpl2 = null;
                if (compositionImpl != null) {
                    if (!this.slotStorage.groupContainsAnchor(this.invalidationDelegateGroup, anchor)) {
                        compositionImpl = null;
                    }
                    compositionImpl2 = compositionImpl;
                }
                if (compositionImpl2 == null) {
                    if (!tryImminentInvalidation(recomposeScopeImpl, obj)) {
                        if (obj != null) {
                            boolean z = obj instanceof DerivedState;
                            MutableScatterMap<Object, Object> mutableScatterMap = this.invalidations;
                            if (z) {
                                Object obj2 = mutableScatterMap.get(recomposeScopeImpl);
                                if (obj2 != null) {
                                    if (!(obj2 instanceof MutableScatterSet)) {
                                        if (obj2 != ScopeInvalidated.INSTANCE) {
                                            ScopeMap.m5388addimpl(this.invalidations, recomposeScopeImpl, obj);
                                            break;
                                        }
                                    } else {
                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                        Object[] objArr = mutableScatterSet.elements;
                                        long[] jArr = mutableScatterSet.metadata;
                                        int length = jArr.length - 2;
                                        if (length < 0) {
                                            ScopeMap.m5388addimpl(this.invalidations, recomposeScopeImpl, obj);
                                            break;
                                        }
                                        int i = 0;
                                        loop0: while (true) {
                                            long j = jArr[i];
                                            if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                                                if (i == length) {
                                                    ScopeMap.m5388addimpl(this.invalidations, recomposeScopeImpl, obj);
                                                    break;
                                                }
                                                i++;
                                            } else {
                                                int i2 = 8;
                                                int i3 = 8 - ((~(i - length)) >>> 31);
                                                int i4 = 0;
                                                while (i4 < i3) {
                                                    if ((j & 255) < 128 && objArr[(i << 3) + i4] == ScopeInvalidated.INSTANCE) {
                                                        break loop0;
                                                    }
                                                    j >>= i2;
                                                    i4++;
                                                    i2 = i2;
                                                }
                                                if (i3 == i2) {
                                                    if (i == length) {
                                                        i++;
                                                    }
                                                }
                                                ScopeMap.m5388addimpl(this.invalidations, recomposeScopeImpl, obj);
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    ScopeMap.m5388addimpl(this.invalidations, recomposeScopeImpl, obj);
                                    break;
                                }
                            } else {
                                ScopeMap.m5412setimpl(mutableScatterMap, recomposeScopeImpl, ScopeInvalidated.INSTANCE);
                            }
                        } else {
                            ScopeMap.m5412setimpl(this.invalidations, recomposeScopeImpl, ScopeInvalidated.INSTANCE);
                        }
                    } else {
                        return InvalidationResult.IMMINENT;
                    }
                }
                if (compositionImpl2 != null) {
                    return compositionImpl2.invalidateChecked(recomposeScopeImpl, anchor, obj);
                }
                this.parent.invalidate$runtime(this);
                return isComposing() ? InvalidationResult.DEFERRED : InvalidationResult.SCHEDULED;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void invalidateScopeOfLocked(Object obj) {
        Object obj2 = this.observations.get(obj);
        if (obj2 == null) {
            return;
        }
        if (!(obj2 instanceof MutableScatterSet)) {
            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj2;
            if (recomposeScopeImpl.invalidateForResult(obj) == InvalidationResult.IMMINENT) {
                ScopeMap.m5388addimpl(this.observationsProcessed, obj, recomposeScopeImpl);
                return;
            }
            return;
        }
        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
        Object[] objArr = mutableScatterSet.elements;
        long[] jArr = mutableScatterSet.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) objArr[(i << 3) + i3];
                        if (recomposeScopeImpl2.invalidateForResult(obj) == InvalidationResult.IMMINENT) {
                            ScopeMap.m5388addimpl(this.observationsProcessed, obj, recomposeScopeImpl2);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    private final CompositionObserver observer() {
        return this.observerHolder.current();
    }

    /* JADX INFO: renamed from: takeInvalidations-afanTW4, reason: not valid java name */
    private final MutableScatterMap<Object, Object> m5316takeInvalidationsafanTW4() {
        MutableScatterMap<Object, Object> mutableScatterMap = this.invalidations;
        this.invalidations = ScopeMap.m5395constructorimpl$default(null, 1, null);
        return mutableScatterMap;
    }

    private final <T> T trackAbandonedValues(ll3<? extends T> ll3Var) {
        try {
            return ll3Var.invoke();
        } catch (Throwable th) {
            if (!this.abandonSet.isEmpty()) {
                RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                try {
                    rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                    rememberEventDispatcher.dispatchAbandons();
                } finally {
                    rememberEventDispatcher.clear();
                }
            }
            throw th;
        }
    }

    private final boolean tryImminentInvalidation(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        return isComposing() && this.composer.tryImminentInvalidation$runtime(recomposeScopeImpl, obj);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void abandonChanges() {
        this.pendingModifications.set(null);
        this.changes.clear();
        this.lateChanges.clear();
        if (this.abandonSet.isEmpty()) {
            return;
        }
        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
        try {
            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
            rememberEventDispatcher.dispatchAbandons();
        } finally {
            rememberEventDispatcher.clear();
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void applyChanges() {
        synchronized (this.lock) {
            try {
                applyChangesInLocked(this.changes);
                drainPendingModificationsLocked();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        try {
                            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            rememberEventDispatcher.dispatchAbandons();
                        } finally {
                            rememberEventDispatcher.clear();
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    abandonChanges();
                    throw th2;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void applyLateChanges() {
        synchronized (this.lock) {
            try {
                if (this.lateChanges.isNotEmpty()) {
                    applyChangesInLocked(this.lateChanges);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        try {
                            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            rememberEventDispatcher.dispatchAbandons();
                        } finally {
                            rememberEventDispatcher.clear();
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    abandonChanges();
                    throw th2;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void changesApplied() {
        synchronized (this.lock) {
            try {
                this.composer.changesApplied$runtime();
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    try {
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher.dispatchAbandons();
                        rememberEventDispatcher.clear();
                    } catch (Throwable th) {
                        rememberEventDispatcher.clear();
                        throw th;
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th2) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher2 = this.rememberManager;
                        try {
                            rememberEventDispatcher2.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            rememberEventDispatcher2.dispatchAbandons();
                        } finally {
                            rememberEventDispatcher2.clear();
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    abandonChanges();
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void composeContent(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        try {
            synchronized (this.lock) {
                drainPendingModificationsForCompositionLocked();
                MutableScatterMap<Object, Object> mutableScatterMapM5316takeInvalidationsafanTW4 = m5316takeInvalidationsafanTW4();
                try {
                    this.composer.mo5319composeContentZbOJvo$runtime(mutableScatterMapM5316takeInvalidationsafanTW4, bm3Var, this.shouldPause);
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    this.invalidations = mutableScatterMapM5316takeInvalidationsafanTW4;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    try {
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher.dispatchAbandons();
                    } finally {
                        rememberEventDispatcher.clear();
                    }
                }
                throw th2;
            } catch (Throwable th3) {
                abandonChanges();
                throw th3;
            }
        }
    }

    public final int composerStacksSizes$runtime() {
        return this.composer.stacksSize$runtime();
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public void deactivate() {
        synchronized (this.lock) {
            try {
                if (!(this.pendingPausedComposition == null)) {
                    PreconditionsKt.throwIllegalStateException("Deactivate is not supported while pausable composition is in progress");
                }
                boolean zIsEmpty = this.slotStorage.isEmpty();
                if (!zIsEmpty || !this.abandonSet.isEmpty()) {
                    Trace trace = Trace.INSTANCE;
                    Object objBeginSection = trace.beginSection("Compose:deactivate");
                    try {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        try {
                            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            if (!zIsEmpty) {
                                this.applier.onBeginChanges();
                                this.slotStorage.deactivateAll(this.rememberManager);
                                this.applier.onEndChanges();
                                rememberEventDispatcher.dispatchRememberObservers();
                            }
                            rememberEventDispatcher.dispatchAbandons();
                            rememberEventDispatcher.clear();
                            j59 j59Var = j59.a;
                            trace.endSection(objBeginSection);
                        } catch (Throwable th) {
                            rememberEventDispatcher.clear();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        Trace.INSTANCE.endSection(objBeginSection);
                        throw th2;
                    }
                }
                ScopeMap.m5393clearimpl(this.observations);
                ScopeMap.m5393clearimpl(this.derivedStates);
                ScopeMap.m5393clearimpl(this.invalidations);
                this.changes.clear();
                this.lateChanges.clear();
                this.composer.deactivate$runtime();
                this.state = 1;
                j59 j59Var2 = j59.a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public <R> R delegateInvalidations(ControlledComposition controlledComposition, int i, ll3<? extends R> ll3Var) {
        if (controlledComposition == null || controlledComposition.equals(this) || i < 0) {
            return ll3Var.invoke();
        }
        this.invalidationDelegate = (CompositionImpl) controlledComposition;
        this.invalidationDelegateGroup = i;
        try {
            return ll3Var.invoke();
        } finally {
            this.invalidationDelegate = null;
            this.invalidationDelegateGroup = 0;
        }
    }

    @Override // androidx.compose.runtime.Composition
    public void dispose() {
        synchronized (this.lock) {
            try {
                if (this.composer.isComposing$runtime()) {
                    PreconditionsKt.throwIllegalStateException("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (this.state != 3) {
                    this.state = 3;
                    this.composable = ComposableSingletons$CompositionKt.INSTANCE.getLambda$1918065384$runtime();
                    Changes deferredChanges$runtime = this.composer.getDeferredChanges$runtime();
                    if (deferredChanges$runtime != null) {
                        applyChangesInLocked(deferredChanges$runtime);
                    }
                    boolean zIsEmpty = this.slotStorage.isEmpty();
                    if (!zIsEmpty || !this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        try {
                            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            if (!zIsEmpty) {
                                this.applier.onBeginChanges();
                                this.slotStorage.clear(this.rememberManager);
                                this.applier.clear();
                                this.applier.onEndChanges();
                                rememberEventDispatcher.dispatchRememberObservers();
                            }
                            rememberEventDispatcher.dispatchAbandons();
                            rememberEventDispatcher.clear();
                        } catch (Throwable th) {
                            rememberEventDispatcher.clear();
                            throw th;
                        }
                    }
                    this.composer.dispose$runtime();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.parent.unregisterComposition$runtime(this);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void disposeUnusedMovableContent(MovableContentState movableContentState) {
        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
        try {
            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
            movableContentState.getSlotStorage$runtime().disposeUnusedMovableContent(this.rememberManager, movableContentState);
            rememberEventDispatcher.dispatchRememberObservers();
        } finally {
            rememberEventDispatcher.clear();
        }
    }

    public final List<b36<RecomposeScopeImpl, Object>> extractInvalidationsOf$runtime(Anchor anchor) {
        long[] jArr;
        long[] jArr2;
        long j;
        char c;
        long j2;
        int i;
        int i2;
        boolean zIsEmpty;
        int i3;
        int i4;
        long j3;
        if (ScopeMap.m5403getSizeimpl(this.invalidations) <= 0) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        SlotStorage slotStorage = this.slotStorage;
        MutableScatterMap<Object, Object> mutableScatterMap = this.invalidations;
        long[] jArr3 = mutableScatterMap.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i5 = 0;
            while (true) {
                long j4 = jArr3[i5];
                char c2 = 7;
                long j5 = -9187201950435737472L;
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i6 = 8;
                    int i7 = 8 - ((~(i5 - length)) >>> 31);
                    int i8 = 0;
                    while (i8 < i7) {
                        if ((j4 & 255) < 128) {
                            int i9 = (i5 << 3) + i8;
                            c = c2;
                            Object obj = mutableScatterMap.keys[i9];
                            j2 = j5;
                            Object obj2 = mutableScatterMap.values[i9];
                            obj.getClass();
                            if (obj2 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.elements;
                                int i10 = i6;
                                long[] jArr4 = mutableScatterSet.metadata;
                                jArr2 = jArr3;
                                int length2 = jArr4.length - 2;
                                j = j4;
                                if (length2 >= 0) {
                                    int i11 = i8;
                                    int i12 = 0;
                                    while (true) {
                                        long j6 = jArr4[i12];
                                        long[] jArr5 = jArr4;
                                        Object obj3 = obj;
                                        if ((((~j6) << c) & j6 & j2) != j2) {
                                            int i13 = 8 - ((~(i12 - length2)) >>> 31);
                                            int i14 = 0;
                                            while (i14 < i13) {
                                                if ((j6 & 255) < 128) {
                                                    i3 = i11;
                                                    int i15 = (i12 << 3) + i14;
                                                    i4 = i14;
                                                    Object obj4 = objArr[i15];
                                                    j3 = j6;
                                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                                                    Anchor anchor2 = recomposeScopeImpl.getAnchor();
                                                    if (anchor2 != null && slotStorage.inGroup(anchor, anchor2)) {
                                                        arrayList.add(new b36(recomposeScopeImpl, obj4));
                                                        mutableScatterSet.removeElementAt(i15);
                                                    }
                                                } else {
                                                    i3 = i11;
                                                    i4 = i14;
                                                    j3 = j6;
                                                }
                                                j6 = j3 >> i10;
                                                i14 = i4 + 1;
                                                i11 = i3;
                                            }
                                            i = i11;
                                            if (i13 != i10) {
                                                break;
                                            }
                                        } else {
                                            i = i11;
                                        }
                                        if (i12 == length2) {
                                            break;
                                        }
                                        i12++;
                                        obj = obj3;
                                        jArr4 = jArr5;
                                        i11 = i;
                                        i10 = 8;
                                    }
                                } else {
                                    i = i8;
                                }
                                zIsEmpty = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr3;
                                j = j4;
                                i = i8;
                                obj2.getClass();
                                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj;
                                Anchor anchor3 = recomposeScopeImpl2.getAnchor();
                                if (anchor3 == null || !slotStorage.inGroup(anchor, anchor3)) {
                                    zIsEmpty = false;
                                } else {
                                    arrayList.add(new b36(recomposeScopeImpl2, obj2));
                                    zIsEmpty = true;
                                }
                            }
                            if (zIsEmpty) {
                                mutableScatterMap.removeValueAt(i9);
                            }
                            i2 = 8;
                        } else {
                            jArr2 = jArr3;
                            j = j4;
                            c = c2;
                            j2 = j5;
                            i = i8;
                            i2 = i6;
                        }
                        i8 = i + 1;
                        i6 = i2;
                        j4 = j >> i2;
                        c2 = c;
                        j5 = j2;
                        jArr3 = jArr2;
                    }
                    jArr = jArr3;
                    if (i7 != i6) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i5 == length) {
                    break;
                }
                i5++;
                jArr3 = jArr;
            }
        }
        return arrayList;
    }

    public final List<b36<RecomposeScopeImpl, Object>> extractInvalidationsOfGroup$runtime(nl3<? super Anchor, Boolean> nl3Var) {
        long[] jArr;
        long[] jArr2;
        long j;
        char c;
        long j2;
        int i;
        int i2;
        boolean zIsEmpty;
        Object obj;
        long j3;
        Object obj2;
        int i3;
        if (ScopeMap.m5403getSizeimpl(this.invalidations) <= 0) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        MutableScatterMap mutableScatterMap = this.invalidations;
        long[] jArr3 = mutableScatterMap.metadata;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i4 = 0;
            while (true) {
                long j4 = jArr3[i4];
                char c2 = 7;
                long j5 = -9187201950435737472L;
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8;
                    int i6 = 8 - ((~(i4 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j4 & 255) < 128) {
                            int i8 = (i4 << 3) + i7;
                            c = c2;
                            Object obj3 = mutableScatterMap.keys[i8];
                            j2 = j5;
                            Object obj4 = mutableScatterMap.values[i8];
                            obj3.getClass();
                            if (obj4 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj4;
                                Object[] objArr = mutableScatterSet.elements;
                                long[] jArr4 = mutableScatterSet.metadata;
                                int i9 = i5;
                                int length2 = jArr4.length - 2;
                                jArr2 = jArr3;
                                j = j4;
                                if (length2 >= 0) {
                                    int i10 = 0;
                                    while (true) {
                                        long j6 = jArr4[i10];
                                        Object[] objArr2 = objArr;
                                        i = i7;
                                        if ((((~j6) << c) & j6 & j2) != j2) {
                                            int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                            int i12 = 0;
                                            while (i12 < i11) {
                                                if ((j6 & 255) < 128) {
                                                    j3 = j6;
                                                    int i13 = (i10 << 3) + i12;
                                                    Object obj5 = objArr2[i13];
                                                    obj2 = obj3;
                                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj2;
                                                    i3 = i12;
                                                    Anchor anchor = recomposeScopeImpl.getAnchor();
                                                    if (anchor != null && nl3Var.invoke(anchor).booleanValue()) {
                                                        arrayList.add(new b36(recomposeScopeImpl, obj5));
                                                        mutableScatterSet.removeElementAt(i13);
                                                    }
                                                } else {
                                                    j3 = j6;
                                                    obj2 = obj3;
                                                    i3 = i12;
                                                }
                                                j6 = j3 >> i9;
                                                i12 = i3 + 1;
                                                obj3 = obj2;
                                            }
                                            obj = obj3;
                                            if (i11 != i9) {
                                                break;
                                            }
                                        } else {
                                            obj = obj3;
                                        }
                                        if (i10 == length2) {
                                            break;
                                        }
                                        i10++;
                                        i7 = i;
                                        objArr = objArr2;
                                        obj3 = obj;
                                        i9 = 8;
                                    }
                                } else {
                                    i = i7;
                                }
                                zIsEmpty = mutableScatterSet.isEmpty();
                            } else {
                                jArr2 = jArr3;
                                j = j4;
                                i = i7;
                                obj4.getClass();
                                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj3;
                                Anchor anchor2 = recomposeScopeImpl2.getAnchor();
                                if (anchor2 == null || !nl3Var.invoke(anchor2).booleanValue()) {
                                    zIsEmpty = false;
                                } else {
                                    arrayList.add(new b36(recomposeScopeImpl2, obj4));
                                    zIsEmpty = true;
                                }
                            }
                            if (zIsEmpty) {
                                mutableScatterMap.removeValueAt(i8);
                            }
                            i2 = 8;
                        } else {
                            jArr2 = jArr3;
                            j = j4;
                            c = c2;
                            j2 = j5;
                            i = i7;
                            i2 = i5;
                        }
                        i7 = i + 1;
                        i5 = i2;
                        j4 = j >> i2;
                        c2 = c;
                        jArr3 = jArr2;
                        j5 = j2;
                    }
                    jArr = jArr3;
                    if (i6 != i5) {
                        break;
                    }
                } else {
                    jArr = jArr3;
                }
                if (i4 == length) {
                    break;
                }
                i4++;
                jArr3 = jArr;
            }
        }
        return arrayList;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public ShouldPauseCallback getAndSetShouldPauseCallback(ShouldPauseCallback shouldPauseCallback) {
        ShouldPauseCallback shouldPauseCallback2 = this.shouldPause;
        this.shouldPause = shouldPauseCallback;
        return shouldPauseCallback2;
    }

    public final bm3<Composer, Integer, j59> getComposable() {
        return this.composable;
    }

    public final InternalComposer getComposer$runtime() {
        return this.composer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.CompositionServices
    public <T> T getCompositionService(CompositionServiceKey<T> compositionServiceKey) {
        if (aa4.e(compositionServiceKey, CompositionKt.getObservableCompositionServiceKey())) {
            return this;
        }
        return null;
    }

    public final List<RecomposeScopeImpl> getConditionalScopes$runtime() {
        return qn1.t0(this.conditionallyInvalidatedScopes.asSet());
    }

    public final Set<Object> getDerivedStateDependencies$runtime() {
        return this.derivedStates.asMap().keySet();
    }

    @Override // androidx.compose.runtime.Composition
    public boolean getHasInvalidations() {
        boolean z;
        synchronized (this.lock) {
            z = ScopeMap.m5403getSizeimpl(this.invalidations) > 0;
        }
        return z;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean getHasPendingChanges() {
        boolean hasPendingChanges$runtime;
        synchronized (this.lock) {
            hasPendingChanges$runtime = this.composer.getHasPendingChanges$runtime();
        }
        return hasPendingChanges$runtime;
    }

    public final Set<Object> getObservedObjects$runtime() {
        return this.observations.asMap().keySet();
    }

    public final CompositionObserverHolder getObserverHolder$runtime() {
        return this.observerHolder;
    }

    public final CompositionContext getParent() {
        return this.parent;
    }

    public final boolean getPendingInvalidScopes$runtime() {
        return this.pendingInvalidScopes;
    }

    public final SlotStorage getSlotStorage$runtime() {
        return this.slotStorage;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void insertMovableContent(List<b36<MovableContentStateReference, MovableContentStateReference>> list) {
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                z = true;
                break;
            } else if (!aa4.e(list.get(i).b.getComposition$runtime(), this)) {
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        try {
            this.composer.insertMovableContentReferences(list);
            j59 j59Var = j59.a;
        } catch (Throwable th) {
            try {
                if (!this.abandonSet.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                    try {
                        rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                        rememberEventDispatcher.dispatchAbandons();
                    } finally {
                        rememberEventDispatcher.clear();
                    }
                }
                throw th;
            } catch (Throwable th2) {
                abandonChanges();
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        CompositionObserver compositionObserverObserver;
        CompositionImpl compositionImpl;
        if (recomposeScopeImpl.getDefaultsInScope()) {
            recomposeScopeImpl.setDefaultsInvalid(true);
        }
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor == null || !anchor.getValid()) {
            return InvalidationResult.IGNORED;
        }
        if (!this.slotStorage.ownsRecomposeScope(recomposeScopeImpl)) {
            synchronized (this.lock) {
                compositionImpl = this.invalidationDelegate;
            }
            return (compositionImpl == null || !compositionImpl.tryImminentInvalidation(recomposeScopeImpl, obj)) ? InvalidationResult.IGNORED : InvalidationResult.IMMINENT;
        }
        if (!recomposeScopeImpl.getCanRecompose()) {
            return InvalidationResult.IGNORED;
        }
        InvalidationResult invalidationResultInvalidateChecked = invalidateChecked(recomposeScopeImpl, anchor, obj);
        if (invalidationResultInvalidateChecked != InvalidationResult.IGNORED && (compositionObserverObserver = observer()) != null) {
            compositionObserverObserver.onScopeInvalidated(recomposeScopeImpl, obj);
        }
        return invalidationResultInvalidateChecked;
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void invalidateAll() {
        this.slotStorage.invalidateAll();
    }

    public final void invalidateGroupsWithKey(int i) {
        List<RecomposeScopeImpl> listInvalidateGroupsWithKey;
        synchronized (this.lock) {
            listInvalidateGroupsWithKey = this.slotStorage.invalidateGroupsWithKey(i);
        }
        if (listInvalidateGroupsWithKey != null) {
            int size = listInvalidateGroupsWithKey.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (listInvalidateGroupsWithKey.get(i2).invalidateForResult(null) != InvalidationResult.IGNORED) {
                }
            }
            return;
        }
        if (this.composer.forceRecomposeScopes$runtime()) {
            this.parent.invalidate$runtime(this);
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean isComposing() {
        return this.composer.isComposing$runtime();
    }

    @Override // androidx.compose.runtime.Composition
    public boolean isDisposed() {
        return this.state == 3;
    }

    public final boolean isRoot() {
        return this.isRoot;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0059 A[LOOP:0: B:7:0x0016->B:21:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x007d A[SYNTHETIC] */
    @Override // androidx.compose.runtime.ControlledComposition
    public boolean observesAnyOf(Set<? extends Object> set) {
        if (set instanceof ScatterSetWrapper) {
            ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
            Object[] objArr = set$runtime.elements;
            long[] jArr = set$runtime.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                loop0: while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                Object obj = objArr[(i << 3) + i3];
                                if (ScopeMap.m5396containsimpl(this.observations, obj) || ScopeMap.m5396containsimpl(this.derivedStates, obj)) {
                                    break loop0;
                                }
                            }
                            j >>= 8;
                        }
                        if (i2 == 8) {
                            if (i != length) {
                                i++;
                            }
                        }
                    } else if (i != length) {
                        i++;
                    }
                }
                return true;
            }
        } else {
            for (Object obj2 : set) {
                if (ScopeMap.m5396containsimpl(this.observations, obj2) || ScopeMap.m5396containsimpl(this.derivedStates, obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void pausedCompositionFinished$runtime(ScatterSet<RememberObserverHolder> scatterSet) {
        this.pendingPausedComposition = null;
        if (scatterSet != null) {
            this.rememberManager.ignoreForgotten(scatterSet);
            this.state = 2;
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void prepareCompose(ll3<j59> ll3Var) {
        this.composer.prepareCompose$runtime(ll3Var);
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public boolean recompose() {
        synchronized (this.lock) {
            PausedCompositionImpl pausedCompositionImpl = this.pendingPausedComposition;
            if (pausedCompositionImpl != null && !pausedCompositionImpl.isRecomposing$runtime()) {
                pausedCompositionImpl.markIncomplete$runtime();
                pausedCompositionImpl.getPausableApplier$runtime().markRecomposePending();
                return false;
            }
            drainPendingModificationsForCompositionLocked();
            try {
                MutableScatterMap<Object, Object> mutableScatterMapM5316takeInvalidationsafanTW4 = m5316takeInvalidationsafanTW4();
                try {
                    boolean zMo5320recomposeaFTiNEg$runtime = this.composer.mo5320recomposeaFTiNEg$runtime(mutableScatterMapM5316takeInvalidationsafanTW4, this.shouldPause);
                    if (!zMo5320recomposeaFTiNEg$runtime) {
                        drainPendingModificationsLocked();
                    }
                    return zMo5320recomposeaFTiNEg$runtime;
                } catch (Throwable th) {
                    this.invalidations = mutableScatterMapM5316takeInvalidationsafanTW4;
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    if (!this.abandonSet.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.rememberManager;
                        try {
                            rememberEventDispatcher.prepare(this.abandonSet, this.composer.getErrorContext$runtime());
                            rememberEventDispatcher.dispatchAbandons();
                        } finally {
                            rememberEventDispatcher.clear();
                        }
                    }
                    throw th2;
                } catch (Throwable th3) {
                    abandonChanges();
                    throw th3;
                }
            }
        }
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public void recomposeScopeReleased(RecomposeScopeImpl recomposeScopeImpl) {
        this.pendingInvalidScopes = true;
        CompositionObserver compositionObserverObserver = observer();
        if (compositionObserverObserver != null) {
            compositionObserverObserver.onScopeDisposed(recomposeScopeImpl);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.ControlledComposition
    public void recordModificationsOf(Set<? extends Object> set) {
        Object obj;
        while (true) {
            Object obj2 = this.pendingModifications.get();
            if (obj2 == null || obj2.equals(CompositionKt.PendingApplyNoModifications)) {
                obj = set;
            } else if (obj2 instanceof Set) {
                obj = new Set[]{obj2, set};
            } else {
                if (!(obj2 instanceof Object[])) {
                    fe0.c(this.pendingModifications, "corrupt pendingModifications: ");
                    return;
                }
                Set[] setArr = (Set[]) obj2;
                int length = setArr.length;
                Object[] objArrCopyOf = Arrays.copyOf(setArr, length + 1);
                objArrCopyOf[length] = set;
                obj = objArrCopyOf;
            }
            AtomicReference<Object> atomicReference = this.pendingModifications;
            do {
                if (atomicReference.compareAndSet(obj2, obj)) {
                    if (obj2 == null) {
                        synchronized (this.lock) {
                            drainPendingModificationsLocked();
                            j59 j59Var = j59.a;
                        }
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == obj2);
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition, androidx.compose.runtime.RecomposeScopeOwner
    public void recordReadOf(Object obj) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        int i;
        int i2;
        if (getAreChildrenComposing() || (currentRecomposeScope$runtime = this.composer.getCurrentRecomposeScope$runtime()) == null) {
            return;
        }
        int i3 = 1;
        currentRecomposeScope$runtime.setUsed(true);
        boolean zRecordRead = currentRecomposeScope$runtime.recordRead(obj);
        CompositionObserver compositionObserverObserver = observer();
        if (compositionObserverObserver != null) {
            compositionObserverObserver.onReadInScope(currentRecomposeScope$runtime, obj);
        }
        if (zRecordRead) {
            return;
        }
        if (obj instanceof StateObjectImpl) {
            ((StateObjectImpl) obj).m5643recordReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(1));
        }
        ScopeMap.m5388addimpl(this.observations, obj, currentRecomposeScope$runtime);
        if (obj instanceof DerivedState) {
            DerivedState<?> derivedState = (DerivedState) obj;
            DerivedState.Record<?> currentRecord = derivedState.getCurrentRecord();
            ScopeMap.m5410removeScopeimpl(this.derivedStates, obj);
            ObjectIntMap<StateObject> dependencies = currentRecord.getDependencies();
            Object[] objArr = dependencies.keys;
            long[] jArr = dependencies.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i4 = 0;
                while (true) {
                    long j = jArr[i4];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i5 = 8;
                        int i6 = 8 - ((~(i4 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j & 255) < 128) {
                                i2 = i3;
                                StateObject stateObject = (StateObject) objArr[(i4 << 3) + i7];
                                if (stateObject instanceof StateObjectImpl) {
                                    ((StateObjectImpl) stateObject).m5643recordReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(i2));
                                }
                                ScopeMap.m5388addimpl(this.derivedStates, stateObject, obj);
                            } else {
                                i2 = i3;
                                i5 = i5;
                            }
                            j >>= i5;
                            i7++;
                            i3 = i2;
                            i5 = i5;
                        }
                        i = i3;
                        if (i6 != i5) {
                            break;
                        }
                    } else {
                        i = i3;
                    }
                    if (i4 == length) {
                        break;
                    }
                    i4++;
                    i3 = i;
                }
            }
            currentRecomposeScope$runtime.recordDerivedStateValue(derivedState, currentRecord.getCurrentValue());
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[Catch: all -> 0x004f, LOOP:0: B:11:0x001f->B:23:0x0059, LOOP_END, TryCatch #0 {all -> 0x004f, blocks: (B:4:0x0003, B:6:0x000e, B:8:0x0012, B:11:0x001f, B:13:0x002f, B:15:0x003b, B:17:0x0044, B:20:0x0051, B:23:0x0059, B:24:0x005c, B:25:0x0061), top: B:30:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0061 A[EDGE_INSN: B:33:0x0061->B:25:0x0061 BREAK  A[LOOP:0: B:11:0x001f->B:23:0x0059], SYNTHETIC] */
    @Override // androidx.compose.runtime.ControlledComposition
    public void recordWriteOf(Object obj) {
        synchronized (this.lock) {
            try {
                invalidateScopeOfLocked(obj);
                Object obj2 = this.derivedStates.get(obj);
                if (obj2 != null) {
                    if (obj2 instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                        Object[] objArr = mutableScatterSet.elements;
                        long[] jArr = mutableScatterSet.metadata;
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
                                            invalidateScopeOfLocked((DerivedState) objArr[(i << 3) + i3]);
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
                    } else {
                        invalidateScopeOfLocked((DerivedState) obj2);
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void removeDerivedStateObservation$runtime(DerivedState<?> derivedState) {
        if (ScopeMap.m5396containsimpl(this.observations, derivedState)) {
            return;
        }
        ScopeMap.m5410removeScopeimpl(this.derivedStates, derivedState);
    }

    public final void removeObservation$runtime(Object obj, RecomposeScopeImpl recomposeScopeImpl) {
        ScopeMap.m5408removeimpl(this.observations, obj, recomposeScopeImpl);
    }

    public final void setComposable(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        this.composable = bm3Var;
    }

    @Override // androidx.compose.runtime.Composition
    public void setContent(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        boolean zClearDeactivated = clearDeactivated();
        ensureRunning();
        if (zClearDeactivated) {
            composeInitialWithReuse(bm3Var);
        } else {
            composeInitial(bm3Var);
        }
    }

    @Override // androidx.compose.runtime.ReusableComposition
    public void setContentWithReuse(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        clearDeactivated();
        ensureRunning();
        composeInitialWithReuse(bm3Var);
    }

    @Override // androidx.compose.runtime.tooling.ObservableComposition
    public CompositionObserverHandle setObserver(final CompositionObserver compositionObserver) {
        synchronized (this.lock) {
            this.observerHolder.setObserver(compositionObserver);
            this.observerHolder.setRoot(true);
            j59 j59Var = j59.a;
        }
        return new CompositionObserverHandle() { // from class: androidx.compose.runtime.CompositionImpl.setObserver.2
            @Override // androidx.compose.runtime.tooling.CompositionObserverHandle
            public void dispose() {
                Object obj = CompositionImpl.this.lock;
                CompositionImpl compositionImpl = CompositionImpl.this;
                CompositionObserver compositionObserver2 = compositionObserver;
                synchronized (obj) {
                    try {
                        if (aa4.e(compositionImpl.getObserverHolder$runtime().getObserver(), compositionObserver2)) {
                            compositionImpl.getObserverHolder$runtime().setObserver(null);
                            compositionImpl.getObserverHolder$runtime().setRoot(false);
                        }
                        j59 j59Var2 = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
    }

    @Override // androidx.compose.runtime.PausableComposition
    public PausedComposition setPausableContent(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        return composeInitialPaused(clearDeactivated(), bm3Var);
    }

    @Override // androidx.compose.runtime.PausableComposition
    public PausedComposition setPausableContentWithReuse(bm3<? super Composer, ? super Integer, j59> bm3Var) {
        clearDeactivated();
        ensureRunning();
        return composeInitialPaused(true, bm3Var);
    }

    public final void setPendingInvalidScopes$runtime(boolean z) {
        this.pendingInvalidScopes = z;
    }

    public final void updateMovingInvalidations$runtime() {
        synchronized (this.lock) {
            drainPendingModificationsOutOfBandLocked();
            MutableScatterMap<Object, Object> mutableScatterMapM5316takeInvalidationsafanTW4 = m5316takeInvalidationsafanTW4();
            try {
                this.composer.mo5321updateComposerInvalidationsRY85e9Y$runtime(mutableScatterMapM5316takeInvalidationsafanTW4);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                this.invalidations = mutableScatterMapM5316takeInvalidationsafanTW4;
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.ControlledComposition
    public void verifyConsistent() {
        synchronized (this.lock) {
            try {
                if (!isComposing()) {
                    this.composer.verifyConsistent$runtime();
                    this.slotStorage.verifyWellFormed();
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void addPendingInvalidationsLocked(Object obj, boolean z) {
        Object obj2 = this.observations.get(obj);
        if (obj2 == null) {
            return;
        }
        if (obj2 instanceof MutableScatterSet) {
            MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
            Object[] objArr = mutableScatterSet.elements;
            long[] jArr = mutableScatterSet.metadata;
            int length = jArr.length - 2;
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr[(i << 3) + i3];
                            if (!ScopeMap.m5408removeimpl(this.observationsProcessed, obj, recomposeScopeImpl) && recomposeScopeImpl.invalidateForResult(obj) != InvalidationResult.IGNORED) {
                                if (recomposeScopeImpl.isConditional() && !z) {
                                    this.conditionallyInvalidatedScopes.add(recomposeScopeImpl);
                                } else {
                                    this.invalidatedScopes.add(recomposeScopeImpl);
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        } else {
            RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj2;
            if (ScopeMap.m5408removeimpl(this.observationsProcessed, obj, recomposeScopeImpl2) || recomposeScopeImpl2.invalidateForResult(obj) == InvalidationResult.IGNORED) {
                return;
            }
            if (recomposeScopeImpl2.isConditional() && !z) {
                this.conditionallyInvalidatedScopes.add(recomposeScopeImpl2);
            } else {
                this.invalidatedScopes.add(recomposeScopeImpl2);
            }
        }
    }
}
