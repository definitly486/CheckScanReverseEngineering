package androidx.compose.runtime;

import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.GroupKind;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeListKt;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.FixupList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.snapshots.ListUtilsKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ObjectLocation;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.ar4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.gx2;
import defpackage.hz0;
import defpackage.iz0;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.o22;
import defpackage.qn1;
import defpackage.to3;
import defpackage.u96;
import defpackage.uo3;
import defpackage.v00;
import defpackage.v39;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class GapComposer extends InternalComposer {
    public static final int $stable = 8;
    private CompositionData _compositionData;
    private final Set<RememberObserver> abandonSet;
    private final Applier<?> applier;
    private final o22 applyCoroutineContext;
    private final ComposerChangeListWriter changeListWriter;
    private Changes changes;
    private int childrenComposing;
    private long compositeKeyHashCode;
    private final CompositionImpl composition;
    private int compositionToken;
    private ChangeList deferredChanges;
    private final GapComposer$derivedStateObserver$1 derivedStateObserver;
    private final CompositionErrorContextImpl errorContext;
    private boolean forceRecomposeScopes;
    private boolean forciblyRecompose;
    private int groupNodeCount;
    private GapAnchor insertAnchor;
    private FixupList insertFixups;
    private SlotTable insertTable;
    private boolean inserting;
    private final ArrayList<RecomposeScopeImpl> invalidateStack;
    private boolean isComposing;
    private boolean isDisposed;
    private Changes lateChanges;
    private int[] nodeCountOverrides;
    private MutableIntIntMap nodeCountVirtualOverrides;
    private boolean nodeExpected;
    private int nodeIndex;
    private final CompositionObserverHolder observerHolder;
    private final CompositionContext parentContext;
    private boolean pausable;
    private GapPending pending;
    private PersistentCompositionLocalMap providerCache;
    private MutableIntObjectMap<PersistentCompositionLocalMap> providerUpdates;
    private boolean providersInvalid;
    private int rGroupIndex;
    private SlotReader reader;
    private boolean reusing;
    private ShouldPauseCallback shouldPauseCallback;
    private final SlotTable slotTable;
    private boolean sourceMarkersEnabled;
    private SlotWriter writer;
    private boolean writerHasAProvider;
    private final ArrayList<GapPending> pendingStack = Stack.m5340constructorimpl$default(null, 1, null);
    private final IntStack parentStateStack = new IntStack();
    private final List<Invalidation> invalidations = new ArrayList();
    private final IntStack entersStack = new IntStack();
    private PersistentCompositionLocalMap rootProvider = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf();
    private final IntStack providersInvalidStack = new IntStack();
    private int reusingGroup = -1;

    public static final class CompositionContextHolder implements RememberObserver {
        public static final int $stable = 8;
        private final CompositionContextImpl ref;

        public CompositionContextHolder(CompositionContextImpl compositionContextImpl) {
            this.ref = compositionContextImpl;
        }

        public final CompositionContextImpl getRef() {
            return this.ref;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onAbandoned() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onForgotten() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onRemembered() {
        }
    }

    public final class CompositionContextImpl extends CompositionContext {
        private final boolean collectingParameterInformation;
        private final boolean collectingSourceInformation;
        private final long compositeKeyHashCode;
        private Set<Set<CompositionData>> inspectionTables;
        private final CompositionObserverHolder observerHolder;
        private final MutableScatterSet<GapComposer> composers = ScatterSetKt.mutableScatterSetOf();
        private final MutableState compositionLocalScope$delegate = SnapshotStateKt.mutableStateOf(PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf(), SnapshotStateKt.referentialEqualityPolicy());

        public CompositionContextImpl(long j, boolean z, boolean z2, CompositionObserverHolder compositionObserverHolder) {
            this.compositeKeyHashCode = j;
            this.collectingParameterInformation = z;
            this.collectingSourceInformation = z2;
            this.observerHolder = compositionObserverHolder;
        }

        private final PersistentCompositionLocalMap getCompositionLocalScope() {
            return (PersistentCompositionLocalMap) this.compositionLocalScope$delegate.getValue();
        }

        private final void setCompositionLocalScope(PersistentCompositionLocalMap persistentCompositionLocalMap) {
            this.compositionLocalScope$delegate.setValue(persistentCompositionLocalMap);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void composeInitial$runtime(ControlledComposition controlledComposition, bm3<? super Composer, ? super Integer, j59> bm3Var) {
            GapComposer.this.parentContext.composeInitial$runtime(controlledComposition, bm3Var);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, bm3<? super Composer, ? super Integer, j59> bm3Var) {
            return GapComposer.this.parentContext.composeInitialPaused$runtime(controlledComposition, shouldPauseCallback, bm3Var);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
            GapComposer.this.parentContext.deletedMovableContent$runtime(movableContentStateReference);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0063 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:22:0x0065 A[LOOP:0: B:9:0x0019->B:22:0x0065, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:26:0x0068 A[EDGE_INSN: B:26:0x0068->B:23:0x0068 BREAK  A[LOOP:0: B:9:0x0019->B:22:0x0065], SYNTHETIC] */
        public final void dispose() {
            if (this.composers.isNotEmpty()) {
                Set<Set<CompositionData>> set = this.inspectionTables;
                if (set != null) {
                    MutableScatterSet<GapComposer> mutableScatterSet = this.composers;
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
                                        GapComposer gapComposer = (GapComposer) objArr[(i << 3) + i3];
                                        Iterator<Set<CompositionData>> it = set.iterator();
                                        while (it.hasNext()) {
                                            it.next().remove(gapComposer.getCompositionData());
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
                this.composers.clear();
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void doneComposing$runtime() {
            GapComposer.this.childrenComposing--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingCallByInformation$runtime() {
            return GapComposer.this.parentContext.getCollectingCallByInformation$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingParameterInformation$runtime() {
            return this.collectingParameterInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingSourceInformation$runtime() {
            return this.collectingSourceInformation;
        }

        public final MutableScatterSet<GapComposer> getComposers() {
            return this.composers;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public long getCompositeKeyHashCode$runtime() {
            return this.compositeKeyHashCode;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public Composition getComposition$runtime() {
            return GapComposer.this.getComposition();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public PersistentCompositionLocalMap getCompositionLocalScope$runtime() {
            return getCompositionLocalScope();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public o22 getEffectCoroutineContext() {
            return GapComposer.this.parentContext.getEffectCoroutineContext();
        }

        public final Set<Set<CompositionData>> getInspectionTables() {
            return this.inspectionTables;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public CompositionObserverHolder getObserverHolder$runtime() {
            return this.observerHolder;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getStackTraceEnabled$runtime() {
            return GapComposer.this.parentContext.getStackTraceEnabled$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
            GapComposer.this.parentContext.insertMovableContent$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidate$runtime(ControlledComposition controlledComposition) {
            GapComposer.this.parentContext.invalidate$runtime(GapComposer.this.getComposition());
            GapComposer.this.parentContext.invalidate$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidateScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
            GapComposer.this.parentContext.invalidateScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier<?> applier) {
            GapComposer.this.parentContext.movableContentStateReleased$runtime(movableContentStateReference, movableContentState, applier);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference) {
            return GapComposer.this.parentContext.movableContentStateResolve$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet<RecomposeScopeImpl> scatterSet) {
            return GapComposer.this.parentContext.recomposePaused$runtime(controlledComposition, shouldPauseCallback, scatterSet);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void recordInspectionTable$runtime(Set<CompositionData> set) {
            Set hashSet = this.inspectionTables;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.inspectionTables = hashSet;
            }
            hashSet.add(set);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void registerComposer$runtime(Composer composer) {
            composer.getClass();
            super.registerComposer$runtime((GapComposer) composer);
            this.composers.add(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void registerComposition$runtime(ControlledComposition controlledComposition) {
            GapComposer.this.parentContext.registerComposition$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
            GapComposer.this.parentContext.reportPausedScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportRemovedComposition$runtime(ControlledComposition controlledComposition) {
            GapComposer.this.parentContext.reportRemovedComposition$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
            return GapComposer.this.parentContext.scheduleFrameEndCallback(ll3Var);
        }

        public final void setInspectionTables(Set<Set<CompositionData>> set) {
            this.inspectionTables = set;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void startComposing$runtime() {
            GapComposer.this.childrenComposing++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposer$runtime(Composer composer) {
            Set<Set<CompositionData>> set = this.inspectionTables;
            if (set != null) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    Set set2 = (Set) it.next();
                    composer.getClass();
                    set2.remove(((GapComposer) composer).getCompositionData());
                }
            }
            if (composer instanceof GapComposer) {
                this.composers.remove(composer);
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposition$runtime(ControlledComposition controlledComposition) {
            GapComposer.this.parentContext.unregisterComposition$runtime(controlledComposition);
        }

        public final void updateCompositionLocalScope(PersistentCompositionLocalMap persistentCompositionLocalMap) {
            setCompositionLocalScope(persistentCompositionLocalMap);
        }
    }

    /* JADX WARN: Type inference failed for: r5v11, types: [androidx.compose.runtime.GapComposer$derivedStateObserver$1] */
    public GapComposer(Applier<?> applier, CompositionContext compositionContext, SlotTable slotTable, Set<RememberObserver> set, Changes changes, Changes changes2, CompositionObserverHolder compositionObserverHolder, CompositionImpl compositionImpl) {
        this.applier = applier;
        this.parentContext = compositionContext;
        this.slotTable = slotTable;
        this.abandonSet = set;
        this.changes = changes;
        this.lateChanges = changes2;
        this.observerHolder = compositionObserverHolder;
        this.composition = compositionImpl;
        this.sourceMarkersEnabled = compositionContext.getCollectingSourceInformation$runtime() || compositionContext.getCollectingCallByInformation$runtime();
        this.derivedStateObserver = new DerivedStateObserver() { // from class: androidx.compose.runtime.GapComposer$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public void done(DerivedState<?> derivedState) {
                this.this$0.childrenComposing--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public void start(DerivedState<?> derivedState) {
                this.this$0.childrenComposing++;
            }
        };
        this.invalidateStack = Stack.m5340constructorimpl$default(null, 1, null);
        SlotReader slotReaderOpenReader = slotTable.openReader();
        slotReaderOpenReader.close();
        this.reader = slotReaderOpenReader;
        SlotTable slotTable2 = new SlotTable();
        if (compositionContext.getCollectingSourceInformation$runtime()) {
            slotTable2.collectSourceInformation();
        }
        if (compositionContext.getCollectingCallByInformation$runtime()) {
            slotTable2.collectCalledByInformation();
        }
        this.insertTable = slotTable2;
        SlotWriter slotWriterOpenWriter = slotTable2.openWriter();
        slotWriterOpenWriter.close(true);
        this.writer = slotWriterOpenWriter;
        this.changeListWriter = new ComposerChangeListWriter(this, ChangeListKt.asGapBufferChangeList(this.changes));
        SlotReader slotReaderOpenReader2 = this.insertTable.openReader();
        try {
            GapAnchor gapAnchorAnchor = slotReaderOpenReader2.anchor(0);
            slotReaderOpenReader2.close();
            this.insertAnchor = gapAnchorAnchor;
            this.insertFixups = new FixupList();
            this.errorContext = new CompositionErrorContextImpl(this);
            o22 effectCoroutineContext = compositionContext.getEffectCoroutineContext();
            o22 errorContext$runtime = getErrorContext$runtime();
            this.applyCoroutineContext = effectCoroutineContext.plus(errorContext$runtime == null ? gx2.b : errorContext$runtime);
        } catch (Throwable th) {
            slotReaderOpenReader2.close();
            throw th;
        }
    }

    private final void abortRoot() {
        cleanUpCompose();
        Stack.m5338clearimpl(this.pendingStack);
        this.parentStateStack.clear();
        this.entersStack.clear();
        this.providersInvalidStack.clear();
        this.providerUpdates = null;
        this.insertFixups.clear();
        this.compositeKeyHashCode = 0L;
        this.childrenComposing = 0;
        this.nodeExpected = false;
        this.inserting = false;
        this.reusing = false;
        this.isComposing = false;
        this.forciblyRecompose = false;
        this.reusingGroup = -1;
        if (!this.reader.getClosed()) {
            this.reader.close();
        }
        if (this.writer.getClosed()) {
            return;
        }
        forceFreshInsertTable();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0063  */
    private final void addRecomposeScope() {
        RecomposeScopeImpl recomposeScopeImpl;
        boolean z;
        if (getInserting()) {
            CompositionImpl composition = getComposition();
            composition.getClass();
            RecomposeScopeImpl recomposeScopeImpl2 = new RecomposeScopeImpl(composition);
            Stack.m5350pushimpl(this.invalidateStack, recomposeScopeImpl2);
            updateValue(recomposeScopeImpl2);
            enterRecomposeScope(recomposeScopeImpl2);
            return;
        }
        Invalidation invalidationRemoveLocation = GapComposerKt.removeLocation(this.invalidations, this.reader.getParent());
        Object next = this.reader.next();
        if (aa4.e(next, Composer.Companion.getEmpty())) {
            CompositionImpl composition2 = getComposition();
            composition2.getClass();
            recomposeScopeImpl = new RecomposeScopeImpl(composition2);
            updateValue(recomposeScopeImpl);
        } else {
            next.getClass();
            recomposeScopeImpl = (RecomposeScopeImpl) next;
        }
        if (invalidationRemoveLocation != null) {
            z = true;
        } else {
            boolean forcedRecompose = recomposeScopeImpl.getForcedRecompose();
            if (forcedRecompose) {
                recomposeScopeImpl.setForcedRecompose(false);
            }
            if (forcedRecompose) {
                z = true;
            } else {
                z = false;
            }
        }
        recomposeScopeImpl.setRequiresRecompose(z);
        Stack.m5350pushimpl(this.invalidateStack, recomposeScopeImpl);
        enterRecomposeScope(recomposeScopeImpl);
        if (recomposeScopeImpl.getPaused()) {
            recomposeScopeImpl.setPaused(false);
            recomposeScopeImpl.setResuming(true);
            this.changeListWriter.startResumingScope(recomposeScopeImpl);
            if (this.reusing || !recomposeScopeImpl.getReusing()) {
                return;
            }
            this.reusing = true;
            this.reusingGroup = this.reader.getParent();
            recomposeScopeImpl.setResetReusing(true);
        }
    }

    private final void cleanUpCompose() {
        this.pending = null;
        this.nodeIndex = 0;
        this.groupNodeCount = 0;
        this.compositeKeyHashCode = 0L;
        this.nodeExpected = false;
        this.changeListWriter.resetTransientState();
        Stack.m5338clearimpl(this.invalidateStack);
        clearUpdatedNodeCounts();
    }

    private final void clearUpdatedNodeCounts() {
        this.nodeCountOverrides = null;
        this.nodeCountVirtualOverrides = null;
    }

    private final long compositeKeyOf(int i, int i2, long j) {
        long jRotateLeft;
        int i3 = 3;
        long jRotateLeft2 = 0;
        int i4 = 0;
        while (i >= 0) {
            if (i == i2) {
                jRotateLeft = Long.rotateLeft(j, i4);
            } else {
                int iGroupCompositeKeyPart = groupCompositeKeyPart(this.reader, i);
                if (iGroupCompositeKeyPart == 126665345) {
                    jRotateLeft = Long.rotateLeft(iGroupCompositeKeyPart, i4);
                } else {
                    jRotateLeft2 = (jRotateLeft2 ^ Long.rotateLeft(iGroupCompositeKeyPart, i3)) ^ Long.rotateLeft(this.reader.hasObjectKey(i) ? 0 : rGroupIndexOf(i), i4);
                    i3 = (i3 + 6) % 64;
                    i4 = (i4 + 6) % 64;
                    i = this.reader.parent(i);
                }
            }
            return jRotateLeft ^ jRotateLeft2;
        }
        return jRotateLeft2;
    }

    private final void createFreshInsertTable() {
        if (!this.writer.getClosed()) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        forceFreshInsertTable();
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope(int i) {
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        if (getInserting() && this.writerHasAProvider) {
            int parent = this.writer.getParent();
            while (parent > 0) {
                if (this.writer.groupKey(parent) == 202 && aa4.e(this.writer.groupObjectKey(parent), ComposerKt.getCompositionLocalMap())) {
                    Object objGroupAux = this.writer.groupAux(parent);
                    objGroupAux.getClass();
                    PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) objGroupAux;
                    this.providerCache = persistentCompositionLocalMap2;
                    return persistentCompositionLocalMap2;
                }
                parent = this.writer.parent(parent);
            }
        }
        if (this.reader.getSize() > 0) {
            while (i > 0) {
                if (this.reader.groupKey(i) == 202 && aa4.e(this.reader.groupObjectKey(i), ComposerKt.getCompositionLocalMap())) {
                    MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
                    if (mutableIntObjectMap == null || (persistentCompositionLocalMap = mutableIntObjectMap.get(i)) == null) {
                        Object objGroupAux2 = this.reader.groupAux(i);
                        objGroupAux2.getClass();
                        persistentCompositionLocalMap = (PersistentCompositionLocalMap) objGroupAux2;
                    }
                    this.providerCache = persistentCompositionLocalMap;
                    return persistentCompositionLocalMap;
                }
                i = this.reader.parent(i);
            }
        }
        PersistentCompositionLocalMap persistentCompositionLocalMap3 = this.rootProvider;
        this.providerCache = persistentCompositionLocalMap3;
        return persistentCompositionLocalMap3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ComposeStackTrace currentStackTrace() {
        if (!this.parentContext.getStackTraceEnabled$runtime()) {
            return null;
        }
        ar4 ar4VarE = u96.e();
        ar4VarE.addAll(ComposeStackTraceBuilderKt.buildTrace$default(this.writer, null, 0, null, 7, null));
        ar4VarE.addAll(ComposeStackTraceBuilderKt.buildTrace(this.reader));
        ar4VarE.addAll(parentStackTrace$runtime());
        return new ComposeStackTrace(u96.d(ar4VarE), getSourceMarkersEnabled$runtime());
    }

    /* JADX INFO: renamed from: doCompose-aFTiNEg, reason: not valid java name */
    private final void m5317doComposeaFTiNEg(MutableScatterMap<Object, Object> mutableScatterMap, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        if (isComposing$runtime()) {
            ComposerKt.composeImmediateRuntimeError("Reentrant composition is not supported");
        }
        CompositionObserver compositionObserverCurrent = this.observerHolder.current();
        Trace trace = Trace.INSTANCE;
        Object objBeginSection = trace.beginSection("Compose:recompose");
        try {
            this.compositionToken = Long.hashCode(SnapshotKt.currentSnapshot().getSnapshotId());
            this.providerUpdates = null;
            mo5321updateComposerInvalidationsRY85e9Y$runtime(mutableScatterMap);
            this.nodeIndex = 0;
            int i = 1;
            this.isComposing = true;
            if (compositionObserverCurrent != null) {
                compositionObserverCurrent.onBeginComposition(getComposition());
            }
            try {
                startRoot();
                Object objNextSlot = nextSlot();
                if (objNextSlot != bm3Var && bm3Var != null) {
                    updateValue(bm3Var);
                }
                GapComposer$derivedStateObserver$1 gapComposer$derivedStateObserver$1 = this.derivedStateObserver;
                MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
                try {
                    mutableVectorDerivedStateObservers.add(gapComposer$derivedStateObserver$1);
                    if (bm3Var != null) {
                        startGroup(200, ComposerKt.getInvocation());
                        Expect_jvmKt.invokeComposable(this, bm3Var);
                        endGroup();
                    } else if ((!this.forciblyRecompose && !this.providersInvalid) || objNextSlot == null || objNextSlot.equals(Composer.Companion.getEmpty())) {
                        skipCurrentGroup();
                    } else {
                        startGroup(200, ComposerKt.getInvocation());
                        v39.c(2, objNextSlot);
                        Expect_jvmKt.invokeComposable(this, (bm3) objNextSlot);
                        endGroup();
                    }
                    mutableVectorDerivedStateObservers.removeAt(mutableVectorDerivedStateObservers.getSize() - 1);
                    endRoot();
                    if (compositionObserverCurrent != null) {
                        compositionObserverCurrent.onEndComposition(getComposition());
                    }
                    this.isComposing = false;
                    this.invalidations.clear();
                    createFreshInsertTable();
                    j59 j59Var = j59.a;
                    trace.endSection(objBeginSection);
                } catch (Throwable th) {
                    mutableVectorDerivedStateObservers.removeAt(mutableVectorDerivedStateObservers.getSize() - 1);
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    throw ComposeStackTraceKt.attachComposeStackTrace(th2, new iz0(this, i));
                } catch (Throwable th3) {
                    if (compositionObserverCurrent != null) {
                        compositionObserverCurrent.onEndComposition(getComposition());
                    }
                    this.isComposing = false;
                    this.invalidations.clear();
                    abortRoot();
                    createFreshInsertTable();
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Trace.INSTANCE.endSection(objBeginSection);
            throw th4;
        }
    }

    private final void doRecordDownsFor(int i, int i2) {
        if (i <= 0 || i == i2) {
            return;
        }
        doRecordDownsFor(this.reader.parent(i), i2);
        if (this.reader.isNode(i)) {
            this.changeListWriter.moveDown(nodeAt(this.reader, i));
        }
    }

    private final void end(boolean z) {
        long jRotateRight;
        long j;
        int remainingSlots;
        List<KeyInfo> list;
        long jRotateRight2;
        long j2;
        int iPeek2 = this.parentStateStack.peek2() - 1;
        if (getInserting()) {
            int parent = this.writer.getParent();
            int iGroupKey = this.writer.groupKey(parent);
            Object objGroupObjectKey = this.writer.groupObjectKey(parent);
            Object objGroupAux = this.writer.groupAux(parent);
            if (objGroupObjectKey != null) {
                int iOrdinal = objGroupObjectKey instanceof Enum ? ((Enum) objGroupObjectKey).ordinal() : objGroupObjectKey.hashCode();
                jRotateRight2 = Long.rotateRight(getCompositeKeyHashCode(), 3);
                j2 = iOrdinal;
            } else if (objGroupAux == null || iGroupKey != 207 || objGroupAux.equals(Composer.Companion.getEmpty())) {
                jRotateRight2 = Long.rotateRight(getCompositeKeyHashCode() ^ ((long) iPeek2), 3);
                j2 = iGroupKey;
            } else {
                this.compositeKeyHashCode = Long.rotateRight(((long) objGroupAux.hashCode()) ^ Long.rotateRight(getCompositeKeyHashCode() ^ ((long) iPeek2), 3), 3);
            }
            this.compositeKeyHashCode = Long.rotateRight(jRotateRight2 ^ j2, 3);
        } else {
            int parent2 = this.reader.getParent();
            int iGroupKey2 = this.reader.groupKey(parent2);
            Object objGroupObjectKey2 = this.reader.groupObjectKey(parent2);
            Object objGroupAux2 = this.reader.groupAux(parent2);
            if (objGroupObjectKey2 != null) {
                int iOrdinal2 = objGroupObjectKey2 instanceof Enum ? ((Enum) objGroupObjectKey2).ordinal() : objGroupObjectKey2.hashCode();
                jRotateRight = Long.rotateRight(getCompositeKeyHashCode(), 3);
                j = iOrdinal2;
            } else if (objGroupAux2 == null || iGroupKey2 != 207 || objGroupAux2.equals(Composer.Companion.getEmpty())) {
                jRotateRight = Long.rotateRight(getCompositeKeyHashCode() ^ ((long) iPeek2), 3);
                j = iGroupKey2;
            } else {
                this.compositeKeyHashCode = Long.rotateRight(((long) objGroupAux2.hashCode()) ^ Long.rotateRight(getCompositeKeyHashCode() ^ ((long) iPeek2), 3), 3);
            }
            this.compositeKeyHashCode = Long.rotateRight(jRotateRight ^ j, 3);
        }
        int i = this.groupNodeCount;
        GapPending gapPending = this.pending;
        if (gapPending != null && gapPending.getKeyInfos().size() > 0) {
            List<KeyInfo> keyInfos = gapPending.getKeyInfos();
            List<KeyInfo> used = gapPending.getUsed();
            Set setFastToSet = ListUtilsKt.fastToSet(used);
            MutableScatterSet mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
            int size = used.size();
            int size2 = keyInfos.size();
            int i2 = 0;
            int i3 = 0;
            int iUpdatedNodeCountOf = 0;
            while (i2 < size2) {
                KeyInfo keyInfo = keyInfos.get(i2);
                if (setFastToSet.contains(keyInfo)) {
                    list = keyInfos;
                    if (!mutableScatterSetMutableScatterSetOf.contains(keyInfo)) {
                        if (i3 < size) {
                            KeyInfo keyInfo2 = used.get(i3);
                            if (keyInfo2 != keyInfo) {
                                int iNodePositionOf = gapPending.nodePositionOf(keyInfo2);
                                mutableScatterSetMutableScatterSetOf.add(keyInfo2);
                                if (iNodePositionOf != iUpdatedNodeCountOf) {
                                    int iUpdatedNodeCountOf2 = gapPending.updatedNodeCountOf(keyInfo2);
                                    this.changeListWriter.moveNode(gapPending.getStartIndex() + iNodePositionOf, iUpdatedNodeCountOf + gapPending.getStartIndex(), iUpdatedNodeCountOf2);
                                    gapPending.registerMoveNode(iNodePositionOf, iUpdatedNodeCountOf, iUpdatedNodeCountOf2);
                                }
                            } else {
                                i2++;
                            }
                            i3++;
                            iUpdatedNodeCountOf += gapPending.updatedNodeCountOf(keyInfo2);
                            keyInfos = list;
                            used = used;
                        }
                    }
                    keyInfos = list;
                } else {
                    this.changeListWriter.removeNode(gapPending.nodePositionOf(keyInfo) + gapPending.getStartIndex(), keyInfo.getNodes());
                    gapPending.updateNodeCount(keyInfo.getLocation(), 0);
                    this.changeListWriter.moveReaderRelativeTo(keyInfo.getLocation());
                    this.reader.reposition(keyInfo.getLocation());
                    recordDelete();
                    this.reader.skipGroup();
                    list = keyInfos;
                    GapComposerKt.removeRange(this.invalidations, keyInfo.getLocation(), this.reader.groupSize(keyInfo.getLocation()) + keyInfo.getLocation());
                }
                i2++;
                keyInfos = list;
            }
            this.changeListWriter.endNodeMovement();
            if (keyInfos.size() > 0) {
                this.changeListWriter.moveReaderRelativeTo(this.reader.getGroupEnd());
                this.reader.skipToGroupEnd();
            }
        }
        boolean inserting = getInserting();
        if (!inserting && (remainingSlots = this.reader.getRemainingSlots()) > 0) {
            this.changeListWriter.trimValues(remainingSlots);
        }
        int i4 = this.nodeIndex;
        while (!this.reader.isGroupEnd()) {
            int currentGroup = this.reader.getCurrentGroup();
            recordDelete();
            this.changeListWriter.removeNode(i4, this.reader.skipGroup());
            GapComposerKt.removeRange(this.invalidations, currentGroup, this.reader.getCurrentGroup());
        }
        if (inserting) {
            if (z) {
                this.insertFixups.endNodeInsert();
                i = 1;
            }
            this.reader.endEmpty();
            int parent3 = this.writer.getParent();
            this.writer.endGroup();
            if (!this.reader.getInEmpty()) {
                int iInsertedGroupVirtualIndex = insertedGroupVirtualIndex(parent3);
                this.writer.endInsert();
                this.writer.close(true);
                recordInsert(this.insertAnchor);
                this.inserting = false;
                if (!this.slotTable.isEmpty()) {
                    updateNodeCount(iInsertedGroupVirtualIndex, 0);
                    updateNodeCountOverrides(iInsertedGroupVirtualIndex, i);
                }
            }
        } else {
            if (z) {
                this.changeListWriter.moveUp();
            }
            this.changeListWriter.endCurrentGroup();
            int parent4 = this.reader.getParent();
            if (i != updatedNodeCount(parent4)) {
                updateNodeCountOverrides(parent4, i);
            }
            if (z) {
                i = 1;
            }
            this.reader.endGroup();
            this.changeListWriter.endNodeMovement();
        }
        exitGroup(i, inserting);
    }

    private final void endGroup() {
        end(false);
    }

    private final void endRoot() {
        endGroup();
        this.parentContext.doneComposing$runtime();
        endGroup();
        this.changeListWriter.endRoot();
        finalizeCompose();
        this.reader.close();
        this.forciblyRecompose = false;
        this.providersInvalid = GapComposerKt.asBool(this.providersInvalidStack.pop());
    }

    private final void ensureWriter() {
        if (this.writer.getClosed()) {
            SlotWriter slotWriterOpenWriter = this.insertTable.openWriter();
            this.writer = slotWriterOpenWriter;
            slotWriterOpenWriter.skipToGroupEnd();
            this.writerHasAProvider = false;
            this.providerCache = null;
        }
    }

    private final void enterGroup(boolean z, GapPending gapPending) {
        Stack.m5350pushimpl(this.pendingStack, this.pending);
        this.pending = gapPending;
        this.parentStateStack.push(this.groupNodeCount);
        this.parentStateStack.push(this.rGroupIndex);
        this.parentStateStack.push(this.nodeIndex);
        if (z) {
            this.nodeIndex = 0;
        }
        this.groupNodeCount = 0;
        this.rGroupIndex = 0;
    }

    private final void enterRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        recomposeScopeImpl.start(this.compositionToken);
        CompositionObserver compositionObserverCurrent = this.observerHolder.current();
        if (compositionObserverCurrent != null) {
            compositionObserverCurrent.onScopeEnter(recomposeScopeImpl);
        }
    }

    private final void exitGroup(int i, boolean z) {
        GapPending gapPending = (GapPending) Stack.m5349popimpl(this.pendingStack);
        if (gapPending != null && !z) {
            gapPending.setGroupIndex(gapPending.getGroupIndex() + 1);
        }
        this.pending = gapPending;
        this.nodeIndex = this.parentStateStack.pop() + i;
        this.rGroupIndex = this.parentStateStack.pop();
        this.groupNodeCount = this.parentStateStack.pop() + i;
    }

    private final nl3<Composition, j59> exitRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        CompositionObserver compositionObserverCurrent = this.observerHolder.current();
        if (compositionObserverCurrent != null) {
            compositionObserverCurrent.onScopeExit(recomposeScopeImpl);
        }
        return recomposeScopeImpl.end(this.compositionToken);
    }

    private final void finalizeCompose() {
        this.changeListWriter.finalizeComposition();
        if (!Stack.m5345isEmptyimpl(this.pendingStack)) {
            ComposerKt.composeImmediateRuntimeError("Start/end imbalance");
        }
        cleanUpCompose();
    }

    private final void forceFreshInsertTable() {
        SlotTable slotTable = new SlotTable();
        if (getSourceMarkersEnabled$runtime()) {
            slotTable.collectSourceInformation();
        }
        if (this.parentContext.getCollectingCallByInformation$runtime()) {
            slotTable.collectCalledByInformation();
        }
        this.insertTable = slotTable;
        SlotWriter slotWriterOpenWriter = slotTable.openWriter();
        slotWriterOpenWriter.close(true);
        this.writer = slotWriterOpenWriter;
    }

    public static /* synthetic */ void getCompositeKeyHashCode$annotations() {
    }

    @ComposeCompilerApi
    public static /* synthetic */ void getDefaultsInvalid$annotations() {
    }

    @ComposeCompilerApi
    public static /* synthetic */ void getInserting$annotations() {
    }

    private final Object getNode(SlotReader slotReader) {
        return slotReader.node(slotReader.getParent());
    }

    @ComposeCompilerApi
    public static /* synthetic */ void getSkipping$annotations() {
    }

    private final int groupCompositeKeyPart(SlotReader slotReader, int i) {
        Object objGroupAux;
        if (!slotReader.hasObjectKey(i)) {
            int iGroupKey = slotReader.groupKey(i);
            return (iGroupKey != 207 || (objGroupAux = slotReader.groupAux(i)) == null || objGroupAux.equals(Composer.Companion.getEmpty())) ? iGroupKey : objGroupAux.hashCode();
        }
        Object objGroupObjectKey = slotReader.groupObjectKey(i);
        if (objGroupObjectKey == null) {
            return 0;
        }
        if (objGroupObjectKey instanceof Enum) {
            return ((Enum) objGroupObjectKey).ordinal();
        }
        return objGroupObjectKey instanceof MovableContent ? MovableContentKt.movableContentKey : objGroupObjectKey.hashCode();
    }

    private final void insertMovableContentGuarded(List<b36<MovableContentStateReference, MovableContentStateReference>> list) throws Throwable {
        ComposerChangeListWriter composerChangeListWriter;
        ChangeList changeList;
        Anchor anchor$runtime;
        SlotReader slotReader;
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap;
        ChangeList changeList2;
        SlotStorage slotStorage$runtime;
        List<b36<MovableContentStateReference, MovableContentStateReference>> list2 = list;
        ComposerChangeListWriter composerChangeListWriter2 = this.changeListWriter;
        ChangeList changeListAsGapBufferChangeList = ChangeListKt.asGapBufferChangeList(this.lateChanges);
        ChangeList changeList3 = composerChangeListWriter2.getChangeList();
        try {
            composerChangeListWriter2.setChangeList(changeListAsGapBufferChangeList);
            this.changeListWriter.resetSlots();
            int size = list2.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                try {
                    b36<MovableContentStateReference, MovableContentStateReference> b36Var = list2.get(i2);
                    final MovableContentStateReference movableContentStateReference = b36Var.b;
                    MovableContentStateReference movableContentStateReference2 = b36Var.c;
                    GapAnchor gapAnchorAsGapAnchor = GapAnchorKt.asGapAnchor(movableContentStateReference.getAnchor$runtime());
                    SlotTable slotTableAsGapBufferSlotTable = SlotTableKt.asGapBufferSlotTable(movableContentStateReference.getSlotStorage$runtime());
                    int iAnchorIndex = slotTableAsGapBufferSlotTable.anchorIndex(gapAnchorAsGapAnchor);
                    IntRef intRef = new IntRef(i, 1, null);
                    this.changeListWriter.determineMovableContentNodeIndex(intRef, gapAnchorAsGapAnchor);
                    if (movableContentStateReference2 == null) {
                        if (slotTableAsGapBufferSlotTable == this.insertTable) {
                            createFreshInsertTable();
                        }
                        final SlotReader slotReaderOpenReader = slotTableAsGapBufferSlotTable.openReader();
                        try {
                            slotReaderOpenReader.reposition(iAnchorIndex);
                            this.changeListWriter.moveReaderToAbsolute(iAnchorIndex);
                            final ChangeList changeList4 = new ChangeList();
                            recomposeMovableContent$default(this, null, null, null, null, new ll3() { // from class: so3
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return GapComposer.insertMovableContentGuarded$lambda$0$0$0$0(this.b, changeList4, slotReaderOpenReader, movableContentStateReference);
                                }
                            }, 15, null);
                            this.changeListWriter.includeOperationsIn(changeList4, intRef);
                            j59 j59Var = j59.a;
                            slotReaderOpenReader.close();
                        } catch (Throwable th) {
                            slotReaderOpenReader.close();
                            throw th;
                        }
                    } else {
                        MovableContentState movableContentStateMovableContentStateResolve$runtime = this.parentContext.movableContentStateResolve$runtime(movableContentStateReference2);
                        SlotTable slotTableAsGapBufferSlotTable2 = (movableContentStateMovableContentStateResolve$runtime == null || (slotStorage$runtime = movableContentStateMovableContentStateResolve$runtime.getSlotStorage$runtime()) == null) ? null : SlotTableKt.asGapBufferSlotTable(slotStorage$runtime);
                        SlotTable slotTableAsGapBufferSlotTable3 = slotTableAsGapBufferSlotTable2 == null ? SlotTableKt.asGapBufferSlotTable(movableContentStateReference2.getSlotStorage$runtime()) : slotTableAsGapBufferSlotTable2;
                        if (slotTableAsGapBufferSlotTable2 == null || (anchor$runtime = slotTableAsGapBufferSlotTable2.anchor(0)) == null) {
                            anchor$runtime = movableContentStateReference2.getAnchor$runtime();
                        }
                        GapAnchor gapAnchorAsGapAnchor2 = GapAnchorKt.asGapAnchor(anchor$runtime);
                        List<? extends Object> listCollectNodesFrom = GapComposerKt.collectNodesFrom(slotTableAsGapBufferSlotTable3, gapAnchorAsGapAnchor2);
                        if (!listCollectNodesFrom.isEmpty()) {
                            this.changeListWriter.copyNodesToNewAnchorLocation(listCollectNodesFrom, intRef);
                            SlotTable slotTable = this.slotTable;
                            if (slotTableAsGapBufferSlotTable == slotTable) {
                                int iAnchorIndex2 = slotTable.anchorIndex(gapAnchorAsGapAnchor);
                                updateNodeCount(iAnchorIndex2, updatedNodeCount(iAnchorIndex2) + listCollectNodesFrom.size());
                            }
                        }
                        this.changeListWriter.copySlotTableToAnchorLocation(movableContentStateMovableContentStateResolve$runtime, this.parentContext, movableContentStateReference2, movableContentStateReference);
                        SlotReader slotReaderOpenReader2 = slotTableAsGapBufferSlotTable3.openReader();
                        try {
                            SlotReader slotReader2 = this.reader;
                            int[] iArr = this.nodeCountOverrides;
                            MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap2 = this.providerUpdates;
                            this.nodeCountOverrides = null;
                            this.providerUpdates = null;
                            try {
                                this.reader = slotReaderOpenReader2;
                                int iAnchorIndex3 = slotTableAsGapBufferSlotTable3.anchorIndex(GapAnchorKt.asGapAnchor(gapAnchorAsGapAnchor2));
                                slotReaderOpenReader2.reposition(iAnchorIndex3);
                                this.changeListWriter.moveReaderToAbsolute(iAnchorIndex3);
                                ChangeList changeList5 = new ChangeList();
                                ComposerChangeListWriter composerChangeListWriter3 = this.changeListWriter;
                                ChangeList changeList6 = composerChangeListWriter3.getChangeList();
                                try {
                                    composerChangeListWriter3.setChangeList(changeList5);
                                    slotReader = slotReaderOpenReader2;
                                    try {
                                        ComposerChangeListWriter composerChangeListWriter4 = this.changeListWriter;
                                        boolean implicitRootStart = composerChangeListWriter4.getImplicitRootStart();
                                        try {
                                            composerChangeListWriter4.setImplicitRootStart(false);
                                            try {
                                                iArr = iArr;
                                                mutableIntObjectMap = mutableIntObjectMap2;
                                                changeList2 = changeList6;
                                                try {
                                                    recomposeMovableContent(movableContentStateReference2.getComposition$runtime(), movableContentStateReference.getComposition$runtime(), Integer.valueOf(slotReader.getCurrentGroup()), movableContentStateReference2.getInvalidations$runtime(), new to3(0, this, movableContentStateReference));
                                                    try {
                                                        composerChangeListWriter4.setImplicitRootStart(implicitRootStart);
                                                        try {
                                                            composerChangeListWriter3.setChangeList(changeList2);
                                                            this.changeListWriter.includeOperationsIn(changeList5, intRef);
                                                            j59 j59Var2 = j59.a;
                                                            try {
                                                                this.reader = slotReader2;
                                                                this.nodeCountOverrides = iArr;
                                                                this.providerUpdates = mutableIntObjectMap;
                                                                slotReader.close();
                                                            } catch (Throwable th2) {
                                                                th = th2;
                                                                slotReader.close();
                                                                throw th;
                                                            }
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            this.reader = slotReader2;
                                                            this.nodeCountOverrides = iArr;
                                                            this.providerUpdates = mutableIntObjectMap;
                                                            throw th;
                                                        }
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        composerChangeListWriter3.setChangeList(changeList2);
                                                        throw th;
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    composerChangeListWriter4.setImplicitRootStart(implicitRootStart);
                                                    throw th;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                iArr = iArr;
                                                changeList2 = changeList6;
                                                mutableIntObjectMap = mutableIntObjectMap2;
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            iArr = iArr;
                                            mutableIntObjectMap = mutableIntObjectMap2;
                                            changeList2 = changeList6;
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        mutableIntObjectMap = mutableIntObjectMap2;
                                        changeList2 = changeList6;
                                        composerChangeListWriter3.setChangeList(changeList2);
                                        throw th;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    slotReader = slotReaderOpenReader2;
                                }
                            } catch (Throwable th10) {
                                th = th10;
                                iArr = iArr;
                                slotReader = slotReaderOpenReader2;
                                mutableIntObjectMap = mutableIntObjectMap2;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            slotReader = slotReaderOpenReader2;
                        }
                    }
                    try {
                        this.changeListWriter.skipToEndOfCurrentGroup();
                        i2++;
                        list2 = list;
                        size = size;
                        composerChangeListWriter2 = composerChangeListWriter2;
                        changeList3 = changeList3;
                        i = 0;
                    } catch (Throwable th12) {
                        th = th12;
                        composerChangeListWriter = composerChangeListWriter2;
                        changeList = changeList3;
                        composerChangeListWriter.setChangeList(changeList);
                        throw th;
                    }
                } catch (Throwable th13) {
                    th = th13;
                    composerChangeListWriter2 = composerChangeListWriter2;
                    changeList3 = changeList3;
                }
            }
            ComposerChangeListWriter composerChangeListWriter5 = composerChangeListWriter2;
            ChangeList changeList7 = changeList3;
            this.changeListWriter.endMovableContentPlacement();
            this.changeListWriter.moveReaderToAbsolute(0);
            composerChangeListWriter5.setChangeList(changeList7);
        } catch (Throwable th14) {
            th = th14;
            composerChangeListWriter = composerChangeListWriter2;
            changeList = changeList3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertMovableContentGuarded$lambda$0$0$0$0(GapComposer gapComposer, ChangeList changeList, SlotReader slotReader, MovableContentStateReference movableContentStateReference) {
        ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
        ChangeList changeList2 = composerChangeListWriter.getChangeList();
        try {
            composerChangeListWriter.setChangeList(changeList);
            SlotReader slotReader2 = gapComposer.reader;
            int[] iArr = gapComposer.nodeCountOverrides;
            MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = gapComposer.providerUpdates;
            gapComposer.nodeCountOverrides = null;
            gapComposer.providerUpdates = null;
            try {
                gapComposer.reader = slotReader;
                ComposerChangeListWriter composerChangeListWriter2 = gapComposer.changeListWriter;
                boolean implicitRootStart = composerChangeListWriter2.getImplicitRootStart();
                try {
                    composerChangeListWriter2.setImplicitRootStart(false);
                    gapComposer.invokeMovableContentLambda(movableContentStateReference.getContent$runtime(), movableContentStateReference.getLocals$runtime(), movableContentStateReference.getParameter$runtime(), true);
                    composerChangeListWriter2.setImplicitRootStart(implicitRootStart);
                    j59 j59Var = j59.a;
                    gapComposer.reader = slotReader2;
                    gapComposer.nodeCountOverrides = iArr;
                    gapComposer.providerUpdates = mutableIntObjectMap;
                    composerChangeListWriter.setChangeList(changeList2);
                    return j59.a;
                } catch (Throwable th) {
                    composerChangeListWriter2.setImplicitRootStart(implicitRootStart);
                    throw th;
                }
            } catch (Throwable th2) {
                gapComposer.reader = slotReader2;
                gapComposer.nodeCountOverrides = iArr;
                gapComposer.providerUpdates = mutableIntObjectMap;
                throw th2;
            }
        } catch (Throwable th3) {
            composerChangeListWriter.setChangeList(changeList2);
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertMovableContentGuarded$lambda$0$0$1$0$0$0$0(GapComposer gapComposer, MovableContentStateReference movableContentStateReference) {
        gapComposer.invokeMovableContentLambda(movableContentStateReference.getContent$runtime(), movableContentStateReference.getLocals$runtime(), movableContentStateReference.getParameter$runtime(), true);
        return j59.a;
    }

    private final int insertedGroupVirtualIndex(int i) {
        return (-2) - i;
    }

    private final void invokeMovableContentLambda(MovableContent<Object> movableContent, PersistentCompositionLocalMap persistentCompositionLocalMap, Object obj, boolean z) {
        startMovableGroup(MovableContentKt.movableContentKey, movableContent);
        updateSlot(obj);
        long compositeKeyHashCode = getCompositeKeyHashCode();
        int i = 1;
        try {
            this.compositeKeyHashCode = 126665345L;
            int i2 = 0;
            if (getInserting()) {
                SlotWriter.markGroup$default(this.writer, 0, 1, null);
            }
            boolean z2 = (getInserting() || aa4.e(this.reader.getGroupAux(), persistentCompositionLocalMap)) ? false : true;
            if (z2) {
                recordProviderUpdate(persistentCompositionLocalMap);
            }
            m5318startAzEfcrM(ComposerKt.compositionLocalMapKey, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m5424getGroup9udXigM(), persistentCompositionLocalMap);
            this.providerCache = null;
            if (!getInserting() || z) {
                boolean z3 = this.providersInvalid;
                this.providersInvalid = z2;
                Expect_jvmKt.invokeComposable(this, ComposableLambdaKt.composableLambdaInstance(-59194059, true, new uo3(i2, movableContent, obj)));
                this.providersInvalid = z3;
            } else {
                this.writerHasAProvider = true;
                SlotWriter slotWriter = this.writer;
                this.parentContext.insertMovableContent$runtime(new MovableContentStateReference(movableContent, obj, getComposition(), this.insertTable, slotWriter.anchor(slotWriter.parent(slotWriter.getParent())), kx2.b, currentCompositionLocalScope(), null));
            }
            endGroup();
            this.providerCache = null;
            this.compositeKeyHashCode = compositeKeyHashCode;
            endMovableGroup();
        } catch (Throwable th) {
            try {
                throw ComposeStackTraceKt.attachComposeStackTrace(th, new hz0(this, i));
            } catch (Throwable th2) {
                endGroup();
                this.providerCache = null;
                this.compositeKeyHashCode = compositeKeyHashCode;
                endMovableGroup();
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeMovableContentLambda$lambda$0(MovableContent movableContent, Object obj, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-59194059, i, -1, "androidx.compose.runtime.GapComposer.invokeMovableContentLambda.<anonymous> (GapComposer.kt:2265)");
            }
            movableContent.getContent().invoke(obj, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    private final Object nodeAt(SlotReader slotReader, int i) {
        return slotReader.node(i);
    }

    private final int nodeIndexOf(int i, int i2, int i3, int i4) {
        int iParent = this.reader.parent(i2);
        while (iParent != i3 && !this.reader.isNode(iParent)) {
            iParent = this.reader.parent(iParent);
        }
        if (this.reader.isNode(iParent)) {
            i4 = 0;
        }
        if (iParent == i2) {
            return i4;
        }
        int iUpdatedNodeCount = (updatedNodeCount(iParent) - this.reader.nodeCount(i2)) + i4;
        loop1: while (i4 < iUpdatedNodeCount && iParent != i) {
            iParent++;
            while (iParent < i) {
                int iGroupSize = this.reader.groupSize(iParent) + iParent;
                if (i >= iGroupSize) {
                    i4 += this.reader.isNode(iParent) ? 1 : updatedNodeCount(iParent);
                    iParent = iGroupSize;
                }
            }
            break loop1;
        }
        return i4;
    }

    private final int rGroupIndexOf(int i) {
        int iParent = this.reader.parent(i) + 1;
        int i2 = 0;
        while (iParent < i) {
            if (!this.reader.hasObjectKey(iParent)) {
                i2++;
            }
            iParent += this.reader.groupSize(iParent);
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0040 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0007, B:5:0x0015, B:7:0x0023, B:11:0x002d, B:10:0x0029, B:14:0x0034, B:16:0x003a, B:18:0x0040), top: B:23:0x0007 }] */
    private final <R> R recomposeMovableContent(ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List<? extends b36<RecomposeScopeImpl, ? extends Object>> list, ll3<? extends R> ll3Var) {
        R rInvoke;
        boolean zIsComposing$runtime = isComposing$runtime();
        int i = this.nodeIndex;
        try {
            this.isComposing = true;
            this.nodeIndex = 0;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                b36<RecomposeScopeImpl, ? extends Object> b36Var = list.get(i2);
                RecomposeScopeImpl recomposeScopeImpl = b36Var.b;
                Object obj = b36Var.c;
                if (obj != null) {
                    tryImminentInvalidation$runtime(recomposeScopeImpl, obj);
                } else {
                    tryImminentInvalidation$runtime(recomposeScopeImpl, null);
                }
            }
            if (controlledComposition == null) {
                rInvoke = ll3Var.invoke();
            } else {
                rInvoke = (R) controlledComposition.delegateInvalidations(controlledComposition2, num != null ? num.intValue() : -1, ll3Var);
                if (rInvoke == null) {
                    rInvoke = ll3Var.invoke();
                }
            }
            return rInvoke;
        } finally {
            this.isComposing = zIsComposing$runtime;
            this.nodeIndex = i;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object recomposeMovableContent$default(GapComposer gapComposer, ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List list, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            controlledComposition = null;
        }
        if ((i & 2) != 0) {
            controlledComposition2 = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            list = kx2.b;
        }
        return gapComposer.recomposeMovableContent(controlledComposition, controlledComposition2, num, list, ll3Var);
    }

    private final void recomposeToGroupEnd() {
        boolean zIsComposing$runtime = isComposing$runtime();
        this.isComposing = true;
        int parent = this.reader.getParent();
        int iGroupSize = this.reader.groupSize(parent) + parent;
        int i = this.nodeIndex;
        long compositeKeyHashCode = getCompositeKeyHashCode();
        int i2 = this.groupNodeCount;
        int i3 = this.rGroupIndex;
        Invalidation invalidationFirstInRange = GapComposerKt.firstInRange(this.invalidations, this.reader.getCurrentGroup(), iGroupSize);
        boolean z = false;
        int i4 = parent;
        while (invalidationFirstInRange != null) {
            int location = invalidationFirstInRange.getLocation();
            RecomposeScopeImpl scope = invalidationFirstInRange.getScope();
            GapComposerKt.removeLocation(this.invalidations, location);
            if (invalidationFirstInRange.isInvalid()) {
                this.reader.reposition(location);
                int currentGroup = this.reader.getCurrentGroup();
                recordUpsAndDowns(i4, currentGroup, parent);
                this.nodeIndex = nodeIndexOf(location, currentGroup, parent, i);
                this.rGroupIndex = rGroupIndexOf(currentGroup);
                this.compositeKeyHashCode = compositeKeyOf(this.reader.parent(currentGroup), parent, compositeKeyHashCode);
                this.providerCache = null;
                scope.compose(this);
                this.providerCache = null;
                this.reader.restoreParent(parent);
                z = true;
                i4 = currentGroup;
            } else {
                Stack.m5350pushimpl(this.invalidateStack, scope);
                CompositionObserver compositionObserverCurrent = this.observerHolder.current();
                if (compositionObserverCurrent != null) {
                    try {
                        compositionObserverCurrent.onScopeEnter(scope);
                        scope.rereadTrackedInstances();
                        compositionObserverCurrent.onScopeExit(scope);
                    } catch (Throwable th) {
                        compositionObserverCurrent.onScopeExit(scope);
                        throw th;
                    }
                } else {
                    scope.rereadTrackedInstances();
                }
                Stack.m5349popimpl(this.invalidateStack);
            }
            invalidationFirstInRange = GapComposerKt.firstInRange(this.invalidations, this.reader.getCurrentGroup(), iGroupSize);
        }
        if (z) {
            recordUpsAndDowns(i4, parent, parent);
            this.reader.skipToGroupEnd();
            int iUpdatedNodeCount = updatedNodeCount(parent);
            this.nodeIndex = i + iUpdatedNodeCount;
            this.groupNodeCount = i2 + iUpdatedNodeCount;
            this.rGroupIndex = i3;
        } else {
            skipReaderToGroupEnd();
        }
        this.compositeKeyHashCode = compositeKeyHashCode;
        this.isComposing = zIsComposing$runtime;
    }

    private final void recordDelete() {
        reportFreeMovableContent(this.reader.getCurrentGroup());
        this.changeListWriter.removeCurrentGroup();
    }

    private final void recordInsert(GapAnchor gapAnchor) {
        boolean zIsEmpty = this.insertFixups.isEmpty();
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (zIsEmpty) {
            composerChangeListWriter.insertSlots(gapAnchor, this.insertTable);
        } else {
            composerChangeListWriter.insertSlots(gapAnchor, this.insertTable, this.insertFixups);
            this.insertFixups = new FixupList();
        }
    }

    private final void recordProviderUpdate(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap<>(0, 1, null);
            this.providerUpdates = mutableIntObjectMap;
        }
        mutableIntObjectMap.set(this.reader.getCurrentGroup(), persistentCompositionLocalMap);
    }

    private final void recordUpsAndDowns(int i, int i2, int i3) {
        SlotReader slotReader = this.reader;
        int iNearestCommonRootOf = GapComposerKt.nearestCommonRootOf(slotReader, i, i2, i3);
        while (i > 0 && i != iNearestCommonRootOf) {
            if (slotReader.isNode(i)) {
                this.changeListWriter.moveUp();
            }
            i = slotReader.parent(i);
        }
        doRecordDownsFor(i2, iNearestCommonRootOf);
    }

    private final int rememberObserverGroupIndex() {
        return this.rGroupIndex - 1;
    }

    private final void reportAllMovableContent() {
        if (this.slotTable.containsMark()) {
            getComposition().updateMovingInvalidations$runtime();
            ChangeList changeList = new ChangeList();
            setDeferredChanges$runtime(changeList);
            SlotReader slotReaderOpenReader = this.slotTable.openReader();
            try {
                this.reader = slotReaderOpenReader;
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.getChangeList();
                try {
                    composerChangeListWriter.setChangeList(changeList);
                    reportFreeMovableContent(0);
                    this.changeListWriter.releaseMovableContent();
                    composerChangeListWriter.setChangeList(changeList2);
                    j59 j59Var = j59.a;
                    slotReaderOpenReader.close();
                } catch (Throwable th) {
                    composerChangeListWriter.setChangeList(changeList2);
                    throw th;
                }
            } catch (Throwable th2) {
                slotReaderOpenReader.close();
                throw th2;
            }
        }
    }

    private final void reportFreeMovableContent(int i) {
        boolean zIsNode = this.reader.isNode(i);
        if (zIsNode) {
            this.changeListWriter.endNodeMovement();
            this.changeListWriter.moveDown(this.reader.node(i));
        }
        reportFreeMovableContent$reportGroup(this, i, i, zIsNode, 0);
        this.changeListWriter.endNodeMovement();
        if (zIsNode) {
            this.changeListWriter.moveUp();
        }
    }

    private static final MovableContentStateReference reportFreeMovableContent$createMovableContentReferenceForGroup(GapComposer gapComposer, int i, List<MovableContentStateReference> list) {
        Object objGroupObjectKey = gapComposer.reader.groupObjectKey(i);
        objGroupObjectKey.getClass();
        MovableContent movableContent = (MovableContent) objGroupObjectKey;
        Object objGroupGet = gapComposer.reader.groupGet(i, 0);
        GapAnchor gapAnchorAnchor = gapComposer.reader.anchor(i);
        int iGroupSize = gapComposer.reader.groupSize(i) + i;
        ArrayList arrayList = new ArrayList();
        List<Invalidation> list2 = gapComposer.invalidations;
        for (int iFindInsertLocation = GapComposerKt.findInsertLocation(list2, i); iFindInsertLocation < list2.size(); iFindInsertLocation++) {
            Invalidation invalidation = list2.get(iFindInsertLocation);
            if (invalidation.getLocation() >= iGroupSize) {
                break;
            }
            arrayList.add(new b36(invalidation.getScope(), invalidation.getInstances()));
        }
        return new MovableContentStateReference(movableContent, objGroupGet, gapComposer.getComposition(), gapComposer.slotTable, gapAnchorAnchor, arrayList, gapComposer.currentCompositionLocalScope(i), list);
    }

    private static final MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor(GapComposer gapComposer, int i) {
        int iGroupKey = gapComposer.reader.groupKey(i);
        Object objGroupObjectKey = gapComposer.reader.groupObjectKey(i);
        ArrayList arrayList = null;
        if (iGroupKey != 126665345 || !(objGroupObjectKey instanceof MovableContent)) {
            return null;
        }
        if (gapComposer.reader.containsMark(i)) {
            ArrayList arrayList2 = new ArrayList();
            reportFreeMovableContent$movableContentReferenceFor$traverseGroups(gapComposer, arrayList2, i);
            if (!arrayList2.isEmpty()) {
                arrayList = arrayList2;
            }
        }
        return reportFreeMovableContent$createMovableContentReferenceForGroup(gapComposer, i, arrayList);
    }

    private static final void reportFreeMovableContent$movableContentReferenceFor$traverseGroups(GapComposer gapComposer, List<MovableContentStateReference> list, int i) {
        int iGroupSize = gapComposer.reader.groupSize(i) + i;
        int iGroupSize2 = i + 1;
        while (iGroupSize2 < iGroupSize) {
            if (gapComposer.reader.hasMark(iGroupSize2)) {
                MovableContentStateReference movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(gapComposer, iGroupSize2);
                if (movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor != null) {
                    list.add(movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor);
                }
            } else if (gapComposer.reader.containsMark(iGroupSize2)) {
                reportFreeMovableContent$movableContentReferenceFor$traverseGroups(gapComposer, list, iGroupSize2);
            }
            iGroupSize2 += gapComposer.reader.groupSize(iGroupSize2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00cb A[LOOP:0: B:35:0x008b->B:45:0x00cb, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x00ce A[EDGE_INSN: B:82:0x00ce->B:46:0x00ce BREAK  A[LOOP:0: B:35:0x008b->B:45:0x00cb], SYNTHETIC] */
    private static final int reportFreeMovableContent$reportGroup(GapComposer gapComposer, int i, int i2, boolean z, int i3) {
        SlotReader slotReader = gapComposer.reader;
        if (!slotReader.hasMark(i2)) {
            if (!slotReader.containsMark(i2)) {
                if (slotReader.isNode(i2)) {
                    return 1;
                }
                return slotReader.nodeCount(i2);
            }
            int iGroupSize = slotReader.groupSize(i2) + i2;
            int iReportFreeMovableContent$reportGroup = 0;
            for (int iGroupSize2 = i2 + 1; iGroupSize2 < iGroupSize; iGroupSize2 += slotReader.groupSize(iGroupSize2)) {
                boolean zIsNode = slotReader.isNode(iGroupSize2);
                if (zIsNode) {
                    gapComposer.changeListWriter.endNodeMovement();
                    gapComposer.changeListWriter.moveDown(slotReader.node(iGroupSize2));
                }
                iReportFreeMovableContent$reportGroup += reportFreeMovableContent$reportGroup(gapComposer, i, iGroupSize2, zIsNode || z, zIsNode ? 0 : i3 + iReportFreeMovableContent$reportGroup);
                if (zIsNode) {
                    gapComposer.changeListWriter.endNodeMovement();
                    gapComposer.changeListWriter.moveUp();
                }
            }
            if (slotReader.isNode(i2)) {
                return 1;
            }
            return iReportFreeMovableContent$reportGroup;
        }
        int iGroupKey = slotReader.groupKey(i2);
        Object objGroupObjectKey = slotReader.groupObjectKey(i2);
        if (iGroupKey == 126665345 && (objGroupObjectKey instanceof MovableContent)) {
            MovableContentStateReference movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(gapComposer, i2);
            if (movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor != null) {
                gapComposer.parentContext.deletedMovableContent$runtime(movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor);
                gapComposer.changeListWriter.recordSlotEditing();
                gapComposer.changeListWriter.releaseMovableGroupAtCurrent(gapComposer.getComposition(), gapComposer.parentContext, movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor);
            }
            if (!z || i2 == i) {
                return slotReader.nodeCount(i2);
            }
            gapComposer.changeListWriter.endNodeMovementAndDeleteNode(i3, i2);
            return 0;
        }
        if (iGroupKey != 206 || !aa4.e(objGroupObjectKey, ComposerKt.getReference())) {
            if (slotReader.isNode(i2)) {
                return 1;
            }
            return slotReader.nodeCount(i2);
        }
        Object objGroupGet = slotReader.groupGet(i2, 0);
        RememberObserverHolder rememberObserverHolder = objGroupGet instanceof RememberObserverHolder ? (RememberObserverHolder) objGroupGet : null;
        RememberObserver wrapped = rememberObserverHolder != null ? rememberObserverHolder.getWrapped() : null;
        CompositionContextHolder compositionContextHolder = wrapped instanceof CompositionContextHolder ? (CompositionContextHolder) wrapped : null;
        if (compositionContextHolder != null) {
            MutableScatterSet<GapComposer> composers = compositionContextHolder.getRef().getComposers();
            Object[] objArr = composers.elements;
            long[] jArr = composers.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i4 = 0;
                while (true) {
                    long j = jArr[i4];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i4 != length) {
                            break;
                            break;
                        }
                        i4++;
                    } else {
                        int i5 = 8 - ((~(i4 - length)) >>> 31);
                        for (int i6 = 0; i6 < i5; i6++) {
                            if ((255 & j) < 128) {
                                GapComposer gapComposer2 = (GapComposer) objArr[(i4 << 3) + i6];
                                gapComposer2.reportAllMovableContent();
                                gapComposer.parentContext.reportRemovedComposition$runtime(gapComposer2.getComposition());
                            }
                            j >>= 8;
                        }
                        if (i5 != 8) {
                            break;
                        }
                        if (i4 != length) {
                            break;
                        }
                        i4++;
                    }
                }
            }
        }
        return slotReader.nodeCount(i2);
    }

    private final void skipGroup() {
        this.groupNodeCount = this.reader.skipGroup() + this.groupNodeCount;
    }

    private final void skipReaderToGroupEnd() {
        this.groupNodeCount = this.reader.getParentNodes();
        this.reader.skipToGroupEnd();
    }

    private final List<ComposeStackTraceFrame> stackTraceForGroup(int i, Integer num) {
        SlotReader slotReaderOpenReader = this.slotTable.openReader();
        try {
            return ComposeStackTraceBuilderKt.traceForGroup(slotReaderOpenReader, i, num);
        } finally {
            slotReaderOpenReader.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean stackTraceForValue$lambda$0(Object obj, Object obj2) {
        if (obj2 == obj) {
            return true;
        }
        RememberObserverHolder rememberObserverHolder = obj2 instanceof RememberObserverHolder ? (RememberObserverHolder) obj2 : null;
        return (rememberObserverHolder != null ? rememberObserverHolder.getWrapped() : null) == obj;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006d  */
    /* JADX WARN: Code duplicated, block: B:22:0x007b  */
    /* JADX WARN: Code duplicated, block: B:23:0x007d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0085  */
    /* JADX WARN: Code duplicated, block: B:28:0x0092  */
    /* JADX WARN: Code duplicated, block: B:29:0x009e  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ae A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:42:0x00da  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:57:0x0107  */
    /* JADX WARN: Code duplicated, block: B:60:0x011a  */
    /* JADX WARN: Code duplicated, block: B:67:0x015a  */
    /* JADX WARN: Code duplicated, block: B:69:0x0173  */
    /* JADX WARN: Code duplicated, block: B:70:0x017f  */
    /* JADX WARN: Code duplicated, block: B:72:0x0183 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0185  */
    /* JADX WARN: Code duplicated, block: B:75:0x018f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x0191  */
    /* JADX WARN: Code duplicated, block: B:81:0x01c4  */
    /* JADX INFO: renamed from: start-AzEfcrM, reason: not valid java name */
    private final void m5318startAzEfcrM(int i, Object obj, int i2, Object obj2) {
        long jRotateLeft;
        GroupKind.Companion companion;
        boolean z;
        GapPending gapPending;
        boolean z2;
        GapPending gapPending2;
        SlotWriter slotWriter;
        int currentGroup;
        SlotWriter slotWriter2;
        GapPending gapPending3;
        validateNodeNotExpected();
        int i3 = this.rGroupIndex;
        if (obj == null) {
            if (obj2 == null || i != 207 || obj2.equals(Composer.Companion.getEmpty())) {
                jRotateLeft = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) i), 3) ^ ((long) i3);
            } else {
                this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) obj2.hashCode()), 3) ^ ((long) i3);
            }
            if (obj == null) {
                this.rGroupIndex++;
            }
            companion = GroupKind.Companion;
            if (i2 != companion.m5424getGroup9udXigM()) {
                z = true;
            } else {
                z = false;
            }
            gapPending = null;
            if (getInserting()) {
                this.reader.beginEmpty();
                currentGroup = this.writer.getCurrentGroup();
                if (z) {
                    this.writer.startNode(i, Composer.Companion.getEmpty());
                } else {
                    slotWriter2 = this.writer;
                    if (obj2 != null) {
                        if (obj == null) {
                            obj = Composer.Companion.getEmpty();
                        }
                        slotWriter2.startData(i, obj, obj2);
                    } else {
                        if (obj == null) {
                            obj = Composer.Companion.getEmpty();
                        }
                        slotWriter2.startGroup(i, obj);
                    }
                }
                gapPending3 = this.pending;
                if (gapPending3 != null) {
                    KeyInfo keyInfo = new KeyInfo(i, -1, insertedGroupVirtualIndex(currentGroup), -1, 0);
                    gapPending3.registerInsert(keyInfo, this.nodeIndex - gapPending3.getStartIndex());
                    gapPending3.recordUsed(keyInfo);
                }
                enterGroup(z, null);
                return;
            }
            if (i2 != companion.m5425getNode9udXigM() && this.reusing) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.pending == null) {
                int groupKey = this.reader.getGroupKey();
                if (z2 && groupKey == i && aa4.e(obj, this.reader.getGroupObjectKey())) {
                    startReaderGroup(z, obj2);
                } else {
                    this.pending = new GapPending(this.reader.extractKeys(), this.nodeIndex);
                }
            }
            gapPending2 = this.pending;
            if (gapPending2 != null) {
                KeyInfo next = gapPending2.getNext(i, obj);
                if (!z2 || next == null) {
                    this.reader.beginEmpty();
                    this.inserting = true;
                    this.providerCache = null;
                    ensureWriter();
                    this.writer.beginInsert();
                    int currentGroup2 = this.writer.getCurrentGroup();
                    if (z) {
                        this.writer.startNode(i, Composer.Companion.getEmpty());
                    } else {
                        slotWriter = this.writer;
                        if (obj2 != null) {
                            if (obj == null) {
                                obj = Composer.Companion.getEmpty();
                            }
                            slotWriter.startData(i, obj, obj2);
                        } else {
                            if (obj == null) {
                                obj = Composer.Companion.getEmpty();
                            }
                            slotWriter.startGroup(i, obj);
                        }
                    }
                    this.insertAnchor = this.writer.anchor(currentGroup2);
                    KeyInfo keyInfo2 = new KeyInfo(i, -1, insertedGroupVirtualIndex(currentGroup2), -1, 0);
                    gapPending2.registerInsert(keyInfo2, this.nodeIndex - gapPending2.getStartIndex());
                    gapPending2.recordUsed(keyInfo2);
                    gapPending = new GapPending(new ArrayList(), z ? 0 : this.nodeIndex);
                } else {
                    gapPending2.recordUsed(next);
                    int location = next.getLocation();
                    this.nodeIndex = gapPending2.nodePositionOf(next) + gapPending2.getStartIndex();
                    int iSlotPositionOf = gapPending2.slotPositionOf(next);
                    int groupIndex = iSlotPositionOf - gapPending2.getGroupIndex();
                    gapPending2.registerMoveSlot(iSlotPositionOf, gapPending2.getGroupIndex());
                    this.changeListWriter.moveReaderRelativeTo(location);
                    this.reader.reposition(location);
                    if (groupIndex > 0) {
                        this.changeListWriter.moveCurrentGroup(groupIndex);
                    }
                    startReaderGroup(z, obj2);
                }
            }
            enterGroup(z, gapPending);
        }
        jRotateLeft = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) (obj instanceof Enum ? ((Enum) obj).ordinal() : obj.hashCode())), 3);
        this.compositeKeyHashCode = jRotateLeft;
        if (obj == null) {
            this.rGroupIndex++;
        }
        companion = GroupKind.Companion;
        if (i2 != companion.m5424getGroup9udXigM()) {
            z = true;
        } else {
            z = false;
        }
        gapPending = null;
        if (getInserting()) {
            this.reader.beginEmpty();
            currentGroup = this.writer.getCurrentGroup();
            if (z) {
                this.writer.startNode(i, Composer.Companion.getEmpty());
            } else {
                slotWriter2 = this.writer;
                if (obj2 != null) {
                    if (obj == null) {
                        obj = Composer.Companion.getEmpty();
                    }
                    slotWriter2.startData(i, obj, obj2);
                } else {
                    if (obj == null) {
                        obj = Composer.Companion.getEmpty();
                    }
                    slotWriter2.startGroup(i, obj);
                }
            }
            gapPending3 = this.pending;
            if (gapPending3 != null) {
                KeyInfo keyInfo3 = new KeyInfo(i, -1, insertedGroupVirtualIndex(currentGroup), -1, 0);
                gapPending3.registerInsert(keyInfo3, this.nodeIndex - gapPending3.getStartIndex());
                gapPending3.recordUsed(keyInfo3);
            }
            enterGroup(z, null);
            return;
        }
        if (i2 != companion.m5425getNode9udXigM()) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (this.pending == null) {
            int groupKey2 = this.reader.getGroupKey();
            if (z2) {
                this.pending = new GapPending(this.reader.extractKeys(), this.nodeIndex);
            } else {
                this.pending = new GapPending(this.reader.extractKeys(), this.nodeIndex);
            }
        }
        gapPending2 = this.pending;
        if (gapPending2 != null) {
            KeyInfo next2 = gapPending2.getNext(i, obj);
            if (z2) {
                this.reader.beginEmpty();
                this.inserting = true;
                this.providerCache = null;
                ensureWriter();
                this.writer.beginInsert();
                int currentGroup3 = this.writer.getCurrentGroup();
                if (z) {
                    this.writer.startNode(i, Composer.Companion.getEmpty());
                } else {
                    slotWriter = this.writer;
                    if (obj2 != null) {
                        if (obj == null) {
                            obj = Composer.Companion.getEmpty();
                        }
                        slotWriter.startData(i, obj, obj2);
                    } else {
                        if (obj == null) {
                            obj = Composer.Companion.getEmpty();
                        }
                        slotWriter.startGroup(i, obj);
                    }
                }
                this.insertAnchor = this.writer.anchor(currentGroup3);
                KeyInfo keyInfo4 = new KeyInfo(i, -1, insertedGroupVirtualIndex(currentGroup3), -1, 0);
                gapPending2.registerInsert(keyInfo4, this.nodeIndex - gapPending2.getStartIndex());
                gapPending2.recordUsed(keyInfo4);
                gapPending = new GapPending(new ArrayList(), z ? 0 : this.nodeIndex);
            } else {
                this.reader.beginEmpty();
                this.inserting = true;
                this.providerCache = null;
                ensureWriter();
                this.writer.beginInsert();
                int currentGroup4 = this.writer.getCurrentGroup();
                if (z) {
                    this.writer.startNode(i, Composer.Companion.getEmpty());
                } else {
                    slotWriter = this.writer;
                    if (obj2 != null) {
                        if (obj == null) {
                            obj = Composer.Companion.getEmpty();
                        }
                        slotWriter.startData(i, obj, obj2);
                    } else {
                        if (obj == null) {
                            obj = Composer.Companion.getEmpty();
                        }
                        slotWriter.startGroup(i, obj);
                    }
                }
                this.insertAnchor = this.writer.anchor(currentGroup4);
                KeyInfo keyInfo5 = new KeyInfo(i, -1, insertedGroupVirtualIndex(currentGroup4), -1, 0);
                gapPending2.registerInsert(keyInfo5, this.nodeIndex - gapPending2.getStartIndex());
                gapPending2.recordUsed(keyInfo5);
                gapPending = new GapPending(new ArrayList(), z ? 0 : this.nodeIndex);
            }
        }
        enterGroup(z, gapPending);
    }

    private final void startGroup(int i) {
        m5318startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    private final void startReaderGroup(boolean z, Object obj) {
        if (z) {
            this.reader.startNode();
            return;
        }
        if (obj != null && this.reader.getGroupAux() != obj) {
            this.changeListWriter.updateAuxData(obj);
        }
        this.reader.startGroup();
    }

    private final void startRoot() {
        this.rGroupIndex = 0;
        this.reader = this.slotTable.openReader();
        startGroup(100);
        this.parentContext.startComposing$runtime();
        PersistentCompositionLocalMap compositionLocalScope$runtime = this.parentContext.getCompositionLocalScope$runtime();
        this.providersInvalidStack.push(GapComposerKt.asInt(this.providersInvalid));
        this.providersInvalid = changed(compositionLocalScope$runtime);
        this.providerCache = null;
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = this.parentContext.getCollectingParameterInformation$runtime();
        }
        if (!getSourceMarkersEnabled$runtime()) {
            setSourceMarkersEnabled$runtime(this.parentContext.getCollectingSourceInformation$runtime());
        }
        if (getSourceMarkersEnabled$runtime()) {
            CompositionLocal<CompositionErrorContext> localCompositionErrorContext = CompositionErrorContextKt.getLocalCompositionErrorContext();
            localCompositionErrorContext.getClass();
            compositionLocalScope$runtime = compositionLocalScope$runtime.putValue(localCompositionErrorContext, new StaticValueHolder(getErrorContext$runtime()));
        }
        this.rootProvider = compositionLocalScope$runtime;
        Set<CompositionData> set = (Set) CompositionLocalMapKt.read(compositionLocalScope$runtime, InspectionTablesKt.getLocalInspectionTables());
        if (set != null) {
            set.add(getCompositionData());
            this.parentContext.recordInspectionTable$runtime(set);
        }
        startGroup(Long.hashCode(this.parentContext.getCompositeKeyHashCode$runtime()));
    }

    private final void updateCompositeKeyWhenWeEnterGroup(int i, int i2, Object obj, Object obj2) {
        if (obj != null) {
            if (obj instanceof Enum) {
                this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) ((Enum) obj).ordinal()), 3);
                return;
            } else {
                this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) obj.hashCode()), 3);
                return;
            }
        }
        if (obj2 == null || i != 207 || obj2.equals(Composer.Companion.getEmpty())) {
            this.compositeKeyHashCode = ((long) i2) ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) i), 3);
        } else {
            this.compositeKeyHashCode = ((long) i2) ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) obj2.hashCode()), 3);
        }
    }

    private final void updateCompositeKeyWhenWeEnterGroupKeyHash(int i, int i2) {
        this.compositeKeyHashCode = ((long) i2) ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) i), 3);
    }

    private final void updateCompositeKeyWhenWeExitGroup(int i, int i2, Object obj, Object obj2) {
        if (obj != null) {
            if (obj instanceof Enum) {
                this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) ((Enum) obj).ordinal()), 3);
                return;
            } else {
                this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) obj.hashCode()), 3);
                return;
            }
        }
        if (obj2 == null || i != 207 || obj2.equals(Composer.Companion.getEmpty())) {
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i2), 3) ^ ((long) i), 3);
        } else {
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i2), 3) ^ ((long) obj2.hashCode()), 3);
        }
    }

    private final void updateCompositeKeyWhenWeExitGroupKeyHash(int i, int i2) {
        this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i2), 3) ^ ((long) i), 3);
    }

    private final void updateNodeCount(int i, int i2) {
        if (updatedNodeCount(i) != i2) {
            int i3 = 0;
            if (i < 0) {
                MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap(i3, 1, null);
                    this.nodeCountVirtualOverrides = mutableIntIntMap;
                }
                mutableIntIntMap.set(i, i2);
                return;
            }
            int[] iArr = this.nodeCountOverrides;
            if (iArr == null) {
                iArr = new int[this.reader.getSize()];
                aq5.u(-1, 0, 6, iArr);
                this.nodeCountOverrides = iArr;
            }
            iArr[i] = i2;
        }
    }

    private final void updateNodeCountOverrides(int i, int i2) {
        int iUpdatedNodeCount = updatedNodeCount(i);
        if (iUpdatedNodeCount != i2) {
            int i3 = i2 - iUpdatedNodeCount;
            int iM5343getSizeimpl = Stack.m5343getSizeimpl(this.pendingStack) - 1;
            while (i != -1) {
                int iUpdatedNodeCount2 = updatedNodeCount(i) + i3;
                updateNodeCount(i, iUpdatedNodeCount2);
                for (int i4 = iM5343getSizeimpl; -1 < i4; i4--) {
                    GapPending gapPending = (GapPending) Stack.m5348peekimpl(this.pendingStack, i4);
                    if (gapPending != null && gapPending.updateNodeCount(i, iUpdatedNodeCount2)) {
                        iM5343getSizeimpl = i4 - 1;
                        break;
                    }
                }
                SlotReader slotReader = this.reader;
                if (i < 0) {
                    i = slotReader.getParent();
                } else if (slotReader.isNode(i)) {
                    return;
                } else {
                    i = this.reader.parent(i);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.runtime.PersistentCompositionLocalMap, java.lang.Object] */
    private final PersistentCompositionLocalMap updateProviderMapGroup(PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalMap persistentCompositionLocalMap2) {
        PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder = persistentCompositionLocalMap.builder2();
        builder.putAll(persistentCompositionLocalMap2);
        ?? Build = builder.build2();
        startGroup(204, ComposerKt.getProviderMaps());
        updateSlot(Build);
        updateSlot(persistentCompositionLocalMap2);
        endGroup();
        return Build;
    }

    private final void updateSlot(Object obj) {
        nextSlot();
        updateValue(obj);
    }

    private final int updatedNodeCount(int i) {
        int i2;
        if (i >= 0) {
            int[] iArr = this.nodeCountOverrides;
            return (iArr == null || (i2 = iArr[i]) < 0) ? this.reader.nodeCount(i) : i2;
        }
        MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
        if (mutableIntIntMap == null || !mutableIntIntMap.containsKey(i)) {
            return 0;
        }
        return mutableIntIntMap.get(i);
    }

    private final void validateNodeExpected() {
        if (!this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.nodeExpected = false;
    }

    private final void validateNodeNotExpected() {
        if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
        }
    }

    private final <R> R withReader(SlotReader slotReader, ll3<? extends R> ll3Var) {
        SlotReader slotReader2 = this.reader;
        int[] iArr = this.nodeCountOverrides;
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
        this.nodeCountOverrides = null;
        this.providerUpdates = null;
        try {
            this.reader = slotReader;
            return ll3Var.invoke();
        } finally {
            this.reader = slotReader2;
            this.nodeCountOverrides = iArr;
            this.providerUpdates = mutableIntObjectMap;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public <V, T> void apply(V v, bm3<? super T, ? super V, j59> bm3Var) {
        if (getInserting()) {
            this.insertFixups.updateNode(v, bm3Var);
        } else {
            this.changeListWriter.updateNode(v, bm3Var);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionContext buildContext() {
        GapComposer gapComposer;
        startGroup(ComposerKt.referenceKey, ComposerKt.getReference());
        if (getInserting()) {
            SlotWriter.markGroup$default(this.writer, 0, 1, null);
        }
        Object objNextSlot = nextSlot();
        RememberObserverHolder reusableGapRememberObserverHolder = objNextSlot instanceof RememberObserverHolder ? (RememberObserverHolder) objNextSlot : null;
        if (reusableGapRememberObserverHolder == null) {
            gapComposer = this;
            reusableGapRememberObserverHolder = new ReusableGapRememberObserverHolder(new CompositionContextHolder(gapComposer.new CompositionContextImpl(getCompositeKeyHashCode(), this.forceRecomposeScopes, getSourceMarkersEnabled$runtime(), getComposition().getObserverHolder$runtime())), -1);
            gapComposer.updateValue(reusableGapRememberObserverHolder);
        } else {
            gapComposer = this;
        }
        RememberObserver wrapped = reusableGapRememberObserverHolder.getWrapped();
        wrapped.getClass();
        CompositionContextHolder compositionContextHolder = (CompositionContextHolder) wrapped;
        compositionContextHolder.getRef().updateCompositionLocalScope(gapComposer.currentCompositionLocalScope());
        gapComposer.endGroup();
        return compositionContextHolder.getRef();
    }

    @ComposeCompilerApi
    public final <T> T cache(boolean z, ll3<? extends T> ll3Var) {
        T t = (T) nextSlotForCache();
        if (t != Composer.Companion.getEmpty() && !z) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        updateCachedValue(tInvoke);
        return tInvoke;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(float f) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Float) && f == ((Number) objNextSlot).floatValue()) {
            return false;
        }
        updateValue(Float.valueOf(f));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changedInstance(Object obj) {
        if (nextSlot() == obj) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void changesApplied$runtime() {
        this.providerUpdates = null;
    }

    @Override // androidx.compose.runtime.Composer
    public void collectParameterInformation() {
        this.forceRecomposeScopes = true;
        setSourceMarkersEnabled$runtime(true);
        this.slotTable.collectSourceInformation();
        this.insertTable.collectSourceInformation();
        this.writer.updateToTableMaps();
    }

    @Override // androidx.compose.runtime.InternalComposer
    /* JADX INFO: renamed from: composeContent--ZbOJvo$runtime, reason: not valid java name */
    public void mo5319composeContentZbOJvo$runtime(MutableScatterMap<Object, Object> mutableScatterMap, bm3<? super Composer, ? super Integer, j59> bm3Var, ShouldPauseCallback shouldPauseCallback) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        this.shouldPauseCallback = shouldPauseCallback;
        try {
            m5317doComposeaFTiNEg(mutableScatterMap, bm3Var);
        } finally {
            this.shouldPauseCallback = null;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public <T> T consume(CompositionLocal<T> compositionLocal) {
        return (T) CompositionLocalMapKt.read(currentCompositionLocalScope(), compositionLocal);
    }

    @Override // androidx.compose.runtime.Composer
    public <T> void createNode(ll3<? extends T> ll3Var) {
        validateNodeExpected();
        if (!getInserting()) {
            ComposerKt.composeImmediateRuntimeError("createNode() can only be called when inserting");
        }
        int iPeek = this.parentStateStack.peek();
        SlotWriter slotWriter = this.writer;
        GapAnchor gapAnchorAnchor = slotWriter.anchor(slotWriter.getParent());
        this.groupNodeCount++;
        this.insertFixups.createAndInsertNode(ll3Var, iPeek, gapAnchorAnchor);
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void deactivate$runtime() {
        Stack.m5338clearimpl(this.invalidateStack);
        this.invalidations.clear();
        this.changes.clear();
        this.providerUpdates = null;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void deactivateToEndGroup(boolean z) {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling deactivateToEndGroup");
        }
        if (getInserting()) {
            return;
        }
        if (!z) {
            skipReaderToGroupEnd();
            return;
        }
        int currentGroup = this.reader.getCurrentGroup();
        int currentEnd = this.reader.getCurrentEnd();
        this.changeListWriter.deactivateCurrentGroup();
        GapComposerKt.removeRange(this.invalidations, currentGroup, currentEnd);
        this.reader.skipToGroupEnd();
    }

    @Override // androidx.compose.runtime.Composer
    public void disableReusing() {
        this.reusing = false;
    }

    @Override // androidx.compose.runtime.Composer
    public void disableSourceInformation() {
        setSourceMarkersEnabled$runtime(false);
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void dispose$runtime() {
        Object objBeginSection = Trace.INSTANCE.beginSection("Compose:Composer.dispose");
        try {
            this.parentContext.unregisterComposer$runtime(this);
            deactivate$runtime();
            getApplier().clear();
            this.isDisposed = true;
            j59 j59Var = j59.a;
        } finally {
            Trace.INSTANCE.endSection(objBeginSection);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void enableReusing() {
        this.reusing = this.reusingGroup >= 0;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endDefaults() {
        endGroup();
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime == null || !currentRecomposeScope$runtime.getUsed()) {
            return;
        }
        currentRecomposeScope$runtime.setDefaultsInScope(true);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endMovableGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public void endNode() {
        end(true);
    }

    @Override // androidx.compose.runtime.Composer
    public void endProvider() {
        endGroup();
        endGroup();
        this.providersInvalid = GapComposerKt.asBool(this.providersInvalidStack.pop());
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    public void endProviders() {
        endGroup();
        endGroup();
        this.providersInvalid = GapComposerKt.asBool(this.providersInvalidStack.pop());
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endReplaceGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endReplaceableGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public ScopeUpdateScope endRestartGroup() {
        GapAnchor gapAnchorAnchor;
        RecomposeScopeImpl recomposeScopeImpl = null;
        RecomposeScopeImpl recomposeScopeImpl2 = Stack.m5346isNotEmptyimpl(this.invalidateStack) ? (RecomposeScopeImpl) Stack.m5349popimpl(this.invalidateStack) : null;
        if (recomposeScopeImpl2 != null) {
            recomposeScopeImpl2.setRequiresRecompose(false);
            nl3<Composition, j59> nl3VarExitRecomposeScope = exitRecomposeScope(recomposeScopeImpl2);
            if (nl3VarExitRecomposeScope != null) {
                this.changeListWriter.endCompositionScope(nl3VarExitRecomposeScope, getComposition());
            }
            if (recomposeScopeImpl2.getResuming()) {
                recomposeScopeImpl2.setResuming(false);
                this.changeListWriter.endResumingScope(recomposeScopeImpl2);
                recomposeScopeImpl2.setReusing(false);
                if (recomposeScopeImpl2.getResetReusing()) {
                    recomposeScopeImpl2.setResetReusing(false);
                    if (this.reusingGroup == this.reader.getParent()) {
                        this.reusing = false;
                        this.reusingGroup = -1;
                    }
                }
            }
        }
        if (recomposeScopeImpl2 != null && !recomposeScopeImpl2.getSkipped$runtime() && (recomposeScopeImpl2.getUsed() || this.forceRecomposeScopes)) {
            if (recomposeScopeImpl2.getAnchor() == null) {
                if (getInserting()) {
                    SlotWriter slotWriter = this.writer;
                    gapAnchorAnchor = slotWriter.anchor(slotWriter.getParent());
                } else {
                    SlotReader slotReader = this.reader;
                    gapAnchorAnchor = slotReader.anchor(slotReader.getParent());
                }
                recomposeScopeImpl2.setAnchor(gapAnchorAnchor);
            }
            recomposeScopeImpl2.setDefaultsInvalid(false);
            recomposeScopeImpl = recomposeScopeImpl2;
        }
        end(false);
        return recomposeScopeImpl;
    }

    @Override // androidx.compose.runtime.Composer
    public void endReusableGroup() {
        if (this.reusing && this.reader.getParent() == this.reusingGroup) {
            this.reusingGroup = -1;
            this.reusing = false;
        }
        end(false);
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void endReuseFromRoot$runtime() {
        if (!(!isComposing$runtime() && this.reusingGroup == 0)) {
            PreconditionsKt.throwIllegalArgumentException("Cannot disable reuse from root if it was caused by other groups");
        }
        this.reusingGroup = -1;
        this.reusing = false;
    }

    @Override // androidx.compose.runtime.Composer
    public void endToMarker(int i) {
        if (i < 0) {
            int i2 = -i;
            SlotWriter slotWriter = this.writer;
            while (true) {
                int parent = slotWriter.getParent();
                if (parent <= i2) {
                    return;
                } else {
                    end(slotWriter.isNode(parent));
                }
            }
        } else {
            if (getInserting()) {
                SlotWriter slotWriter2 = this.writer;
                while (getInserting()) {
                    end(slotWriter2.isNode(slotWriter2.getParent()));
                }
            }
            SlotReader slotReader = this.reader;
            while (true) {
                int parent2 = slotReader.getParent();
                if (parent2 <= i) {
                    return;
                } else {
                    end(slotReader.isNode(parent2));
                }
            }
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean forceRecomposeScopes$runtime() {
        if (this.forceRecomposeScopes) {
            return false;
        }
        this.forceRecomposeScopes = true;
        this.forciblyRecompose = true;
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public Applier<?> getApplier() {
        return this.applier;
    }

    @Override // androidx.compose.runtime.Composer
    public o22 getApplyCoroutineContext() {
        return this.applyCoroutineContext;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean getAreChildrenComposing$runtime() {
        return this.childrenComposing > 0;
    }

    @Override // androidx.compose.runtime.Composer
    public long getCompositeKeyHashCode() {
        return this.compositeKeyHashCode;
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionData getCompositionData() {
        CompositionData compositionData = this._compositionData;
        if (compositionData != null) {
            return compositionData;
        }
        GapCompositionDataImpl gapCompositionDataImpl = new GapCompositionDataImpl(getComposition());
        this._compositionData = gapCompositionDataImpl;
        return gapCompositionDataImpl;
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionLocalMap getCurrentCompositionLocalMap() {
        return currentCompositionLocalScope();
    }

    @Override // androidx.compose.runtime.Composer
    public int getCurrentMarker() {
        return getInserting() ? -this.writer.getParent() : this.reader.getParent();
    }

    @Override // androidx.compose.runtime.InternalComposer
    public RecomposeScopeImpl getCurrentRecomposeScope$runtime() {
        ArrayList<RecomposeScopeImpl> arrayList = this.invalidateStack;
        if (this.childrenComposing == 0 && Stack.m5346isNotEmptyimpl(arrayList)) {
            return (RecomposeScopeImpl) Stack.m5347peekimpl(arrayList);
        }
        return null;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getDefaultsInvalid() {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        return !getSkipping() || this.providersInvalid || ((currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) != null && currentRecomposeScope$runtime.getDefaultsInvalid());
    }

    @Override // androidx.compose.runtime.InternalComposer
    public CompositionErrorContextImpl getErrorContext$runtime() {
        if (this.parentContext.getStackTraceEnabled$runtime()) {
            return this.errorContext;
        }
        return null;
    }

    public final boolean getHasInvalidations() {
        return !this.invalidations.isEmpty();
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean getHasPendingChanges$runtime() {
        return this.changes.isNotEmpty();
    }

    public final SlotTable getInsertTable$runtime() {
        return this.insertTable;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getInserting() {
        return this.inserting;
    }

    public final SlotReader getReader$runtime() {
        return this.reader;
    }

    @Override // androidx.compose.runtime.Composer
    public RecomposeScope getRecomposeScope() {
        return getCurrentRecomposeScope$runtime();
    }

    @Override // androidx.compose.runtime.Composer
    public Object getRecomposeScopeIdentity() {
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null) {
            return currentRecomposeScope$runtime.getAnchor();
        }
        return null;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getSkipping() {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        return (getInserting() || this.reusing || this.providersInvalid || (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) == null || currentRecomposeScope$runtime.getRequiresRecompose() || this.forciblyRecompose) ? false : true;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean getSourceMarkersEnabled$runtime() {
        return this.sourceMarkersEnabled;
    }

    @Override // androidx.compose.runtime.Composer
    public void insertMovableContent(MovableContent<?> movableContent, Object obj) {
        movableContent.getClass();
        invokeMovableContentLambda(movableContent, currentCompositionLocalScope(), obj, false);
    }

    @Override // androidx.compose.runtime.Composer
    public void insertMovableContentReferences(List<b36<MovableContentStateReference, MovableContentStateReference>> list) {
        Trace trace = Trace.INSTANCE;
        Object objBeginSection = trace.beginSection("Compose:insertMovableContent");
        try {
            try {
                insertMovableContentGuarded(list);
                cleanUpCompose();
                j59 j59Var = j59.a;
                trace.endSection(objBeginSection);
            } catch (Throwable th) {
                abortRoot();
                throw th;
            }
        } catch (Throwable th2) {
            Trace.INSTANCE.endSection(objBeginSection);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean isComposing$runtime() {
        return this.isComposing;
    }

    public final boolean isDisposed$runtime() {
        return this.isDisposed;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public Object joinKey(Object obj, Object obj2) {
        Object key = GapComposerKt.getKey(this.reader.getGroupObjectKey(), obj, obj2);
        return key == null ? new JoinedKey(obj, obj2) : key;
    }

    public final Object nextSlot() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        return (!this.reusing || (next instanceof ReusableRememberObserverHolder)) ? next : Composer.Companion.getEmpty();
    }

    public final Object nextSlotForCache() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        if (!this.reusing || (next instanceof ReusableRememberObserverHolder)) {
            return next instanceof RememberObserverHolder ? ((RememberObserverHolder) next).getWrapped() : next;
        }
        return Composer.Companion.getEmpty();
    }

    @Override // androidx.compose.runtime.InternalComposer
    public int parentKey$runtime() {
        if (getInserting()) {
            SlotWriter slotWriter = this.writer;
            return slotWriter.groupKey(slotWriter.getParent());
        }
        SlotReader slotReader = this.reader;
        return slotReader.groupKey(slotReader.getParent());
    }

    @Override // androidx.compose.runtime.InternalComposer
    public List<ComposeStackTraceFrame> parentStackTrace$runtime() {
        Integer numFindSubcompositionContextGroup;
        Composition composition$runtime = this.parentContext.getComposition$runtime();
        CompositionImpl compositionImpl = composition$runtime instanceof CompositionImpl ? (CompositionImpl) composition$runtime : null;
        if (compositionImpl == null || (numFindSubcompositionContextGroup = ComposeStackTraceBuilderKt.findSubcompositionContextGroup(SlotTableKt.asGapBufferSlotTable(compositionImpl.getSlotStorage$runtime()), this.parentContext)) == null) {
            return kx2.b;
        }
        SlotReader slotReaderOpenReader = SlotTableKt.asGapBufferSlotTable(compositionImpl.getSlotStorage$runtime()).openReader();
        try {
            return qn1.h0(compositionImpl.getComposer$runtime().parentStackTrace$runtime(), ComposeStackTraceBuilderKt.traceForGroup(slotReaderOpenReader, numFindSubcompositionContextGroup.intValue(), 0));
        } finally {
            slotReaderOpenReader.close();
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void prepareCompose$runtime(ll3<j59> ll3Var) {
        if (isComposing$runtime()) {
            ComposerKt.composeImmediateRuntimeError("Preparing a composition while composing is not supported");
        }
        this.isComposing = true;
        try {
            ll3Var.invoke();
        } finally {
            this.isComposing = false;
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    /* JADX INFO: renamed from: recompose-aFTiNEg$runtime, reason: not valid java name */
    public boolean mo5320recomposeaFTiNEg$runtime(MutableScatterMap<Object, Object> mutableScatterMap, ShouldPauseCallback shouldPauseCallback) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        if (ScopeMap.m5403getSizeimpl(mutableScatterMap) <= 0 && this.invalidations.isEmpty() && !this.forciblyRecompose) {
            return false;
        }
        this.shouldPauseCallback = shouldPauseCallback;
        try {
            m5317doComposeaFTiNEg(mutableScatterMap, null);
            return this.changes.isNotEmpty();
        } finally {
            this.shouldPauseCallback = null;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void recordSideEffect(ll3<j59> ll3Var) {
        this.changeListWriter.sideEffect(ll3Var);
    }

    @Override // androidx.compose.runtime.Composer
    public void recordUsed(RecomposeScope recomposeScope) {
        RecomposeScopeImpl recomposeScopeImpl = recomposeScope instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) recomposeScope : null;
        if (recomposeScopeImpl != null) {
            recomposeScopeImpl.setUsed(true);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public Object rememberedValue() {
        return nextSlotForCache();
    }

    @Override // androidx.compose.runtime.Composer
    public CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
        return this.parentContext.scheduleFrameEndCallback(ll3Var);
    }

    public void setDeferredChanges$runtime(ChangeList changeList) {
        this.deferredChanges = changeList;
    }

    public final void setInsertTable$runtime(SlotTable slotTable) {
        this.insertTable = slotTable;
    }

    public final void setReader$runtime(SlotReader slotReader) {
        this.reader = slotReader;
    }

    public void setSourceMarkersEnabled$runtime(boolean z) {
        this.sourceMarkersEnabled = z;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean shouldExecute(boolean z, int i) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        if ((i & 1) == 0 && (getInserting() || this.reusing)) {
            ShouldPauseCallback shouldPauseCallback = this.shouldPauseCallback;
            if (shouldPauseCallback != null && (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) != null && shouldPauseCallback.shouldPause() && !currentRecomposeScope$runtime.getResuming()) {
                currentRecomposeScope$runtime.setUsed(true);
                currentRecomposeScope$runtime.setReusing(this.reusing);
                currentRecomposeScope$runtime.setPaused(true);
                this.changeListWriter.rememberPausingScope(currentRecomposeScope$runtime);
                this.parentContext.reportPausedScope$runtime(currentRecomposeScope$runtime);
                return false;
            }
        } else if (!z && getSkipping()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x008c  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:32:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e3  */
    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void skipCurrentGroup() {
        long jRotateLeft;
        if (this.invalidations.isEmpty()) {
            skipGroup();
            return;
        }
        SlotReader slotReader = this.reader;
        int groupKey = slotReader.getGroupKey();
        Object groupObjectKey = slotReader.getGroupObjectKey();
        Object groupAux = slotReader.getGroupAux();
        int i = this.rGroupIndex;
        if (groupObjectKey == null) {
            if (groupAux == null || groupKey != 207 || groupAux.equals(Composer.Companion.getEmpty())) {
                jRotateLeft = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) groupKey), 3) ^ ((long) i);
            } else {
                this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) groupAux.hashCode()), 3) ^ ((long) i);
            }
            startReaderGroup(slotReader.isNode(), null);
            recomposeToGroupEnd();
            slotReader.endGroup();
            if (groupObjectKey != null) {
                if (groupObjectKey instanceof Enum) {
                    this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) ((Enum) groupObjectKey).ordinal()), 3);
                } else {
                    this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) groupObjectKey.hashCode()), 3);
                }
            }
            if (groupAux == null && groupKey == 207 && !groupAux.equals(Composer.Companion.getEmpty())) {
                this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i), 3) ^ ((long) groupAux.hashCode()), 3);
                return;
            } else {
                this.compositeKeyHashCode = Long.rotateRight(((long) groupKey) ^ Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i), 3), 3);
            }
        }
        jRotateLeft = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) (groupObjectKey instanceof Enum ? ((Enum) groupObjectKey).ordinal() : groupObjectKey.hashCode())), 3);
        this.compositeKeyHashCode = jRotateLeft;
        startReaderGroup(slotReader.isNode(), null);
        recomposeToGroupEnd();
        slotReader.endGroup();
        if (groupObjectKey != null) {
            if (groupAux == null) {
            }
            this.compositeKeyHashCode = Long.rotateRight(((long) groupKey) ^ Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i), 3), 3);
        } else if (groupObjectKey instanceof Enum) {
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) ((Enum) groupObjectKey).ordinal()), 3);
        } else {
            this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) groupObjectKey.hashCode()), 3);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void skipToGroupEnd() {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling skipAndEndGroup");
        }
        if (getInserting()) {
            return;
        }
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null) {
            currentRecomposeScope$runtime.scopeSkipped();
        }
        if (this.invalidations.isEmpty()) {
            skipReaderToGroupEnd();
        } else {
            recomposeToGroupEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void sourceInformation(String str) {
        if (getInserting() && getSourceMarkersEnabled$runtime()) {
            this.writer.recordGroupSourceInformation(str);
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void sourceInformationMarkerEnd() {
        if (getInserting() && getSourceMarkersEnabled$runtime()) {
            this.writer.recordGrouplessCallSourceInformationEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void sourceInformationMarkerStart(int i, String str) {
        if (getInserting() && getSourceMarkersEnabled$runtime()) {
            this.writer.recordGrouplessCallSourceInformationStart(i, str);
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public ComposeStackTrace stackTraceForValue$runtime(Object obj) {
        List listH0;
        ObjectLocation objectLocationFindLocation = ComposeStackTraceBuilderKt.findLocation(this.slotTable, new v00(obj, 1));
        if (objectLocationFindLocation != null) {
            listH0 = qn1.h0(parentStackTrace$runtime(), stackTraceForGroup(objectLocationFindLocation.component1(), objectLocationFindLocation.component2()));
        } else {
            listH0 = kx2.b;
        }
        return new ComposeStackTrace(listH0, getSourceMarkersEnabled$runtime());
    }

    @Override // androidx.compose.runtime.InternalComposer
    public int stacksSize$runtime() {
        return Stack.m5343getSizeimpl(this.pendingStack) + Stack.m5343getSizeimpl(this.invalidateStack) + this.entersStack.tos + this.providersInvalidStack.tos + this.parentStateStack.tos;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startDefaults() {
        m5318startAzEfcrM(ComposerKt.defaultsKey, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startMovableGroup(int i, Object obj) {
        m5318startAzEfcrM(i, obj, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void startNode() {
        m5318startAzEfcrM(GapComposerKt.nodeKey, null, GroupKind.Companion.m5425getNode9udXigM(), null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.Composer
    public void startProvider(ProvidedValue<?> providedValue) {
        ValueHolder<?> valueHolder;
        PersistentCompositionLocalMap persistentCompositionLocalMapCurrentCompositionLocalScope = currentCompositionLocalScope();
        startGroup(ComposerKt.providerKey, ComposerKt.getProvider());
        Object objRememberedValue = rememberedValue();
        if (aa4.e(objRememberedValue, Composer.Companion.getEmpty())) {
            valueHolder = null;
        } else {
            objRememberedValue.getClass();
            valueHolder = (ValueHolder) objRememberedValue;
        }
        CompositionLocal<?> compositionLocal = providedValue.getCompositionLocal();
        compositionLocal.getClass();
        ValueHolder<?> valueHolderUpdatedStateOf$runtime = compositionLocal.updatedStateOf$runtime(providedValue, valueHolder);
        boolean zE = aa4.e(valueHolderUpdatedStateOf$runtime, valueHolder);
        if (!zE) {
            updateRememberedValue(valueHolderUpdatedStateOf$runtime);
        }
        boolean z = true;
        boolean z2 = false;
        if (getInserting()) {
            if (providedValue.getCanOverride() || !CompositionLocalMapKt.contains(persistentCompositionLocalMapCurrentCompositionLocalScope, compositionLocal)) {
                persistentCompositionLocalMapCurrentCompositionLocalScope = persistentCompositionLocalMapCurrentCompositionLocalScope.putValue(compositionLocal, valueHolderUpdatedStateOf$runtime);
            }
            this.writerHasAProvider = true;
        } else {
            SlotReader slotReader = this.reader;
            Object objGroupAux = slotReader.groupAux(slotReader.getCurrentGroup());
            objGroupAux.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) objGroupAux;
            if (!(getSkipping() && zE) && (providedValue.getCanOverride() || !CompositionLocalMapKt.contains(persistentCompositionLocalMapCurrentCompositionLocalScope, compositionLocal))) {
                persistentCompositionLocalMapCurrentCompositionLocalScope = persistentCompositionLocalMapCurrentCompositionLocalScope.putValue(compositionLocal, valueHolderUpdatedStateOf$runtime);
            } else if ((zE && !this.providersInvalid) || !this.providersInvalid) {
                persistentCompositionLocalMapCurrentCompositionLocalScope = persistentCompositionLocalMap;
            }
            if (!this.reusing && persistentCompositionLocalMap == persistentCompositionLocalMapCurrentCompositionLocalScope) {
                z = false;
            }
            z2 = z;
        }
        if (z2 && !getInserting()) {
            recordProviderUpdate(persistentCompositionLocalMapCurrentCompositionLocalScope);
        }
        this.providersInvalidStack.push(GapComposerKt.asInt(this.providersInvalid));
        this.providersInvalid = z2;
        this.providerCache = persistentCompositionLocalMapCurrentCompositionLocalScope;
        m5318startAzEfcrM(ComposerKt.compositionLocalMapKey, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m5424getGroup9udXigM(), persistentCompositionLocalMapCurrentCompositionLocalScope);
    }

    @Override // androidx.compose.runtime.Composer
    public void startProviders(ProvidedValue<?>[] providedValueArr) {
        PersistentCompositionLocalMap persistentCompositionLocalMapUpdateProviderMapGroup;
        PersistentCompositionLocalMap persistentCompositionLocalMapCurrentCompositionLocalScope = currentCompositionLocalScope();
        startGroup(ComposerKt.providerKey, ComposerKt.getProvider());
        boolean z = true;
        boolean z2 = false;
        if (getInserting()) {
            persistentCompositionLocalMapUpdateProviderMapGroup = updateProviderMapGroup(persistentCompositionLocalMapCurrentCompositionLocalScope, CompositionLocalMapKt.updateCompositionMap$default(providedValueArr, persistentCompositionLocalMapCurrentCompositionLocalScope, null, 4, null));
            this.writerHasAProvider = true;
        } else {
            Object objGroupGet = this.reader.groupGet(0);
            objGroupGet.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) objGroupGet;
            Object objGroupGet2 = this.reader.groupGet(1);
            objGroupGet2.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) objGroupGet2;
            PersistentCompositionLocalMap persistentCompositionLocalMapUpdateCompositionMap = CompositionLocalMapKt.updateCompositionMap(providedValueArr, persistentCompositionLocalMapCurrentCompositionLocalScope, persistentCompositionLocalMap2);
            if (getSkipping() && !this.reusing && persistentCompositionLocalMap2.equals(persistentCompositionLocalMapUpdateCompositionMap)) {
                skipGroup();
                persistentCompositionLocalMapUpdateProviderMapGroup = persistentCompositionLocalMap;
            } else {
                persistentCompositionLocalMapUpdateProviderMapGroup = updateProviderMapGroup(persistentCompositionLocalMapCurrentCompositionLocalScope, persistentCompositionLocalMapUpdateCompositionMap);
                if (!this.reusing && aa4.e(persistentCompositionLocalMapUpdateProviderMapGroup, persistentCompositionLocalMap)) {
                    z = false;
                }
                z2 = z;
            }
        }
        if (z2 && !getInserting()) {
            recordProviderUpdate(persistentCompositionLocalMapUpdateProviderMapGroup);
        }
        this.providersInvalidStack.push(GapComposerKt.asInt(this.providersInvalid));
        this.providersInvalid = z2;
        this.providerCache = persistentCompositionLocalMapUpdateProviderMapGroup;
        m5318startAzEfcrM(ComposerKt.compositionLocalMapKey, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m5424getGroup9udXigM(), persistentCompositionLocalMapUpdateProviderMapGroup);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startReplaceGroup(int i) {
        if (this.pending != null) {
            m5318startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
            return;
        }
        validateNodeNotExpected();
        this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) i), 3) ^ ((long) this.rGroupIndex);
        this.rGroupIndex++;
        SlotReader slotReader = this.reader;
        if (getInserting()) {
            slotReader.beginEmpty();
            this.writer.startGroup(i, Composer.Companion.getEmpty());
            enterGroup(false, null);
            return;
        }
        if (slotReader.getGroupKey() == i && !slotReader.getHasObjectKey()) {
            slotReader.startGroup();
            enterGroup(false, null);
            return;
        }
        if (!slotReader.isGroupEnd()) {
            int i2 = this.nodeIndex;
            int currentGroup = slotReader.getCurrentGroup();
            recordDelete();
            this.changeListWriter.removeNode(i2, slotReader.skipGroup());
            GapComposerKt.removeRange(this.invalidations, currentGroup, slotReader.getCurrentGroup());
        }
        slotReader.beginEmpty();
        this.inserting = true;
        this.providerCache = null;
        ensureWriter();
        SlotWriter slotWriter = this.writer;
        slotWriter.beginInsert();
        int currentGroup2 = slotWriter.getCurrentGroup();
        slotWriter.startGroup(i, Composer.Companion.getEmpty());
        this.insertAnchor = slotWriter.anchor(currentGroup2);
        enterGroup(false, null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void startReplaceableGroup(int i) {
        m5318startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public Composer startRestartGroup(int i) {
        startReplaceGroup(i);
        addRecomposeScope();
        return this;
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableGroup(int i, Object obj) {
        if (!getInserting() && this.reader.getGroupKey() == i && !aa4.e(this.reader.getGroupAux(), obj) && this.reusingGroup < 0) {
            this.reusingGroup = this.reader.getCurrentGroup();
            this.reusing = true;
        }
        m5318startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), obj);
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableNode() {
        m5318startAzEfcrM(GapComposerKt.nodeKey, null, GroupKind.Companion.m5426getReusableNode9udXigM(), null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void startReuseFromRoot$runtime() {
        this.reusingGroup = 0;
        this.reusing = true;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean tryImminentInvalidation$runtime(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor == null) {
            return false;
        }
        int indexFor = GapAnchorKt.asGapAnchor(anchor).toIndexFor(this.reader.getTable$runtime());
        if (!isComposing$runtime() || indexFor < this.reader.getCurrentGroup()) {
            return false;
        }
        GapComposerKt.insertIfMissing(this.invalidations, indexFor, recomposeScopeImpl, obj);
        return true;
    }

    public final void updateCachedValue(Object obj) {
        boolean z = obj instanceof RememberObserver;
        Object obj2 = obj;
        if (z) {
            GapRememberObserverHolder gapRememberObserverHolder = new GapRememberObserverHolder((RememberObserver) obj, rememberObserverGroupIndex());
            if (getInserting()) {
                this.changeListWriter.remember(gapRememberObserverHolder);
            }
            this.abandonSet.add(obj);
            obj2 = gapRememberObserverHolder;
        }
        updateValue(obj2);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ab A[LOOP:1: B:20:0x0053->B:37:0x00ab, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae A[EDGE_INSN: B:45:0x00ae->B:38:0x00ae BREAK  A[LOOP:1: B:20:0x0053->B:37:0x00ab], SYNTHETIC] */
    @Override // androidx.compose.runtime.InternalComposer
    /* JADX INFO: renamed from: updateComposerInvalidations-RY85e9Y$runtime, reason: not valid java name */
    public void mo5321updateComposerInvalidationsRY85e9Y$runtime(MutableScatterMap<Object, Object> mutableScatterMap) {
        GapAnchor gapAnchorAsGapAnchor;
        for (int iG = u96.g(this.invalidations); -1 < iG; iG--) {
            Invalidation invalidation = this.invalidations.get(iG);
            Anchor anchor = invalidation.getScope().getAnchor();
            GapAnchor gapAnchorAsGapAnchor2 = anchor != null ? GapAnchorKt.asGapAnchor(anchor) : null;
            if (gapAnchorAsGapAnchor2 == null || !gapAnchorAsGapAnchor2.getValid()) {
                this.invalidations.remove(iG);
            } else if (invalidation.getLocation() != gapAnchorAsGapAnchor2.getLocation$runtime()) {
                invalidation.setLocation(gapAnchorAsGapAnchor2.getLocation$runtime());
            }
        }
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
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
                            int i4 = (i << 3) + i3;
                            Object obj = objArr[i4];
                            Object obj2 = objArr2[i4];
                            obj.getClass();
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                            Anchor anchor2 = recomposeScopeImpl.getAnchor();
                            if (anchor2 != null && (gapAnchorAsGapAnchor = GapAnchorKt.asGapAnchor(anchor2)) != null) {
                                int location$runtime = gapAnchorAsGapAnchor.getLocation$runtime();
                                List<Invalidation> list = this.invalidations;
                                if (obj2 == ScopeInvalidated.INSTANCE) {
                                    obj2 = null;
                                }
                                list.add(new Invalidation(recomposeScopeImpl, location$runtime, obj2));
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
        nn1.J(GapComposerKt.InvalidationLocationAscending, this.invalidations);
    }

    @Override // androidx.compose.runtime.Composer
    public void updateRememberedValue(Object obj) {
        updateCachedValue(obj);
    }

    public final void updateValue(Object obj) {
        if (getInserting()) {
            this.writer.update(obj);
            return;
        }
        if (!this.reader.getHadNext()) {
            ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
            SlotReader slotReader = this.reader;
            composerChangeListWriter.appendValue(slotReader.anchor(slotReader.getParent()), obj);
            return;
        }
        int groupSlotIndex = this.reader.getGroupSlotIndex() - 1;
        boolean pastParent = this.changeListWriter.getPastParent();
        ComposerChangeListWriter composerChangeListWriter2 = this.changeListWriter;
        if (!pastParent) {
            composerChangeListWriter2.updateValue(obj, groupSlotIndex);
        } else {
            SlotReader slotReader2 = this.reader;
            composerChangeListWriter2.updateAnchoredValue(obj, slotReader2.anchor(slotReader2.getParent()), groupSlotIndex);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void useNode() {
        validateNodeExpected();
        if (getInserting()) {
            ComposerKt.composeImmediateRuntimeError("useNode() called while inserting");
        }
        Object node = getNode(this.reader);
        this.changeListWriter.moveDown(node);
        if (this.reusing && (node instanceof ComposeNodeLifecycleCallback)) {
            this.changeListWriter.useNode(node);
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void verifyConsistent$runtime() {
        this.insertTable.verifyWellFormed();
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionImpl getComposition() {
        return this.composition;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public ChangeList getDeferredChanges$runtime() {
        return this.deferredChanges;
    }

    private final void startGroup(int i, Object obj) {
        m5318startAzEfcrM(i, obj, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(char c) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Character) && c == ((Character) objNextSlot).charValue()) {
            return false;
        }
        updateValue(Character.valueOf(c));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(byte b) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Byte) && b == ((Number) objNextSlot).byteValue()) {
            return false;
        }
        updateValue(Byte.valueOf(b));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(short s) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Short) && s == ((Number) objNextSlot).shortValue()) {
            return false;
        }
        updateValue(Short.valueOf(s));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(boolean z) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Boolean) && z == ((Boolean) objNextSlot).booleanValue()) {
            return false;
        }
        updateValue(Boolean.valueOf(z));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(Object obj) {
        if (aa4.e(nextSlot(), obj)) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(long j) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Long) && j == ((Number) objNextSlot).longValue()) {
            return false;
        }
        updateValue(Long.valueOf(j));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(double d) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Double) && d == ((Number) objNextSlot).doubleValue()) {
            return false;
        }
        updateValue(Double.valueOf(d));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public boolean changed(int i) {
        Object objNextSlot = nextSlot();
        if ((objNextSlot instanceof Integer) && i == ((Number) objNextSlot).intValue()) {
            return false;
        }
        updateValue(Integer.valueOf(i));
        return true;
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope() {
        PersistentCompositionLocalMap persistentCompositionLocalMap = this.providerCache;
        return persistentCompositionLocalMap != null ? persistentCompositionLocalMap : currentCompositionLocalScope(this.reader.getParent());
    }
}
