package androidx.compose.runtime;

import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.LinkComposer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.GroupKind;
import androidx.compose.runtime.composer.ThrowingRememberManagerStub;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsSpec;
import androidx.compose.runtime.composer.linkbuffer.GroupHandleKt;
import androidx.compose.runtime.composer.linkbuffer.KeyInfo;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchor;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchorKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTable;
import androidx.compose.runtime.composer.linkbuffer.SlotTableBuilder;
import androidx.compose.runtime.composer.linkbuffer.SlotTableBuilderKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTableReader;
import androidx.compose.runtime.composer.linkbuffer.SlotTableReaderKt;
import androidx.compose.runtime.composer.linkbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.linkbuffer.changelist.ChangeListKt;
import androidx.compose.runtime.composer.linkbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.linkbuffer.changelist.ComposerChangeListWriterAddressMode;
import androidx.compose.runtime.composer.linkbuffer.changelist.FixupList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.snapshots.ListUtilsKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContext;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.CompositionObserver;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ObjectLocation;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ar4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.ds1;
import defpackage.ff;
import defpackage.gx2;
import defpackage.h2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.mq4;
import defpackage.nl3;
import defpackage.o22;
import defpackage.qn1;
import defpackage.u96;
import defpackage.v39;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@ComposeCompilerApi
public final class LinkComposer extends InternalComposer {
    public static final int $stable = 8;
    private CompositionData _compositionData;
    private final Set<RememberObserver> abandonSet;
    private final Applier<?> applier;
    private final o22 applyCoroutineContext;
    private SlotTableBuilder builder;
    private boolean builderHasAProvider;
    private final ComposerChangeListWriter changeListWriter;
    private Changes changes;
    private int childrenComposing;
    private long compositeKeyHashCode;
    private final CompositionImpl composition;
    private int compositionToken;
    private Changes deferredChanges;
    private final LinkComposer$derivedStateObserver$1 derivedStateObserver;
    private final CompositionErrorContextImpl errorContext;
    private boolean forceRecomposeScopes;
    private boolean forciblyRecompose;
    private int groupNodeCount;
    private FixupList insertFixups;
    private boolean inserting;
    private final ArrayList<RecomposeScopeImpl> invalidateStack;
    private boolean isComposing;
    private boolean isDisposed;
    private int lastPlacedChildGroup;
    private Changes lateChanges;
    private MutableIntIntMap nodeCountOverrides;
    private MutableIntIntMap nodeCountVirtualOverrides;
    private boolean nodeExpected;
    private int nodeIndex;
    private final CompositionObserverHolder observerHolder;
    private final CompositionContext parentContext;
    private LinkPending pending;
    private PersistentCompositionLocalMap providerCache;
    private MutableIntObjectMap<PersistentCompositionLocalMap> providerUpdates;
    private boolean providersInvalid;
    private int rGroupIndex;
    private SlotTableReader reader;
    private boolean reusing;
    private ShouldPauseCallback shouldPauseCallback;
    private final SlotTable slotTable;
    private boolean sourceMarkersEnabled;
    private final MutableScatterMap<Object, Object> invalidations = ScopeMap.m5395constructorimpl$default(null, 1, null);
    private final ArrayList<LinkPending> pendingStack = Stack.m5340constructorimpl$default(null, 1, null);
    private final IntStack parentStateStack = new IntStack();
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
        private final Set<LinkComposer> composers = new LinkedHashSet();
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
            LinkComposer.this.parentContext.composeInitial$runtime(controlledComposition, bm3Var);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, bm3<? super Composer, ? super Integer, j59> bm3Var) {
            return LinkComposer.this.parentContext.composeInitialPaused$runtime(controlledComposition, shouldPauseCallback, bm3Var);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
            LinkComposer.this.parentContext.deletedMovableContent$runtime(movableContentStateReference);
        }

        public final void dispose() {
            if (this.composers.isEmpty()) {
                return;
            }
            Set<Set<CompositionData>> set = this.inspectionTables;
            if (set != null) {
                for (LinkComposer linkComposer : this.composers) {
                    Iterator<Set<CompositionData>> it = set.iterator();
                    while (it.hasNext()) {
                        it.next().remove(linkComposer.getCompositionData());
                    }
                }
            }
            this.composers.clear();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void doneComposing$runtime() {
            LinkComposer.this.childrenComposing--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingCallByInformation$runtime() {
            return LinkComposer.this.parentContext.getCollectingCallByInformation$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingParameterInformation$runtime() {
            return this.collectingParameterInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingSourceInformation$runtime() {
            return this.collectingSourceInformation;
        }

        public final Set<LinkComposer> getComposers() {
            return this.composers;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public long getCompositeKeyHashCode$runtime() {
            return this.compositeKeyHashCode;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public Composition getComposition$runtime() {
            return LinkComposer.this.getComposition();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public PersistentCompositionLocalMap getCompositionLocalScope$runtime() {
            return getCompositionLocalScope();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public o22 getEffectCoroutineContext() {
            return LinkComposer.this.parentContext.getEffectCoroutineContext();
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
            return LinkComposer.this.parentContext.getStackTraceEnabled$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
            LinkComposer.this.parentContext.insertMovableContent$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidate$runtime(ControlledComposition controlledComposition) {
            LinkComposer.this.parentContext.invalidate$runtime(LinkComposer.this.getComposition());
            LinkComposer.this.parentContext.invalidate$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidateScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
            LinkComposer.this.parentContext.invalidateScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier<?> applier) {
            LinkComposer.this.parentContext.movableContentStateReleased$runtime(movableContentStateReference, movableContentState, applier);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference) {
            return LinkComposer.this.parentContext.movableContentStateResolve$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet<RecomposeScopeImpl> scatterSet) {
            return LinkComposer.this.parentContext.recomposePaused$runtime(controlledComposition, shouldPauseCallback, scatterSet);
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
            super.registerComposer$runtime(composer);
            this.composers.add(LinkComposerKt.asLinkComposer(composer));
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void registerComposition$runtime(ControlledComposition controlledComposition) {
            LinkComposer.this.parentContext.registerComposition$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
            LinkComposer.this.parentContext.reportPausedScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportRemovedComposition$runtime(ControlledComposition controlledComposition) {
            LinkComposer.this.parentContext.reportRemovedComposition$runtime(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
            return LinkComposer.this.parentContext.scheduleFrameEndCallback(ll3Var);
        }

        public final void setInspectionTables(Set<Set<CompositionData>> set) {
            this.inspectionTables = set;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void startComposing$runtime() {
            LinkComposer.this.childrenComposing++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposer$runtime(Composer composer) {
            Set<Set<CompositionData>> set = this.inspectionTables;
            if (set != null) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    ((Set) it.next()).remove(LinkComposerKt.asLinkComposer(composer).getCompositionData());
                }
            }
            v39.a(this.composers).remove(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposition$runtime(ControlledComposition controlledComposition) {
            LinkComposer.this.parentContext.unregisterComposition$runtime(controlledComposition);
        }

        public final void updateCompositionLocalScope(PersistentCompositionLocalMap persistentCompositionLocalMap) {
            setCompositionLocalScope(persistentCompositionLocalMap);
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.runtime.LinkComposer$derivedStateObserver$1] */
    public LinkComposer(Applier<?> applier, CompositionContext compositionContext, Set<RememberObserver> set, SlotTable slotTable, Changes changes, Changes changes2, CompositionObserverHolder compositionObserverHolder, CompositionImpl compositionImpl) {
        this.applier = applier;
        this.parentContext = compositionContext;
        this.abandonSet = set;
        this.slotTable = slotTable;
        this.changes = changes;
        this.lateChanges = changes2;
        this.observerHolder = compositionObserverHolder;
        this.composition = compositionImpl;
        SlotTableReader slotTableReaderOpenReader = slotTable.openReader();
        slotTableReaderOpenReader.close();
        this.reader = slotTableReaderOpenReader;
        SlotTableBuilder slotTableBuilder = new SlotTableBuilder(slotTable.getAddressSpace(), false, false);
        slotTableBuilder.close();
        this.builder = slotTableBuilder;
        this.changeListWriter = new ComposerChangeListWriter(this, ChangeListKt.asLinkBufferChangeList(this.changes));
        this.lastPlacedChildGroup = -1;
        this.insertFixups = new FixupList();
        this.sourceMarkersEnabled = compositionContext.getCollectingSourceInformation$runtime() || compositionContext.getCollectingCallByInformation$runtime();
        this.derivedStateObserver = new DerivedStateObserver() { // from class: androidx.compose.runtime.LinkComposer$derivedStateObserver$1
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
        this.errorContext = new CompositionErrorContextImpl(this);
        o22 effectCoroutineContext = compositionContext.getEffectCoroutineContext();
        o22 errorContext$runtime = getErrorContext$runtime();
        this.applyCoroutineContext = effectCoroutineContext.plus(errorContext$runtime == null ? gx2.b : errorContext$runtime);
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
        if (!this.reader.isClosed()) {
            this.reader.close();
        }
        resetInsertBuilder(false);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    private final void addRecomposeScope() {
        RecomposeScopeImpl recomposeScopeImpl;
        boolean z;
        if (getInserting()) {
            RecomposeScopeImpl recomposeScopeImpl2 = new RecomposeScopeImpl(getComposition());
            Stack.m5350pushimpl(this.invalidateStack, recomposeScopeImpl2);
            updateValue(recomposeScopeImpl2);
            enterRecomposeScope(recomposeScopeImpl2);
            return;
        }
        int parentGroup = this.reader.getParentGroup();
        RecomposeScopeImpl recomposeScopeOrNull = LinkComposerKt.getRecomposeScopeOrNull(this.reader, parentGroup);
        Object objM5407removeimpl = recomposeScopeOrNull != null ? ScopeMap.m5407removeimpl(this.invalidations, recomposeScopeOrNull) : null;
        boolean zRecomposeRequired = this.reader.recomposeRequired(parentGroup);
        if (zRecomposeRequired) {
            this.reader.removeFlag(67108864);
        }
        Object next = this.reader.next();
        if (aa4.e(next, Composer.Companion.getEmpty())) {
            recomposeScopeImpl = new RecomposeScopeImpl(getComposition());
            updateValue(recomposeScopeImpl);
        } else {
            next.getClass();
            recomposeScopeImpl = (RecomposeScopeImpl) next;
        }
        if (zRecomposeRequired || objM5407removeimpl != null) {
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
            this.reusingGroup = this.reader.getParentGroup();
            recomposeScopeImpl.setResetReusing(true);
        }
    }

    private final void cleanUpCompose() {
        this.pending = null;
        this.nodeIndex = 0;
        this.groupNodeCount = 0;
        this.compositeKeyHashCode = 0L;
        this.nodeExpected = false;
        Stack.m5338clearimpl(this.invalidateStack);
        clearUpdatedNodeCounts();
    }

    private final void clearUpdatedNodeCounts() {
        this.nodeCountOverrides = null;
        this.nodeCountVirtualOverrides = null;
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope(int i) {
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        if (getInserting() && this.builderHasAProvider) {
            int parentGroup = this.builder.getParentGroup();
            while (parentGroup >= 0) {
                if (this.builder.groupKey(parentGroup) == 202 && aa4.e(this.builder.groupObjectKey(parentGroup), ComposerKt.getCompositionLocalMap())) {
                    Object objGroupAux = this.builder.groupAux(parentGroup);
                    objGroupAux.getClass();
                    PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) objGroupAux;
                    this.providerCache = persistentCompositionLocalMap2;
                    return persistentCompositionLocalMap2;
                }
                parentGroup = this.builder.parent(parentGroup);
            }
        }
        if (!this.reader.isEmpty()) {
            while (i >= 0) {
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
                i = this.reader.parentOf(i);
            }
        }
        PersistentCompositionLocalMap persistentCompositionLocalMap3 = this.rootProvider;
        this.providerCache = persistentCompositionLocalMap3;
        return persistentCompositionLocalMap3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ComposeStackTrace currentStackTrace() {
        if (!getSourceMarkersEnabled$runtime()) {
            return null;
        }
        ar4 ar4VarE = u96.e();
        ar4VarE.addAll(SlotTableBuilderKt.buildTrace(this.builder));
        ar4VarE.addAll(SlotTableReaderKt.buildTrace(this.reader));
        ar4VarE.addAll(parentStackTrace$runtime());
        return new ComposeStackTrace(u96.d(ar4VarE), getSourceMarkersEnabled$runtime());
    }

    /* JADX INFO: renamed from: doCompose-aFTiNEg, reason: not valid java name */
    private final void m5324doComposeaFTiNEg(MutableScatterMap<Object, Object> mutableScatterMap, bm3<? super Composer, ? super Integer, j59> bm3Var) {
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
            this.isComposing = true;
            if (compositionObserverCurrent != null) {
                compositionObserverCurrent.onBeginComposition(getComposition());
            }
            int i = 2;
            try {
                startRoot();
                Object objNextSlot$runtime = nextSlot$runtime();
                if (objNextSlot$runtime != bm3Var && bm3Var != null) {
                    updateValue(bm3Var);
                }
                LinkComposer$derivedStateObserver$1 linkComposer$derivedStateObserver$1 = this.derivedStateObserver;
                MutableVector<DerivedStateObserver> mutableVectorDerivedStateObservers = SnapshotStateKt.derivedStateObservers();
                try {
                    mutableVectorDerivedStateObservers.add(linkComposer$derivedStateObserver$1);
                    if (bm3Var != null) {
                        startGroup(200, ComposerKt.getInvocation());
                        Expect_jvmKt.invokeComposable(this, bm3Var);
                        endGroup();
                    } else if ((!this.forciblyRecompose && !this.providersInvalid) || objNextSlot$runtime == null || objNextSlot$runtime.equals(Composer.Companion.getEmpty())) {
                        skipCurrentGroup();
                    } else {
                        startGroup(200, ComposerKt.getInvocation());
                        v39.c(2, objNextSlot$runtime);
                        Expect_jvmKt.invokeComposable(this, (bm3) objNextSlot$runtime);
                        endGroup();
                    }
                    mutableVectorDerivedStateObservers.removeAt(mutableVectorDerivedStateObservers.getSize() - 1);
                    endRoot();
                    if (compositionObserverCurrent != null) {
                        compositionObserverCurrent.onEndComposition(getComposition());
                    }
                    this.isComposing = false;
                    resetInsertBuilder(false);
                    j59 j59Var = j59.a;
                    trace.endSection(objBeginSection);
                } catch (Throwable th) {
                    mutableVectorDerivedStateObservers.removeAt(mutableVectorDerivedStateObservers.getSize() - 1);
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    throw ComposeStackTraceKt.attachComposeStackTrace(th2, new ff(this, i));
                } catch (Throwable th3) {
                    if (compositionObserverCurrent != null) {
                        compositionObserverCurrent.onEndComposition(getComposition());
                    }
                    this.isComposing = false;
                    abortRoot();
                    resetInsertBuilder(true);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Trace.INSTANCE.endSection(objBeginSection);
            throw th4;
        }
    }

    private final void end(boolean z) {
        long jRotateRight;
        long j;
        long jRotateRight2;
        long j2;
        int iPeek2 = this.parentStateStack.peek2() - 1;
        if (getInserting()) {
            int parentGroup = this.builder.getParentGroup();
            int iGroupKey = this.builder.groupKey(parentGroup);
            Object objGroupObjectKey = this.builder.groupObjectKey(parentGroup);
            Object objGroupAux = this.builder.groupAux(parentGroup);
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
            int parentGroup2 = this.reader.getParentGroup();
            int iGroupKey2 = this.reader.groupKey(parentGroup2);
            Object objGroupObjectKey2 = this.reader.groupObjectKey(parentGroup2);
            Object objGroupAux2 = this.reader.groupAux(parentGroup2);
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
        LinkPending linkPending = this.pending;
        if (linkPending != null && !linkPending.getKeyInfos().isEmpty()) {
            List<KeyInfo> keyInfos = linkPending.getKeyInfos();
            List<KeyInfo> used = linkPending.getUsed();
            Set setFastToSet = ListUtilsKt.fastToSet(used);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size = used.size();
            int size2 = keyInfos.size();
            int i2 = 0;
            int i3 = 0;
            int iUpdatedNodeCountOf = 0;
            while (i2 < size2) {
                KeyInfo keyInfo = keyInfos.get(i2);
                if (!setFastToSet.contains(keyInfo)) {
                    this.changeListWriter.removeNode(linkPending.nodePositionOf(keyInfo) + linkPending.getStartIndex(), keyInfo.getNodes());
                    linkPending.updateNodeCount(GroupHandleKt.getGroup(keyInfo.getHandle()), 0);
                    this.reader.reposition(keyInfo.getHandle());
                    recordDelete();
                    this.reader.skipGroup();
                } else if (!linkedHashSet.contains(keyInfo)) {
                    if (i3 < size) {
                        KeyInfo keyInfo2 = used.get(i3);
                        if (keyInfo2 != keyInfo) {
                            int iNodePositionOf = linkPending.nodePositionOf(keyInfo2);
                            linkedHashSet.add(keyInfo2);
                            if (iNodePositionOf != iUpdatedNodeCountOf) {
                                int iUpdatedNodeCountOf2 = linkPending.updatedNodeCountOf(keyInfo2);
                                this.changeListWriter.moveNode(iNodePositionOf + linkPending.getStartIndex(), iUpdatedNodeCountOf + linkPending.getStartIndex(), iUpdatedNodeCountOf2);
                                linkPending.registerMoveNode(iNodePositionOf, iUpdatedNodeCountOf, iUpdatedNodeCountOf2);
                            }
                        } else {
                            i2++;
                        }
                        i3++;
                        iUpdatedNodeCountOf += linkPending.updatedNodeCountOf(keyInfo2);
                        keyInfos = keyInfos;
                        used = used;
                    }
                }
                i2++;
            }
            this.changeListWriter.endNodeMovement();
            if (!keyInfos.isEmpty()) {
                this.reader.skipToGroupEnd();
            }
        }
        boolean inserting = getInserting();
        if (!inserting) {
            int i4 = this.nodeIndex;
            int previousSibling = this.reader.getPreviousSibling();
            SlotTable readerTable$runtime = getReaderTable$runtime();
            int currentGroup = this.reader.getCurrentGroup();
            int[] groups = readerTable$runtime.getAddressSpace().getGroups();
            while (true) {
                int i5 = currentGroup;
                int i6 = previousSibling;
                previousSibling = i5;
                if (previousSibling < 0) {
                    break;
                }
                reportFreeMovableContent(GroupHandleKt.makeGroupHandle(this.reader.getParentGroup(), i6, previousSibling));
                this.changeListWriter.removeNode(i4, this.reader.nodeCount(previousSibling));
                this.changeListWriter.endNodeMovement();
                currentGroup = groups[previousSibling + 1];
            }
            this.changeListWriter.removeTailGroupsAndValues(this.reader.getCurrentGroup(), this.reader.getRemainingSlots());
        }
        if (inserting) {
            if (z) {
                this.insertFixups.endNodeInsert();
                i = 1;
            }
            this.lastPlacedChildGroup = this.builder.getParentGroup();
            this.reader.endEmpty();
            this.builder.endGroup();
            if (!this.reader.getInEmpty()) {
                long jLastRoot = this.builder.lastRoot();
                recordInsert(jLastRoot);
                this.inserting = false;
                if (!getReaderTable$runtime().isEmpty()) {
                    long insertAddress = LinkComposerKt.toInsertAddress(jLastRoot);
                    updateChildNodeCount(insertAddress, 0);
                    updateNodeCountOverrides(insertAddress, i);
                }
            }
        } else {
            if (z) {
                this.changeListWriter.moveUp();
            }
            long parentHandle = this.reader.getParentHandle();
            if (i != updatedNodeCount(parentHandle)) {
                updateNodeCountOverrides(parentHandle, i);
            }
            int i7 = z ? 1 : i;
            this.lastPlacedChildGroup = GroupHandleKt.getGroup(parentHandle);
            this.reader.endGroup();
            this.changeListWriter.endNodeMovement();
            i = i7;
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
        finalizeCompose();
        this.reader.close();
        this.forciblyRecompose = false;
        this.providersInvalid = LinkComposerKt.asBool(this.providersInvalidStack.pop());
    }

    private final void ensureBuilder() {
        if (this.builder.isClosed()) {
            SlotTableBuilder slotTableBuilder = new SlotTableBuilder(this.slotTable.getAddressSpace(), this.slotTable.getRecordSourceInformation(), this.slotTable.getRecordCallByInformation());
            this.builder = slotTableBuilder;
            slotTableBuilder.buildStart();
            this.builderHasAProvider = false;
            this.providerCache = null;
        }
    }

    private final void enterGroup(boolean z, LinkPending linkPending) {
        Stack.m5350pushimpl(this.pendingStack, this.pending);
        this.pending = linkPending;
        this.parentStateStack.push(this.groupNodeCount);
        this.parentStateStack.push(this.rGroupIndex);
        this.parentStateStack.push(this.nodeIndex);
        if (z) {
            this.nodeIndex = 0;
        }
        this.groupNodeCount = 0;
        this.rGroupIndex = 0;
        this.lastPlacedChildGroup = -1;
    }

    private final void enterRecomposeScope(RecomposeScopeImpl recomposeScopeImpl) {
        recomposeScopeImpl.start(this.compositionToken);
        CompositionObserver compositionObserverCurrent = this.observerHolder.current();
        if (compositionObserverCurrent != null) {
            compositionObserverCurrent.onScopeEnter(recomposeScopeImpl);
        }
    }

    private final void executeChangesImmediatelyWithoutApplier() {
        SlotTableEditor slotTableEditorOpenEditor = this.slotTable.openEditor();
        try {
            ChangeListKt.asLinkBufferChangeList(this.changes).executeAndFlushAllPendingChanges(ThrowingApplierStub.INSTANCE, slotTableEditorOpenEditor, ThrowingRememberManagerStub.INSTANCE, getErrorContext$runtime());
            j59 j59Var = j59.a;
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    private final void exitGroup(int i, boolean z) {
        LinkPending linkPending = (LinkPending) Stack.m5349popimpl(this.pendingStack);
        if (linkPending != null && !z) {
            linkPending.setGroupIndex(linkPending.getGroupIndex() + 1);
        }
        this.pending = linkPending;
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

    public static /* synthetic */ void getApplyCoroutineContext$annotations() {
    }

    public static /* synthetic */ void getCompositeKeyHashCode$annotations() {
    }

    /* JADX WARN: Code duplicated, block: B:100:0x026a  */
    /* JADX WARN: Code duplicated, block: B:49:0x0140  */
    /* JADX WARN: Code duplicated, block: B:99:0x0267  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r1v6 */
    private final void insertMovableContentGuarded(List<b36<MovableContentStateReference, MovableContentStateReference>> list) throws Throwable {
        ComposerChangeListWriter composerChangeListWriter;
        ChangeList changeList;
        ComposerChangeListWriter composerChangeListWriter2;
        ChangeList changeList2;
        SlotTable slotTableAsLinkBufferSlotTable;
        SlotTableReader slotTableReader;
        ComposerChangeListWriter composerChangeListWriter3;
        ComposerChangeListWriter composerChangeListWriter4;
        int i;
        ComposerChangeListWriterAddressMode composerChangeListWriterAddressMode;
        long j;
        SlotStorage slotStorage$runtime;
        SlotTable slotTableAsLinkBufferSlotTable2;
        SlotStorage slotStorage$runtime2;
        SlotTableReader slotTableReader2;
        LinkComposer linkComposer = this;
        List<b36<MovableContentStateReference, MovableContentStateReference>> list2 = list;
        ComposerChangeListWriter composerChangeListWriter5 = linkComposer.changeListWriter;
        ChangeList changeListAsLinkBufferChangeList = ChangeListKt.asLinkBufferChangeList(linkComposer.lateChanges);
        ChangeList changeList3 = composerChangeListWriter5.getChangeList();
        try {
            composerChangeListWriter5.setChangeList(changeListAsLinkBufferChangeList);
            linkComposer.changeListWriter.resetSlots();
            int size = list2.size();
            boolean z = 0;
            int i2 = 0;
            final LinkComposer linkComposer2 = linkComposer;
            while (i2 < size) {
                try {
                    b36<MovableContentStateReference, MovableContentStateReference> b36Var = list2.get(i2);
                    final MovableContentStateReference movableContentStateReference = b36Var.b;
                    MovableContentStateReference movableContentStateReference2 = b36Var.c;
                    final long address = ((long) LinkAnchorKt.asLinkAnchor(movableContentStateReference.getAnchor$runtime()).getAddress()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                    IntRef intRef = new IntRef(z, 1, null);
                    linkComposer2.changeListWriter.determineMovableContentNodeIndex(intRef, address);
                    if (movableContentStateReference2 == null) {
                        SlotTable slotTableAsLinkBufferSlotTable3 = SlotTableKt.asLinkBufferSlotTable(movableContentStateReference.getSlotStorage$runtime());
                        if (aa4.e(slotTableAsLinkBufferSlotTable3, linkComposer2.builder.getTable())) {
                            linkComposer2.resetInsertBuilder(z);
                        }
                        final SlotTableReader slotTableReaderOpenReader = slotTableAsLinkBufferSlotTable3.openReader();
                        try {
                            slotTableReaderOpenReader.reposition(address);
                            try {
                                final ChangeList changeList4 = new ChangeList();
                                ll3 ll3Var = new ll3() { // from class: kq4
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return LinkComposer.insertMovableContentGuarded$lambda$0$0$0$0(this.b, changeList4, slotTableReaderOpenReader, address, movableContentStateReference);
                                    }
                                };
                                slotTableReader2 = slotTableReaderOpenReader;
                                linkComposer2 = this;
                                try {
                                    recomposeMovableContent$default(linkComposer2, null, null, 0, null, ll3Var, 15, null);
                                    linkComposer2.changeListWriter.includeOperationsIn(changeList4, intRef);
                                    j59 j59Var = j59.a;
                                    slotTableReader2.close();
                                    composerChangeListWriter2 = composerChangeListWriter5;
                                    changeList2 = changeList3;
                                    i = size;
                                    i2 = i2;
                                } catch (Throwable th) {
                                    th = th;
                                    slotTableReader2.close();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                slotTableReader2 = slotTableReaderOpenReader;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            slotTableReader2 = slotTableReaderOpenReader;
                        }
                    } else {
                        MovableContentState movableContentStateMovableContentStateResolve$runtime = linkComposer2.parentContext.movableContentStateResolve$runtime(movableContentStateReference2);
                        if (movableContentStateMovableContentStateResolve$runtime == null || (slotStorage$runtime2 = movableContentStateMovableContentStateResolve$runtime.getSlotStorage$runtime()) == null || (slotTableAsLinkBufferSlotTable = SlotTableKt.asLinkBufferSlotTable(slotStorage$runtime2)) == null) {
                            slotTableAsLinkBufferSlotTable = SlotTableKt.asLinkBufferSlotTable(movableContentStateReference2.getSlotStorage$runtime());
                        }
                        int address2 = (movableContentStateMovableContentStateResolve$runtime == null || (slotStorage$runtime = movableContentStateMovableContentStateResolve$runtime.getSlotStorage$runtime()) == null || (slotTableAsLinkBufferSlotTable2 = SlotTableKt.asLinkBufferSlotTable(slotStorage$runtime)) == null) ? LinkAnchorKt.asLinkAnchor(movableContentStateReference2.getAnchor$runtime()).getAddress() : slotTableAsLinkBufferSlotTable2.getRoot();
                        List<? extends Object> listCollectNodesFrom = LinkComposerKt.collectNodesFrom(slotTableAsLinkBufferSlotTable, address2);
                        if (!listCollectNodesFrom.isEmpty()) {
                            linkComposer2.changeListWriter.copyNodesToNewAnchorLocation(listCollectNodesFrom, intRef);
                            if (aa4.e(movableContentStateReference.getSlotStorage$runtime(), linkComposer2.slotTable)) {
                                linkComposer2.updateChildNodeCount(((long) LinkAnchorKt.asLinkAnchor(movableContentStateReference.getAnchor$runtime()).getAddress()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE, linkComposer2.updatedNodeCount(((long) LinkAnchorKt.asLinkAnchor(movableContentStateReference.getAnchor$runtime()).getAddress()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + listCollectNodesFrom.size());
                            }
                        }
                        linkComposer2.changeListWriter.copySlotTableToAnchorLocation(movableContentStateMovableContentStateResolve$runtime, linkComposer2.parentContext, movableContentStateReference2, movableContentStateReference);
                        SlotTableReader slotTableReaderOpenReader2 = slotTableAsLinkBufferSlotTable.openReader();
                        try {
                            SlotTableReader slotTableReader3 = linkComposer2.reader;
                            MutableIntIntMap mutableIntIntMap = linkComposer2.nodeCountOverrides;
                            MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = linkComposer2.providerUpdates;
                            linkComposer2.nodeCountOverrides = null;
                            linkComposer2.providerUpdates = null;
                            try {
                                linkComposer2.reader = slotTableReaderOpenReader2;
                                slotTableReaderOpenReader2.reposition(address2);
                                ChangeList changeList5 = new ChangeList();
                                ComposerChangeListWriter composerChangeListWriter6 = linkComposer2.changeListWriter;
                                ChangeList changeList6 = composerChangeListWriter6.getChangeList();
                                try {
                                    composerChangeListWriter6.setChangeList(changeList5);
                                    ComposerChangeListWriter composerChangeListWriter7 = linkComposer2.changeListWriter;
                                    slotTableReader = slotTableReaderOpenReader2;
                                    try {
                                        boolean implicitRootStart = composerChangeListWriter7.getImplicitRootStart();
                                        try {
                                            composerChangeListWriter7.setImplicitRootStart(false);
                                            int i3 = size;
                                            ComposerChangeListWriter composerChangeListWriter8 = linkComposer2.changeListWriter;
                                            i = i3;
                                            composerChangeListWriter3 = composerChangeListWriter6;
                                            try {
                                                composerChangeListWriter8.editorCurrentPosition = linkComposer2.reader.handle();
                                                ComposerChangeListWriterAddressMode composerChangeListWriterAddressMode2 = ComposerChangeListWriterAddressMode.RelativeAddressing;
                                                ComposerChangeListWriterAddressMode addressMode$runtime = composerChangeListWriter8.getAddressMode$runtime();
                                                long j2 = composerChangeListWriter8.editorCurrentPosition;
                                                composerChangeListWriter8.setAddressMode$runtime(composerChangeListWriterAddressMode2);
                                                try {
                                                    movableContentStateReference2.transferPendingInvalidations$runtime();
                                                    try {
                                                        try {
                                                            composerChangeListWriter4 = composerChangeListWriter7;
                                                            changeList2 = changeList3;
                                                            composerChangeListWriter3 = composerChangeListWriter3;
                                                            composerChangeListWriterAddressMode = addressMode$runtime;
                                                            composerChangeListWriter2 = composerChangeListWriter5;
                                                            changeList6 = changeList6;
                                                            try {
                                                                linkComposer2.recomposeMovableContent(movableContentStateReference2.getComposition$runtime(), movableContentStateReference.getComposition$runtime(), linkComposer2.reader.getCurrentGroup(), movableContentStateReference2.getInvalidations$runtime(), new ll3() { // from class: lq4
                                                                    @Override // defpackage.ll3
                                                                    public final Object invoke() {
                                                                        return LinkComposer.insertMovableContentGuarded$lambda$0$0$1$0$0$0$0$0(this.b, movableContentStateReference);
                                                                    }
                                                                });
                                                                try {
                                                                    composerChangeListWriter8.setAddressMode$runtime(composerChangeListWriterAddressMode);
                                                                    composerChangeListWriter8.editorCurrentPosition = composerChangeListWriterAddressMode == composerChangeListWriterAddressMode2 ? j2 : -1L;
                                                                    try {
                                                                        composerChangeListWriter4.setImplicitRootStart(implicitRootStart);
                                                                        try {
                                                                            composerChangeListWriter3.setChangeList(changeList6);
                                                                            linkComposer2.changeListWriter.includeOperationsIn(changeList5, intRef);
                                                                            j59 j59Var2 = j59.a;
                                                                            try {
                                                                                linkComposer2.reader = slotTableReader3;
                                                                                linkComposer2.nodeCountOverrides = mutableIntIntMap;
                                                                                linkComposer2.providerUpdates = mutableIntObjectMap;
                                                                                try {
                                                                                    slotTableReader.close();
                                                                                    linkComposer2.changeListWriter.disposeResolvedMovableState(movableContentStateMovableContentStateResolve$runtime);
                                                                                } catch (Throwable th4) {
                                                                                    th = th4;
                                                                                    changeList = changeList2;
                                                                                    composerChangeListWriter = composerChangeListWriter2;
                                                                                    composerChangeListWriter.setChangeList(changeList);
                                                                                    throw th;
                                                                                }
                                                                            } catch (Throwable th5) {
                                                                                th = th5;
                                                                                slotTableReader.close();
                                                                                throw th;
                                                                            }
                                                                        } catch (Throwable th6) {
                                                                            th = th6;
                                                                            mutableIntObjectMap = mutableIntObjectMap;
                                                                            mutableIntIntMap = mutableIntIntMap;
                                                                            linkComposer2.reader = slotTableReader3;
                                                                            linkComposer2.nodeCountOverrides = mutableIntIntMap;
                                                                            linkComposer2.providerUpdates = mutableIntObjectMap;
                                                                            throw th;
                                                                        }
                                                                    } catch (Throwable th7) {
                                                                        th = th7;
                                                                        mutableIntObjectMap = mutableIntObjectMap;
                                                                        mutableIntIntMap = mutableIntIntMap;
                                                                        try {
                                                                            composerChangeListWriter3.setChangeList(changeList6);
                                                                            throw th;
                                                                        } catch (Throwable th8) {
                                                                            th = th8;
                                                                            linkComposer2.reader = slotTableReader3;
                                                                            linkComposer2.nodeCountOverrides = mutableIntIntMap;
                                                                            linkComposer2.providerUpdates = mutableIntObjectMap;
                                                                            throw th;
                                                                        }
                                                                    }
                                                                } catch (Throwable th9) {
                                                                    th = th9;
                                                                    mutableIntObjectMap = mutableIntObjectMap;
                                                                    mutableIntIntMap = mutableIntIntMap;
                                                                    try {
                                                                        composerChangeListWriter4.setImplicitRootStart(implicitRootStart);
                                                                        throw th;
                                                                    } catch (Throwable th10) {
                                                                        th = th10;
                                                                        composerChangeListWriter3.setChangeList(changeList6);
                                                                        throw th;
                                                                    }
                                                                }
                                                            } catch (Throwable th11) {
                                                                th = th11;
                                                                mutableIntObjectMap = mutableIntObjectMap;
                                                                mutableIntIntMap = mutableIntIntMap;
                                                                try {
                                                                    composerChangeListWriter8.setAddressMode$runtime(composerChangeListWriterAddressMode);
                                                                    if (composerChangeListWriterAddressMode == ComposerChangeListWriterAddressMode.RelativeAddressing) {
                                                                        j = j2;
                                                                    } else {
                                                                        j = -1;
                                                                    }
                                                                    composerChangeListWriter8.editorCurrentPosition = j;
                                                                    throw th;
                                                                } catch (Throwable th12) {
                                                                    th = th12;
                                                                    composerChangeListWriter4.setImplicitRootStart(implicitRootStart);
                                                                    throw th;
                                                                }
                                                            }
                                                        } catch (Throwable th13) {
                                                            th = th13;
                                                            mutableIntIntMap = mutableIntIntMap;
                                                            composerChangeListWriterAddressMode = addressMode$runtime;
                                                            composerChangeListWriter4 = composerChangeListWriter7;
                                                            composerChangeListWriter8.setAddressMode$runtime(composerChangeListWriterAddressMode);
                                                            if (composerChangeListWriterAddressMode == ComposerChangeListWriterAddressMode.RelativeAddressing) {
                                                                j = j2;
                                                            } else {
                                                                j = -1;
                                                            }
                                                            composerChangeListWriter8.editorCurrentPosition = j;
                                                            throw th;
                                                        }
                                                    } catch (Throwable th14) {
                                                        th = th14;
                                                        mutableIntIntMap = mutableIntIntMap;
                                                        composerChangeListWriterAddressMode = addressMode$runtime;
                                                    }
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                    composerChangeListWriterAddressMode = addressMode$runtime;
                                                    mutableIntIntMap = mutableIntIntMap;
                                                }
                                            } catch (Throwable th16) {
                                                th = th16;
                                                composerChangeListWriter3 = composerChangeListWriter3;
                                                composerChangeListWriter4 = composerChangeListWriter7;
                                                composerChangeListWriter4.setImplicitRootStart(implicitRootStart);
                                                throw th;
                                            }
                                        } catch (Throwable th17) {
                                            th = th17;
                                            composerChangeListWriter3 = composerChangeListWriter6;
                                        }
                                    } catch (Throwable th18) {
                                        th = th18;
                                        mutableIntIntMap = mutableIntIntMap;
                                        composerChangeListWriter3 = composerChangeListWriter6;
                                        mutableIntObjectMap = mutableIntObjectMap;
                                        composerChangeListWriter3.setChangeList(changeList6);
                                        throw th;
                                    }
                                } catch (Throwable th19) {
                                    th = th19;
                                    slotTableReader = slotTableReaderOpenReader2;
                                }
                            } catch (Throwable th20) {
                                th = th20;
                                slotTableReader = slotTableReaderOpenReader2;
                                mutableIntIntMap = mutableIntIntMap;
                                mutableIntObjectMap = mutableIntObjectMap;
                            }
                        } catch (Throwable th21) {
                            th = th21;
                            slotTableReader = slotTableReaderOpenReader2;
                        }
                    }
                    i2++;
                    list2 = list;
                    changeList3 = changeList2;
                    size = i;
                    composerChangeListWriter5 = composerChangeListWriter2;
                    z = 0;
                    linkComposer2 = linkComposer2;
                } catch (Throwable th22) {
                    th = th22;
                    composerChangeListWriter2 = composerChangeListWriter5;
                    changeList2 = changeList3;
                }
            }
            ComposerChangeListWriter composerChangeListWriter9 = composerChangeListWriter5;
            ChangeList changeList7 = changeList3;
            linkComposer2.resetInsertBuilder(z);
            linkComposer2.changeListWriter.endMovableContentPlacement();
            composerChangeListWriter9.setChangeList(changeList7);
        } catch (Throwable th23) {
            th = th23;
            composerChangeListWriter = composerChangeListWriter5;
            changeList = changeList3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertMovableContentGuarded$lambda$0$0$0$0(LinkComposer linkComposer, ChangeList changeList, SlotTableReader slotTableReader, long j, MovableContentStateReference movableContentStateReference) {
        long j2;
        ComposerChangeListWriter composerChangeListWriter = linkComposer.changeListWriter;
        ChangeList changeList2 = composerChangeListWriter.getChangeList();
        try {
            composerChangeListWriter.setChangeList(changeList);
            SlotTableReader slotTableReader2 = linkComposer.reader;
            MutableIntIntMap mutableIntIntMap = linkComposer.nodeCountOverrides;
            MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = linkComposer.providerUpdates;
            linkComposer.nodeCountOverrides = null;
            linkComposer.providerUpdates = null;
            try {
                linkComposer.reader = slotTableReader;
                ComposerChangeListWriter composerChangeListWriter2 = linkComposer.changeListWriter;
                boolean implicitRootStart = composerChangeListWriter2.getImplicitRootStart();
                try {
                    composerChangeListWriter2.setImplicitRootStart(false);
                    ComposerChangeListWriter composerChangeListWriter3 = linkComposer.changeListWriter;
                    composerChangeListWriter3.editorCurrentPosition = j;
                    ComposerChangeListWriterAddressMode composerChangeListWriterAddressMode = ComposerChangeListWriterAddressMode.RelativeAddressing;
                    ComposerChangeListWriterAddressMode addressMode$runtime = composerChangeListWriter3.getAddressMode$runtime();
                    long j3 = composerChangeListWriter3.editorCurrentPosition;
                    composerChangeListWriter3.setAddressMode$runtime(composerChangeListWriterAddressMode);
                    try {
                        j2 = j3;
                        try {
                            linkComposer.invokeMovableContentLambda(movableContentStateReference.getContent$runtime(), movableContentStateReference.getLocals$runtime(), movableContentStateReference.getParameter$runtime(), true);
                            composerChangeListWriter3.setAddressMode$runtime(addressMode$runtime);
                            composerChangeListWriter3.editorCurrentPosition = addressMode$runtime == composerChangeListWriterAddressMode ? j2 : -1L;
                            composerChangeListWriter2.setImplicitRootStart(implicitRootStart);
                            j59 j59Var = j59.a;
                            linkComposer.reader = slotTableReader2;
                            linkComposer.nodeCountOverrides = mutableIntIntMap;
                            linkComposer.providerUpdates = mutableIntObjectMap;
                            composerChangeListWriter.setChangeList(changeList2);
                            return j59.a;
                        } catch (Throwable th) {
                            th = th;
                            composerChangeListWriter3.setAddressMode$runtime(addressMode$runtime);
                            composerChangeListWriter3.editorCurrentPosition = addressMode$runtime == ComposerChangeListWriterAddressMode.RelativeAddressing ? j2 : -1L;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        j2 = j3;
                    }
                } catch (Throwable th3) {
                    composerChangeListWriter2.setImplicitRootStart(implicitRootStart);
                    throw th3;
                }
            } catch (Throwable th4) {
                linkComposer.reader = slotTableReader2;
                linkComposer.nodeCountOverrides = mutableIntIntMap;
                linkComposer.providerUpdates = mutableIntObjectMap;
                throw th4;
            }
        } catch (Throwable th5) {
            composerChangeListWriter.setChangeList(changeList2);
            throw th5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insertMovableContentGuarded$lambda$0$0$1$0$0$0$0$0(LinkComposer linkComposer, MovableContentStateReference movableContentStateReference) {
        linkComposer.invokeMovableContentLambda(movableContentStateReference.getContent$runtime(), movableContentStateReference.getLocals$runtime(), movableContentStateReference.getParameter$runtime(), true);
        return j59.a;
    }

    private final void invokeMovableContentLambda(final MovableContent<Object> movableContent, PersistentCompositionLocalMap persistentCompositionLocalMap, final Object obj, boolean z) {
        startMovableGroup(MovableContentKt.movableContentKey, movableContent);
        updateSlot(obj);
        long compositeKeyHashCode = getCompositeKeyHashCode();
        try {
            this.compositeKeyHashCode = 126665345L;
            if (getInserting()) {
                this.builder.addFlags(268435456);
            }
            boolean z2 = false;
            if (!getInserting() && !aa4.e(this.reader.getGroupAux(), persistentCompositionLocalMap)) {
                z2 = true;
            }
            if (z2) {
                recordProviderUpdate(persistentCompositionLocalMap);
            }
            m5325startAzEfcrM(ComposerKt.compositionLocalMapKey, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m5424getGroup9udXigM(), persistentCompositionLocalMap);
            this.providerCache = null;
            if (!getInserting() || z) {
                boolean z3 = this.providersInvalid;
                this.providersInvalid = z2;
                this.changeListWriter.seekTo(this.reader.handle(), true);
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                composerChangeListWriter.editorCurrentPosition = -1L;
                ComposerChangeListWriterAddressMode composerChangeListWriterAddressMode = ComposerChangeListWriterAddressMode.AnchorAddressing;
                ComposerChangeListWriterAddressMode addressMode$runtime = composerChangeListWriter.getAddressMode$runtime();
                long j = composerChangeListWriter.editorCurrentPosition;
                composerChangeListWriter.setAddressMode$runtime(composerChangeListWriterAddressMode);
                try {
                    Expect_jvmKt.invokeComposable(this, ComposableLambdaKt.composableLambdaInstance(-1241221479, true, new bm3() { // from class: nq4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return LinkComposer.invokeMovableContentLambda$lambda$0$0(movableContent, obj, (Composer) obj2, iIntValue);
                        }
                    }));
                    composerChangeListWriter.setAddressMode$runtime(addressMode$runtime);
                    composerChangeListWriter.editorCurrentPosition = addressMode$runtime == ComposerChangeListWriterAddressMode.RelativeAddressing ? j : -1L;
                    this.providersInvalid = z3;
                } catch (Throwable th) {
                    composerChangeListWriter.setAddressMode$runtime(addressMode$runtime);
                    composerChangeListWriter.editorCurrentPosition = addressMode$runtime == ComposerChangeListWriterAddressMode.RelativeAddressing ? j : -1L;
                    throw th;
                }
            } else {
                this.builderHasAProvider = true;
                SlotTableBuilder slotTableBuilder = this.builder;
                this.parentContext.insertMovableContent$runtime(new MovableContentStateReference(movableContent, obj, getComposition(), this.builder.getTable(), this.builder.getTable().getAddressSpace().anchorOfAddress(slotTableBuilder.parent(slotTableBuilder.getParentGroup())), kx2.b, currentCompositionLocalScope(), null));
            }
            endGroup();
            this.providerCache = null;
            this.compositeKeyHashCode = compositeKeyHashCode;
            endMovableGroup();
        } catch (Throwable th2) {
            try {
                throw ComposeStackTraceKt.attachComposeStackTrace(th2, new ds1(this, 4));
            } catch (Throwable th3) {
                endGroup();
                this.providerCache = null;
                this.compositeKeyHashCode = compositeKeyHashCode;
                endMovableGroup();
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeMovableContentLambda$lambda$0$0(MovableContent movableContent, Object obj, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1241221479, i, -1, "androidx.compose.runtime.LinkComposer.invokeMovableContentLambda.<anonymous>.<anonymous> (LinkComposer.kt:2031)");
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

    private final boolean isGroupAfterCurrentReaderPosition(long j) {
        long jHandle = this.reader.handle();
        return jHandle == -1 || LinkComposerKt.firstGroupInTopologicalOrder(getReaderTable$runtime(), j, jHandle) == jHandle;
    }

    private final int rGroupIndexOf(int i) {
        int iParentOf = this.reader.parentOf(i);
        int[] groups = getReaderTable$runtime().getAddressSpace().getGroups();
        int i2 = 0;
        for (int root = iParentOf < 0 ? getReaderTable$runtime().getRoot() : this.reader.firstChildOf(iParentOf); root >= 0 && root != i; root = groups[root + 1]) {
            if (!this.reader.hasObjectKey(root)) {
                i2++;
            }
        }
        return i2;
    }

    private final <R> R recomposeMovableContent(ControlledComposition controlledComposition, ControlledComposition controlledComposition2, int i, List<? extends b36<RecomposeScopeImpl, ? extends Object>> list, ll3<? extends R> ll3Var) {
        R rInvoke;
        boolean zIsComposing$runtime = isComposing$runtime();
        int i2 = this.nodeIndex;
        try {
            this.isComposing = true;
            this.nodeIndex = 0;
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                b36<RecomposeScopeImpl, ? extends Object> b36Var = list.get(i3);
                RecomposeScopeImpl recomposeScopeImpl = b36Var.b;
                Object obj = b36Var.c;
                if (obj != null) {
                    tryImminentInvalidation$runtime(recomposeScopeImpl, obj);
                } else {
                    tryImminentInvalidation$runtime(recomposeScopeImpl, null);
                }
            }
            if (controlledComposition == null || (rInvoke = (R) controlledComposition.delegateInvalidations(controlledComposition2, i, ll3Var)) == null) {
                rInvoke = ll3Var.invoke();
            }
            return rInvoke;
        } finally {
            this.isComposing = zIsComposing$runtime;
            this.nodeIndex = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object recomposeMovableContent$default(LinkComposer linkComposer, ControlledComposition controlledComposition, ControlledComposition controlledComposition2, int i, List list, ll3 ll3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            controlledComposition = null;
        }
        if ((i2 & 2) != 0) {
            controlledComposition2 = null;
        }
        if ((i2 & 4) != 0) {
            i = -1;
        }
        if ((i2 & 8) != 0) {
            list = kx2.b;
        }
        return linkComposer.recomposeMovableContent(controlledComposition, controlledComposition2, i, list, ll3Var);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0265 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0172  */
    /* JADX WARN: Code duplicated, block: B:62:0x017a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:65:0x0184  */
    /* JADX WARN: Code duplicated, block: B:66:0x0187  */
    /* JADX WARN: Code duplicated, block: B:69:0x0197  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ad A[ADDED_TO_REGION] */
    private final void recomposeToGroupEnd() {
        long j;
        int i;
        int i2;
        int iFirstChildOf;
        int i3;
        int i4;
        int i5;
        int iParentOf;
        int iUpdatedNodeCount;
        long jRotateLeft;
        int i6;
        boolean zIsComposing$runtime = isComposing$runtime();
        int i7 = 1;
        this.isComposing = true;
        SlotTableReader slotTableReader = this.reader;
        int parentGroup = slotTableReader.getParentGroup();
        int i8 = this.nodeIndex;
        long compositeKeyHashCode = getCompositeKeyHashCode();
        int i9 = this.groupNodeCount;
        int i10 = this.rGroupIndex;
        int iFirstChildOf2 = slotTableReader.firstChildOf(parentGroup);
        int i11 = 0;
        loop0: while (true) {
            if (iFirstChildOf2 == -1) {
                j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                break;
            }
            if (slotTableReader.recomposeRequired(iFirstChildOf2)) {
                slotTableReader.reposition(iFirstChildOf2);
                i = i7;
                RecomposeScopeImpl recomposeScopeImplRequireRecomposeScope = requireRecomposeScope(iFirstChildOf2);
                j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                if (recomposeScopeImplRequireRecomposeScope.isInvalidFor(ScopeMap.m5402getimpl(this.invalidations, recomposeScopeImplRequireRecomposeScope))) {
                    this.providerCache = null;
                    rGroupIndexOf(iFirstChildOf2);
                    recomposeScopeImplRequireRecomposeScope.compose(this);
                    this.providerCache = null;
                    i2 = i;
                    i11 = i2;
                } else {
                    Stack.m5350pushimpl(this.invalidateStack, recomposeScopeImplRequireRecomposeScope);
                    CompositionObserver compositionObserverCurrent = this.observerHolder.current();
                    if (compositionObserverCurrent != null) {
                        try {
                            compositionObserverCurrent.onScopeEnter(recomposeScopeImplRequireRecomposeScope);
                            recomposeScopeImplRequireRecomposeScope.rereadTrackedInstances();
                            compositionObserverCurrent.onScopeExit(recomposeScopeImplRequireRecomposeScope);
                        } catch (Throwable th) {
                            compositionObserverCurrent.onScopeExit(recomposeScopeImplRequireRecomposeScope);
                            throw th;
                        }
                    } else {
                        recomposeScopeImplRequireRecomposeScope.rereadTrackedInstances();
                    }
                    Stack.m5349popimpl(this.invalidateStack);
                }
                iFirstChildOf = slotTableReader.firstChildOf(iFirstChildOf2);
                if (i2 == 0 || iFirstChildOf == -1) {
                    i3 = i2;
                    i4 = i11;
                    i5 = -1;
                } else {
                    boolean zHasRecomposeRequired = slotTableReader.hasRecomposeRequired(iFirstChildOf2);
                    if (zHasRecomposeRequired) {
                        if (slotTableReader.groupObjectKey(iFirstChildOf2) instanceof MovableContent) {
                            this.compositeKeyHashCode = 126665345L;
                            i3 = i2;
                            i4 = i11;
                        } else {
                            i4 = i11;
                            int iGroupKey = slotTableReader.groupKey(iFirstChildOf2);
                            int i12 = this.rGroupIndex;
                            Object objGroupObjectKey = slotTableReader.groupObjectKey(iFirstChildOf2);
                            i3 = i2;
                            Object objGroupAux = slotTableReader.groupAux(iFirstChildOf2);
                            if (objGroupObjectKey != null) {
                                jRotateLeft = Long.rotateLeft(((long) (objGroupObjectKey instanceof Enum ? ((Enum) objGroupObjectKey).ordinal() : objGroupObjectKey.hashCode())) ^ Long.rotateLeft(getCompositeKeyHashCode(), 3), 3);
                            } else if (objGroupAux == null || iGroupKey != 207 || objGroupAux.equals(Composer.Companion.getEmpty())) {
                                jRotateLeft = ((long) i12) ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) iGroupKey), 3);
                            } else {
                                i4 = i4;
                                this.compositeKeyHashCode = ((long) i12) ^ Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) objGroupAux.hashCode()), 3);
                            }
                            this.compositeKeyHashCode = jRotateLeft;
                        }
                        this.parentStateStack.push(this.nodeIndex);
                        this.parentStateStack.push(this.rGroupIndex);
                        if (slotTableReader.isNode(iFirstChildOf2)) {
                            this.changeListWriter.moveDown(slotTableReader.node(iFirstChildOf2));
                            i6 = 0;
                            this.nodeIndex = 0;
                        } else {
                            i6 = 0;
                        }
                        this.rGroupIndex = i6;
                    } else {
                        i3 = i2;
                        i4 = i11;
                        this.nodeIndex += slotTableReader.isNode(iFirstChildOf2) ? i : updatedNodeCount(((long) iFirstChildOf2) & j);
                        if (!slotTableReader.hasObjectKey(iFirstChildOf2)) {
                            this.rGroupIndex++;
                        }
                    }
                    if (zHasRecomposeRequired) {
                        iFirstChildOf2 = iFirstChildOf;
                    } else {
                        i5 = -1;
                    }
                    i7 = i;
                    i11 = i4;
                }
                if (iFirstChildOf == i5 && i3 == 0) {
                    int i13 = this.nodeIndex;
                    if (slotTableReader.isNode(iFirstChildOf2)) {
                        iUpdatedNodeCount = i;
                    } else {
                        iUpdatedNodeCount = updatedNodeCount(((long) iFirstChildOf2) & j);
                    }
                    this.nodeIndex = i13 + iUpdatedNodeCount;
                    if (!slotTableReader.hasObjectKey(iFirstChildOf2)) {
                        this.rGroupIndex++;
                    }
                }
                iParentOf = iFirstChildOf2;
                iFirstChildOf2 = slotTableReader.nextSiblingOf(iFirstChildOf2);
                while (iFirstChildOf2 == -1) {
                    iParentOf = slotTableReader.parentOf(iParentOf);
                    if (iParentOf != -1 || iParentOf == parentGroup) {
                        i11 = i4;
                        break loop0;
                    }
                    if (slotTableReader.isNode(iParentOf)) {
                        this.changeListWriter.moveUp();
                    }
                    this.rGroupIndex = this.parentStateStack.pop();
                    this.nodeIndex = this.parentStateStack.pop() + updatedNodeCount(((long) iParentOf) & j);
                    int iGroupKey2 = slotTableReader.groupKey(iParentOf);
                    int i14 = this.rGroupIndex;
                    Object objGroupObjectKey2 = slotTableReader.groupObjectKey(iParentOf);
                    Object objGroupAux2 = slotTableReader.groupAux(iParentOf);
                    if (objGroupObjectKey2 != null) {
                        this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode(), 3) ^ ((long) (objGroupObjectKey2 instanceof Enum ? ((Enum) objGroupObjectKey2).ordinal() : objGroupObjectKey2.hashCode())), 3);
                    } else if (objGroupAux2 == null || iGroupKey2 != 207 || objGroupAux2.equals(Composer.Companion.getEmpty())) {
                        this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i14), 3) ^ ((long) iGroupKey2), 3);
                    } else {
                        this.compositeKeyHashCode = Long.rotateRight(Long.rotateRight(getCompositeKeyHashCode() ^ ((long) i14), 3) ^ ((long) objGroupAux2.hashCode()), 3);
                    }
                    if (!slotTableReader.hasObjectKey(iParentOf)) {
                        this.rGroupIndex++;
                    }
                    iFirstChildOf2 = slotTableReader.nextSiblingOf(iParentOf);
                }
                i7 = i;
                i11 = i4;
            } else {
                i = i7;
                j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            }
            i2 = 0;
            iFirstChildOf = slotTableReader.firstChildOf(iFirstChildOf2);
            if (i2 == 0) {
                i3 = i2;
                i4 = i11;
                i5 = -1;
                if (iFirstChildOf == i5) {
                    int i15 = this.nodeIndex;
                    if (slotTableReader.isNode(iFirstChildOf2)) {
                        iUpdatedNodeCount = i;
                    } else {
                        iUpdatedNodeCount = updatedNodeCount(((long) iFirstChildOf2) & j);
                    }
                    this.nodeIndex = i15 + iUpdatedNodeCount;
                    if (!slotTableReader.hasObjectKey(iFirstChildOf2)) {
                        this.rGroupIndex++;
                    }
                }
                iParentOf = iFirstChildOf2;
                iFirstChildOf2 = slotTableReader.nextSiblingOf(iFirstChildOf2);
                while (true) {
                    iParentOf = slotTableReader.parentOf(iParentOf);
                    if (iParentOf != -1) {
                    }
                    i11 = i4;
                    iFirstChildOf2 = slotTableReader.nextSiblingOf(iParentOf);
                }
            } else {
                i3 = i2;
                i4 = i11;
                i5 = -1;
                if (iFirstChildOf == i5) {
                    int i16 = this.nodeIndex;
                    if (slotTableReader.isNode(iFirstChildOf2)) {
                        iUpdatedNodeCount = i;
                    } else {
                        iUpdatedNodeCount = updatedNodeCount(((long) iFirstChildOf2) & j);
                    }
                    this.nodeIndex = i16 + iUpdatedNodeCount;
                    if (!slotTableReader.hasObjectKey(iFirstChildOf2)) {
                        this.rGroupIndex++;
                    }
                }
                iParentOf = iFirstChildOf2;
                iFirstChildOf2 = slotTableReader.nextSiblingOf(iFirstChildOf2);
                while (true) {
                    iParentOf = slotTableReader.parentOf(iParentOf);
                    if (iParentOf != -1) {
                    }
                    i11 = i4;
                    iFirstChildOf2 = slotTableReader.nextSiblingOf(iParentOf);
                }
            }
            i7 = i;
            i11 = i4;
        }
        slotTableReader.restoreParent(parentGroup);
        if (i11 != 0) {
            slotTableReader.skipToGroupEnd();
            int iUpdatedNodeCount2 = updatedNodeCount(((long) parentGroup) & j);
            this.nodeIndex = i8 + iUpdatedNodeCount2;
            this.groupNodeCount = i9 + iUpdatedNodeCount2;
            this.rGroupIndex = i10;
        } else {
            skipReaderToGroupEnd();
        }
        this.compositeKeyHashCode = compositeKeyHashCode;
        this.isComposing = zIsComposing$runtime;
    }

    private final void recordDelete() {
        reportFreeMovableContent(this.reader.handle());
        this.changeListWriter.removeGroup();
    }

    private final void recordInsert(long j) {
        boolean zIsEmpty = this.insertFixups.isEmpty();
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (zIsEmpty) {
            composerChangeListWriter.insertSlots(this.builder.getTable(), j);
        } else {
            composerChangeListWriter.insertSlots(this.builder.getTable(), j, this.insertFixups);
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

    private final void reportAllMovableContent() {
        if (this.slotTable.containsFlags(536870912)) {
            getComposition().updateMovingInvalidations$runtime();
            ChangeList changeList = new ChangeList();
            setDeferredChanges$runtime(changeList);
            SlotTableReader slotTableReaderOpenReader = this.slotTable.openReader();
            try {
                this.reader = slotTableReaderOpenReader;
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.getChangeList();
                try {
                    composerChangeListWriter.setChangeList(changeList);
                    reportFreeMovableContent(slotTableReaderOpenReader.rootHandle());
                    composerChangeListWriter.setChangeList(changeList2);
                    j59 j59Var = j59.a;
                    slotTableReaderOpenReader.close();
                } catch (Throwable th) {
                    composerChangeListWriter.setChangeList(changeList2);
                    throw th;
                }
            } catch (Throwable th2) {
                slotTableReaderOpenReader.close();
                throw th2;
            }
        }
    }

    private final void reportFreeMovableContent(long j) {
        int group = GroupHandleKt.getGroup(j);
        boolean z = (this.reader.flagsOf(group) & 8388608) == 8388608;
        if (z) {
            this.changeListWriter.endNodeMovement();
            this.changeListWriter.moveDown(this.reader.node(group));
        }
        reportFreeMovableContent$reportGroup(this, j, z, 0);
        this.changeListWriter.endNodeMovement();
        if (z) {
            this.changeListWriter.moveUp();
        }
    }

    private static final MovableContentStateReference reportFreeMovableContent$createMovableContentReferenceForGroup(LinkComposer linkComposer, int i, List<MovableContentStateReference> list) {
        Object objGroupObjectKey = linkComposer.reader.groupObjectKey(i);
        objGroupObjectKey.getClass();
        MovableContent movableContent = (MovableContent) objGroupObjectKey;
        Object obj = linkComposer.reader.get(i, 0);
        List<b36<RecomposeScopeImpl, Object>> listM5326findInvalidationsVpaz1Sg = LinkComposerKt.m5326findInvalidationsVpaz1Sg(linkComposer.reader, i, linkComposer.invalidations);
        return new MovableContentStateReference(movableContent, obj, linkComposer.getComposition(), linkComposer.getReaderTable$runtime(), linkComposer.getReaderTable$runtime().getAddressSpace().anchorOfAddress(i), listM5326findInvalidationsVpaz1Sg, linkComposer.currentCompositionLocalScope(i), list);
    }

    private static final MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor(LinkComposer linkComposer, int i) {
        boolean z;
        int iFlagsOf = linkComposer.reader.flagsOf(i);
        ar4 ar4VarD = null;
        if ((iFlagsOf & 268435456) != 268435456) {
            return null;
        }
        if ((iFlagsOf & 536870912) == 536870912) {
            ar4 ar4VarE = u96.e();
            SlotTableReader slotTableReader = linkComposer.reader;
            int iFirstChildOf = slotTableReader.firstChildOf(i);
            loop0: while (iFirstChildOf != -1) {
                if ((linkComposer.reader.flagsOf(iFirstChildOf) & 268435456) == 268435456) {
                    MovableContentStateReference movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(linkComposer, iFirstChildOf);
                    if (movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor != null) {
                        ar4VarE.add(movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor);
                    }
                    z = true;
                } else {
                    z = false;
                }
                int iFirstChildOf2 = slotTableReader.firstChildOf(iFirstChildOf);
                if (z || iFirstChildOf2 == -1 || (linkComposer.reader.flagsOf(iFirstChildOf) & 536870912) != 536870912) {
                    int iParentOf = iFirstChildOf;
                    iFirstChildOf = slotTableReader.nextSiblingOf(iFirstChildOf);
                    while (iFirstChildOf == -1) {
                        iParentOf = slotTableReader.parentOf(iParentOf);
                        if (iParentOf == -1 || iParentOf == i) {
                            break loop0;
                        }
                        iFirstChildOf = slotTableReader.nextSiblingOf(iParentOf);
                    }
                } else {
                    iFirstChildOf = iFirstChildOf2;
                }
            }
            ar4VarD = u96.d(ar4VarE);
        }
        return reportFreeMovableContent$createMovableContentReferenceForGroup(linkComposer, i, ar4VarD);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0047  */
    /* JADX WARN: Code duplicated, block: B:15:0x004a A[PHI: r0
      0x004a: PHI (r0v5 int) = (r0v2 int), (r0v4 int), (r0v9 int) binds: [B:64:0x012d, B:34:0x00a3, B:13:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    private static final int reportFreeMovableContent$reportGroup(LinkComposer linkComposer, long j, boolean z, int i) {
        int iFlagsOf;
        int group = GroupHandleKt.getGroup(j);
        int i2 = 0;
        if (group < 0) {
            return 0;
        }
        int iFlagsOf2 = linkComposer.reader.flagsOf(group);
        if ((iFlagsOf2 & 268435456) == 268435456) {
            MovableContentStateReference movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(linkComposer, group);
            if (movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor != null) {
                linkComposer.parentContext.deletedMovableContent$runtime(movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor);
                linkComposer.changeListWriter.releaseMovableGroup(linkComposer.getComposition(), linkComposer.parentContext, movableContentStateReferenceReportFreeMovableContent$movableContentReferenceFor);
            }
            if (z) {
                linkComposer.changeListWriter.endNodeMovementAndDeleteNode(i, group);
            } else {
                iFlagsOf = linkComposer.reader.flagsOf(group);
                if ((iFlagsOf & 8388608) == 8388608) {
                    i2 = 1;
                } else {
                    i2 = iFlagsOf & GroupFlagsSpec.CHILD_NODE_COUNT_MASK;
                }
            }
        } else if ((iFlagsOf2 & 1073741824) == 1073741824) {
            Object obj = linkComposer.reader.get(group, 0);
            RememberObserverHolder rememberObserverHolder = obj instanceof RememberObserverHolder ? (RememberObserverHolder) obj : null;
            RememberObserver wrapped = rememberObserverHolder != null ? rememberObserverHolder.getWrapped() : null;
            CompositionContextHolder compositionContextHolder = wrapped instanceof CompositionContextHolder ? (CompositionContextHolder) wrapped : null;
            if (compositionContextHolder != null) {
                for (LinkComposer linkComposer2 : compositionContextHolder.getRef().getComposers()) {
                    linkComposer2.reportAllMovableContent();
                    linkComposer.parentContext.reportRemovedComposition$runtime(linkComposer2.getComposition());
                }
            }
            iFlagsOf = linkComposer.reader.flagsOf(group);
            if ((iFlagsOf & 8388608) == 8388608) {
                i2 = 1;
            } else {
                i2 = iFlagsOf & GroupFlagsSpec.CHILD_NODE_COUNT_MASK;
            }
        } else if ((iFlagsOf2 & 536870912) == 536870912 || (iFlagsOf2 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            SlotTableReader slotTableReader = linkComposer.reader;
            int iReportFreeMovableContent$reportGroup = 0;
            for (long jFirstChildOf = (((long) slotTableReader.firstChildOf(group)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (-4294967296L); GroupHandleKt.getGroup(jFirstChildOf) != -1; jFirstChildOf = (((long) slotTableReader.nextSiblingOf(GroupHandleKt.getGroup(jFirstChildOf))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) GroupHandleKt.getGroup(jFirstChildOf)) << 32)) {
                int group2 = GroupHandleKt.getGroup(jFirstChildOf);
                boolean z2 = (linkComposer.reader.flagsOf(group2) & 8388608) == 8388608;
                if (z2) {
                    linkComposer.changeListWriter.endNodeMovement();
                    linkComposer.changeListWriter.moveDown(linkComposer.reader.node(group2));
                }
                iReportFreeMovableContent$reportGroup += reportFreeMovableContent$reportGroup(linkComposer, jFirstChildOf, z2 || z, z2 ? 0 : i + iReportFreeMovableContent$reportGroup);
                if (z2) {
                    linkComposer.changeListWriter.endNodeMovement();
                    linkComposer.changeListWriter.moveUp();
                }
            }
            i2 = iReportFreeMovableContent$reportGroup;
        } else {
            iFlagsOf = linkComposer.reader.flagsOf(group);
            if ((iFlagsOf & 8388608) == 8388608) {
                i2 = 1;
            } else {
                i2 = iFlagsOf & GroupFlagsSpec.CHILD_NODE_COUNT_MASK;
            }
        }
        if ((iFlagsOf2 & 8388608) == 8388608) {
            return 1;
        }
        return i2;
    }

    private final RecomposeScopeImpl requireRecomposeScope(int i) {
        Object obj = this.reader.get(i, 0);
        if (aa4.e(obj, Composer.Companion.getEmpty())) {
            ComposerKt.composeImmediateRuntimeError("Cannot obtain RecomposeScope. Group does not have a corresponding slot.");
        }
        if (!(obj instanceof RecomposeScopeImpl)) {
            ComposerKt.composeImmediateRuntimeError("Expected a RecomposeScope in the first non-utility slot, found " + obj + '.');
        }
        return (RecomposeScopeImpl) obj;
    }

    private final boolean requiresRecomposition(int i) {
        return this.reader.hasRecomposeRequired(i);
    }

    private final void resetInsertBuilder(boolean z) {
        if (!this.builder.isClosed()) {
            SlotTable slotTableBuild = this.builder.build();
            if (z) {
                slotTableBuild.dispose();
            }
        }
        SlotTableBuilder slotTableBuilder = new SlotTableBuilder(this.slotTable.getAddressSpace(), false, false);
        slotTableBuilder.close();
        this.builder = slotTableBuilder;
    }

    private final void skipGroup() {
        this.groupNodeCount = this.reader.skipGroup() + this.groupNodeCount;
    }

    private final void skipReaderToGroupEnd() {
        this.groupNodeCount = this.reader.getParentNodeCount();
        this.reader.skipToGroupEnd();
    }

    private final List<ComposeStackTraceFrame> stackTraceForGroup(int i, Integer num) {
        if (!getSourceMarkersEnabled$runtime()) {
            return kx2.b;
        }
        SlotTableReader slotTableReaderOpenReader = this.slotTable.openReader();
        try {
            return SlotTableReaderKt.traceForGroup(slotTableReaderOpenReader, i, num);
        } finally {
            slotTableReaderOpenReader.close();
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

    /* JADX WARN: Code duplicated, block: B:102:0x0203  */
    /* JADX WARN: Code duplicated, block: B:103:0x0205  */
    /* JADX WARN: Code duplicated, block: B:107:0x0237  */
    /* JADX WARN: Code duplicated, block: B:108:0x0239  */
    /* JADX WARN: Code duplicated, block: B:19:0x0076  */
    /* JADX WARN: Code duplicated, block: B:22:0x0083  */
    /* JADX WARN: Code duplicated, block: B:23:0x0085  */
    /* JADX WARN: Code duplicated, block: B:26:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x009f  */
    /* JADX WARN: Code duplicated, block: B:30:0x00af  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:48:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:55:0x011c  */
    /* JADX WARN: Code duplicated, block: B:61:0x012a  */
    /* JADX WARN: Code duplicated, block: B:64:0x012f  */
    /* JADX WARN: Code duplicated, block: B:70:0x0149  */
    /* JADX WARN: Code duplicated, block: B:73:0x015c  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:82:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:84:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x01d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:91:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:99:0x01fa  */
    /* JADX INFO: renamed from: start-AzEfcrM, reason: not valid java name */
    private final void m5325startAzEfcrM(int i, Object obj, int i2, Object obj2) {
        long jRotateLeft;
        GroupKind.Companion companion;
        boolean z;
        LinkPending linkPending;
        boolean z2;
        LinkPending linkPending2;
        SlotTableBuilder slotTableBuilder;
        Object empty;
        int i3;
        Object empty2;
        int i4;
        int i5;
        Composer.Companion companion2;
        Object empty3;
        int i6;
        SlotTableBuilder slotTableBuilder2;
        Object empty4;
        int i7;
        Object empty5;
        int i8;
        LinkPending linkPending3;
        Composer.Companion companion3;
        Object empty6;
        int i9;
        validateNodeNotExpected();
        int i10 = this.rGroupIndex;
        if (obj == null) {
            if (obj2 == null || i != 207 || obj2.equals(Composer.Companion.getEmpty())) {
                jRotateLeft = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) i), 3) ^ ((long) i10);
            } else {
                this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) obj2.hashCode()), 3) ^ ((long) i10);
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
            linkPending = null;
            if (getInserting()) {
                this.reader.beginEmpty();
                slotTableBuilder2 = this.builder;
                if (z) {
                    companion3 = Composer.Companion;
                    empty6 = companion3.getEmpty();
                    Object empty7 = companion3.getEmpty();
                    if (empty6 == companion3.getEmpty()) {
                        i9 = 8388608;
                    } else {
                        i9 = 25165824;
                    }
                    slotTableBuilder2.startNewGroup(i, i9, empty6, null, empty7);
                } else if (obj2 != null) {
                    if (obj == null) {
                        empty5 = Composer.Companion.getEmpty();
                    } else {
                        empty5 = obj;
                    }
                    if (empty5 == Composer.Companion.getEmpty()) {
                        i8 = 33554432;
                    } else {
                        i8 = 50331648;
                    }
                    slotTableBuilder2.startNewGroup(i, i8, empty5, obj2, null);
                } else {
                    if (obj == null) {
                        empty4 = Composer.Companion.getEmpty();
                    } else {
                        empty4 = obj;
                    }
                    if (empty4 == Composer.Companion.getEmpty()) {
                        i7 = 0;
                    } else {
                        i7 = 16777216;
                    }
                    slotTableBuilder2.startNewGroup(i, i7, empty4, null, null);
                }
                linkPending3 = this.pending;
                if (linkPending3 != null) {
                    KeyInfo keyInfo = new KeyInfo(i, -1, LinkComposerKt.toInsertAddress(slotTableBuilder2.getParentHandle()), -1, 0);
                    linkPending3.registerInsert(keyInfo, this.nodeIndex - linkPending3.getStartIndex());
                    linkPending3.recordUsed(keyInfo);
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
                    this.pending = new LinkPending(this.reader.extractKeys(), this.nodeIndex);
                }
            }
            linkPending2 = this.pending;
            if (linkPending2 != null) {
                KeyInfo next = linkPending2.getNext(i, obj);
                if (!z2 || next == null) {
                    this.reader.beginEmpty();
                    this.inserting = true;
                    this.providerCache = null;
                    ensureBuilder();
                    slotTableBuilder = this.builder;
                    if (z) {
                        companion2 = Composer.Companion;
                        empty3 = companion2.getEmpty();
                        Object empty8 = companion2.getEmpty();
                        if (empty3 == companion2.getEmpty()) {
                            i6 = 8388608;
                        } else {
                            i6 = 25165824;
                        }
                        slotTableBuilder.startNewGroup(i, i6, empty3, null, empty8);
                    } else if (obj2 != null) {
                        if (obj == null) {
                            empty2 = Composer.Companion.getEmpty();
                        } else {
                            empty2 = obj;
                        }
                        if (empty2 == Composer.Companion.getEmpty()) {
                            i4 = 33554432;
                        } else {
                            i4 = 50331648;
                        }
                        slotTableBuilder.startNewGroup(i, i4, empty2, obj2, null);
                    } else {
                        if (obj == null) {
                            empty = Composer.Companion.getEmpty();
                        } else {
                            empty = obj;
                        }
                        if (empty == Composer.Companion.getEmpty()) {
                            i3 = 0;
                        } else {
                            i3 = 16777216;
                        }
                        slotTableBuilder.startNewGroup(i, i3, empty, null, null);
                    }
                    KeyInfo keyInfo2 = new KeyInfo(i, -1, LinkComposerKt.toInsertAddress(slotTableBuilder.getParentHandle()), -1, 0);
                    linkPending2.registerInsert(keyInfo2, this.nodeIndex - linkPending2.getStartIndex());
                    linkPending2.recordUsed(keyInfo2);
                    ArrayList arrayList = new ArrayList();
                    if (z) {
                        i5 = 0;
                    } else {
                        i5 = this.nodeIndex;
                    }
                    linkPending = new LinkPending(arrayList, i5);
                } else {
                    linkPending2.recordUsed(next);
                    long handle = next.getHandle();
                    this.nodeIndex = linkPending2.nodePositionOf(next) + linkPending2.getStartIndex();
                    int iSlotPositionOf = linkPending2.slotPositionOf(next);
                    int groupIndex = iSlotPositionOf - linkPending2.getGroupIndex();
                    linkPending2.registerMoveSlot(iSlotPositionOf, linkPending2.getGroupIndex());
                    if (groupIndex > 0) {
                        this.reader.reposition(linkPending2.groupHandleOfNextUnmovedGroup());
                        this.changeListWriter.moveGroup(groupIndex);
                    }
                    linkPending2.markGroupLocationReconciled(next.getIndex());
                    this.reader.reposition(handle);
                    startReaderGroup(z, obj2);
                }
            }
            enterGroup(z, linkPending);
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
        linkPending = null;
        if (getInserting()) {
            this.reader.beginEmpty();
            slotTableBuilder2 = this.builder;
            if (z) {
                companion3 = Composer.Companion;
                empty6 = companion3.getEmpty();
                Object empty9 = companion3.getEmpty();
                if (empty6 == companion3.getEmpty()) {
                    i9 = 8388608;
                } else {
                    i9 = 25165824;
                }
                slotTableBuilder2.startNewGroup(i, i9, empty6, null, empty9);
            } else if (obj2 != null) {
                if (obj == null) {
                    empty5 = Composer.Companion.getEmpty();
                } else {
                    empty5 = obj;
                }
                if (empty5 == Composer.Companion.getEmpty()) {
                    i8 = 33554432;
                } else {
                    i8 = 50331648;
                }
                slotTableBuilder2.startNewGroup(i, i8, empty5, obj2, null);
            } else {
                if (obj == null) {
                    empty4 = Composer.Companion.getEmpty();
                } else {
                    empty4 = obj;
                }
                if (empty4 == Composer.Companion.getEmpty()) {
                    i7 = 0;
                } else {
                    i7 = 16777216;
                }
                slotTableBuilder2.startNewGroup(i, i7, empty4, null, null);
            }
            linkPending3 = this.pending;
            if (linkPending3 != null) {
                KeyInfo keyInfo3 = new KeyInfo(i, -1, LinkComposerKt.toInsertAddress(slotTableBuilder2.getParentHandle()), -1, 0);
                linkPending3.registerInsert(keyInfo3, this.nodeIndex - linkPending3.getStartIndex());
                linkPending3.recordUsed(keyInfo3);
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
                this.pending = new LinkPending(this.reader.extractKeys(), this.nodeIndex);
            } else {
                this.pending = new LinkPending(this.reader.extractKeys(), this.nodeIndex);
            }
        }
        linkPending2 = this.pending;
        if (linkPending2 != null) {
            KeyInfo next2 = linkPending2.getNext(i, obj);
            if (z2) {
                this.reader.beginEmpty();
                this.inserting = true;
                this.providerCache = null;
                ensureBuilder();
                slotTableBuilder = this.builder;
                if (z) {
                    companion2 = Composer.Companion;
                    empty3 = companion2.getEmpty();
                    Object empty10 = companion2.getEmpty();
                    if (empty3 == companion2.getEmpty()) {
                        i6 = 8388608;
                    } else {
                        i6 = 25165824;
                    }
                    slotTableBuilder.startNewGroup(i, i6, empty3, null, empty10);
                } else if (obj2 != null) {
                    if (obj == null) {
                        empty2 = Composer.Companion.getEmpty();
                    } else {
                        empty2 = obj;
                    }
                    if (empty2 == Composer.Companion.getEmpty()) {
                        i4 = 33554432;
                    } else {
                        i4 = 50331648;
                    }
                    slotTableBuilder.startNewGroup(i, i4, empty2, obj2, null);
                } else {
                    if (obj == null) {
                        empty = Composer.Companion.getEmpty();
                    } else {
                        empty = obj;
                    }
                    if (empty == Composer.Companion.getEmpty()) {
                        i3 = 0;
                    } else {
                        i3 = 16777216;
                    }
                    slotTableBuilder.startNewGroup(i, i3, empty, null, null);
                }
                KeyInfo keyInfo4 = new KeyInfo(i, -1, LinkComposerKt.toInsertAddress(slotTableBuilder.getParentHandle()), -1, 0);
                linkPending2.registerInsert(keyInfo4, this.nodeIndex - linkPending2.getStartIndex());
                linkPending2.recordUsed(keyInfo4);
                ArrayList arrayList2 = new ArrayList();
                if (z) {
                    i5 = 0;
                } else {
                    i5 = this.nodeIndex;
                }
                linkPending = new LinkPending(arrayList2, i5);
            } else {
                this.reader.beginEmpty();
                this.inserting = true;
                this.providerCache = null;
                ensureBuilder();
                slotTableBuilder = this.builder;
                if (z) {
                    companion2 = Composer.Companion;
                    empty3 = companion2.getEmpty();
                    Object empty11 = companion2.getEmpty();
                    if (empty3 == companion2.getEmpty()) {
                        i6 = 8388608;
                    } else {
                        i6 = 25165824;
                    }
                    slotTableBuilder.startNewGroup(i, i6, empty3, null, empty11);
                } else if (obj2 != null) {
                    if (obj == null) {
                        empty2 = Composer.Companion.getEmpty();
                    } else {
                        empty2 = obj;
                    }
                    if (empty2 == Composer.Companion.getEmpty()) {
                        i4 = 33554432;
                    } else {
                        i4 = 50331648;
                    }
                    slotTableBuilder.startNewGroup(i, i4, empty2, obj2, null);
                } else {
                    if (obj == null) {
                        empty = Composer.Companion.getEmpty();
                    } else {
                        empty = obj;
                    }
                    if (empty == Composer.Companion.getEmpty()) {
                        i3 = 0;
                    } else {
                        i3 = 16777216;
                    }
                    slotTableBuilder.startNewGroup(i, i3, empty, null, null);
                }
                KeyInfo keyInfo5 = new KeyInfo(i, -1, LinkComposerKt.toInsertAddress(slotTableBuilder.getParentHandle()), -1, 0);
                linkPending2.registerInsert(keyInfo5, this.nodeIndex - linkPending2.getStartIndex());
                linkPending2.recordUsed(keyInfo5);
                ArrayList arrayList3 = new ArrayList();
                if (z) {
                    i5 = 0;
                } else {
                    i5 = this.nodeIndex;
                }
                linkPending = new LinkPending(arrayList3, i5);
            }
        }
        enterGroup(z, linkPending);
    }

    private final void startGroup(int i) {
        m5325startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
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
        GroupKind.Companion companion = GroupKind.Companion;
        m5325startAzEfcrM(100, null, companion.m5424getGroup9udXigM(), null);
        this.parentContext.startComposing$runtime();
        PersistentCompositionLocalMap compositionLocalScope$runtime = this.parentContext.getCompositionLocalScope$runtime();
        this.providersInvalidStack.push(LinkComposerKt.asInt(this.providersInvalid));
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
        m5325startAzEfcrM(Long.hashCode(this.parentContext.getCompositeKeyHashCode$runtime()), null, companion.m5424getGroup9udXigM(), null);
    }

    private final Object unwrapRememberObserverHolder(Object obj) {
        return obj instanceof RememberObserverHolder ? ((RememberObserverHolder) obj).getWrapped() : obj;
    }

    private final void updateChildNodeCount(long j, int i) {
        if (updatedNodeCount(j) != i) {
            jh2 jh2Var = null;
            int i2 = 1;
            int i3 = 0;
            if (LinkComposerKt.isInsertHandle(j)) {
                MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap(i3, i2, jh2Var);
                    this.nodeCountVirtualOverrides = mutableIntIntMap;
                }
                mutableIntIntMap.set(GroupHandleKt.getGroup(j), i);
                return;
            }
            MutableIntIntMap mutableIntIntMap2 = this.nodeCountOverrides;
            if (mutableIntIntMap2 == null) {
                mutableIntIntMap2 = new MutableIntIntMap(i3, i2, jh2Var);
                this.nodeCountOverrides = mutableIntIntMap2;
            }
            LinkComposerKt.isInsertHandle(j);
            mutableIntIntMap2.set(GroupHandleKt.getGroup(j), i);
        }
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

    private final void updateNodeCountOverrides(long j, int i) {
        int iUpdatedNodeCount = updatedNodeCount(j);
        if (iUpdatedNodeCount != i) {
            int i2 = i - iUpdatedNodeCount;
            int iM5343getSizeimpl = Stack.m5343getSizeimpl(this.pendingStack) - 1;
            while (GroupHandleKt.getGroup(j) != -1) {
                int iUpdatedNodeCount2 = updatedNodeCount(j) + i2;
                updateChildNodeCount(j, iUpdatedNodeCount2);
                for (int i3 = iM5343getSizeimpl; -1 < i3; i3--) {
                    LinkPending linkPending = (LinkPending) Stack.m5348peekimpl(this.pendingStack, i3);
                    if (linkPending != null && linkPending.updateNodeCount(GroupHandleKt.getGroup(j), iUpdatedNodeCount2)) {
                        iM5343getSizeimpl = i3 - 1;
                        break;
                    }
                }
                if (LinkComposerKt.isInsertHandle(j)) {
                    j = this.reader.getParentHandle();
                } else {
                    int[] groups = getReaderTable$runtime().getAddressSpace().getGroups();
                    int group = GroupHandleKt.getGroup(j);
                    if ((groups[group + 4] & 8388608) == 8388608) {
                        return;
                    } else {
                        j = ((long) groups[group + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                    }
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
        nextSlot$runtime();
        updateValue(obj);
    }

    private final int updatedNodeCount(long j) {
        int orDefault;
        if (LinkComposerKt.isInsertHandle(j)) {
            MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
            if (mutableIntIntMap != null) {
                return mutableIntIntMap.getOrDefault(GroupHandleKt.getGroup(j), 0);
            }
            return 0;
        }
        LinkComposerKt.isInsertHandle(j);
        int group = GroupHandleKt.getGroup(j);
        MutableIntIntMap mutableIntIntMap2 = this.nodeCountOverrides;
        return (mutableIntIntMap2 == null || (orDefault = mutableIntIntMap2.getOrDefault(group, -1)) < 0) ? getReaderTable$runtime().getAddressSpace().getGroups()[group + 4] & GroupFlagsSpec.CHILD_NODE_COUNT_MASK : orDefault;
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

    private final <R> R withReader(SlotTableReader slotTableReader, ll3<? extends R> ll3Var) {
        SlotTableReader slotTableReader2 = this.reader;
        MutableIntIntMap mutableIntIntMap = this.nodeCountOverrides;
        MutableIntObjectMap<PersistentCompositionLocalMap> mutableIntObjectMap = this.providerUpdates;
        this.nodeCountOverrides = null;
        this.providerUpdates = null;
        try {
            this.reader = slotTableReader;
            return ll3Var.invoke();
        } finally {
            this.reader = slotTableReader2;
            this.nodeCountOverrides = mutableIntIntMap;
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
        LinkComposer linkComposer;
        startGroup(ComposerKt.referenceKey, ComposerKt.getReference());
        if (getInserting()) {
            this.builder.addFlags(1073741824);
        }
        Object objNextSlot$runtime = nextSlot$runtime();
        ReusableRememberObserverHolder reusableLinkRememberObserverHolder = objNextSlot$runtime instanceof ReusableRememberObserverHolder ? (ReusableRememberObserverHolder) objNextSlot$runtime : null;
        if (reusableLinkRememberObserverHolder == null) {
            linkComposer = this;
            reusableLinkRememberObserverHolder = new ReusableLinkRememberObserverHolder(new CompositionContextHolder(linkComposer.new CompositionContextImpl(getCompositeKeyHashCode(), this.forceRecomposeScopes, getSourceMarkersEnabled$runtime(), getComposition().getObserverHolder$runtime())), LinkAnchorKt.getNullAnchor());
            linkComposer.updateValue(reusableLinkRememberObserverHolder);
        } else {
            linkComposer = this;
        }
        RememberObserver wrapped = reusableLinkRememberObserverHolder.getWrapped();
        wrapped.getClass();
        CompositionContextHolder compositionContextHolder = (CompositionContextHolder) wrapped;
        compositionContextHolder.getRef().updateCompositionLocalScope(linkComposer.currentCompositionLocalScope());
        linkComposer.endGroup();
        return compositionContextHolder.getRef();
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(long j) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Long) && j == ((Number) objNextSlot$runtime).longValue()) {
            return false;
        }
        updateValue(Long.valueOf(j));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changedInstance(Object obj) {
        if (nextSlot$runtime() == obj) {
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
        this.builder.collectSourceInformation();
    }

    @Override // androidx.compose.runtime.InternalComposer
    /* JADX INFO: renamed from: composeContent--ZbOJvo$runtime */
    public void mo5319composeContentZbOJvo$runtime(MutableScatterMap<Object, Object> mutableScatterMap, bm3<? super Composer, ? super Integer, j59> bm3Var, ShouldPauseCallback shouldPauseCallback) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        this.shouldPauseCallback = shouldPauseCallback;
        try {
            m5324doComposeaFTiNEg(mutableScatterMap, bm3Var);
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
        this.groupNodeCount++;
        long parentHandle = this.builder.getParentHandle();
        if (!this.changeListWriter.isInAnchorMode()) {
            this.insertFixups.createAndInsertNode(ll3Var, iPeek, this.builder.getParentHandle());
        } else {
            this.insertFixups.createAndInsertNodeByAnchor(ll3Var, iPeek, this.builder.getTable().getAddressSpace().anchorOfAddress(GroupHandleKt.getGroup(parentHandle)));
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void deactivate$runtime() {
        Stack.m5338clearimpl(this.invalidateStack);
        ScopeMap.m5393clearimpl(this.invalidations);
        this.changes.clear();
        this.providerUpdates = null;
    }

    @Override // androidx.compose.runtime.Composer
    public void deactivateToEndGroup(boolean z) {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling deactivateToEndGroup");
        }
        if (getInserting()) {
            return;
        }
        if (!z) {
            skipReaderToGroupEnd();
        } else {
            this.changeListWriter.deactivateCurrentGroup();
            this.reader.skipToGroupEnd();
        }
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
        this.slotTable.dispose();
        this.parentContext.unregisterComposer$runtime(this);
        deactivate$runtime();
        getApplier().clear();
        this.isDisposed = true;
    }

    @Override // androidx.compose.runtime.Composer
    public void enableReusing() {
        this.reusing = this.reusingGroup >= 0;
    }

    @Override // androidx.compose.runtime.Composer
    public void endDefaults() {
        endGroup();
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime == null || !currentRecomposeScope$runtime.getUsed()) {
            return;
        }
        currentRecomposeScope$runtime.setDefaultsInScope(true);
    }

    @Override // androidx.compose.runtime.Composer
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
        this.providersInvalid = LinkComposerKt.asBool(this.providersInvalidStack.pop());
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    public void endProviders() {
        endGroup();
        endGroup();
        this.providersInvalid = LinkComposerKt.asBool(this.providersInvalidStack.pop());
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void endReplaceGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public void endReplaceableGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public ScopeUpdateScope endRestartGroup() {
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
                if (recomposeScopeImpl2.getResetReusing() && this.reusingGroup == this.reader.getParentGroup()) {
                    recomposeScopeImpl2.setResetReusing(false);
                    this.reusingGroup = -1;
                    this.reusing = false;
                }
            }
        }
        if (recomposeScopeImpl2 != null && !recomposeScopeImpl2.getSkipped$runtime() && (recomposeScopeImpl2.getUsed() || this.forceRecomposeScopes)) {
            if (recomposeScopeImpl2.getAnchor() == null) {
                recomposeScopeImpl2.setAnchor(getInserting() ? this.builder.getParentAnchor() : this.reader.getParentAnchor());
            }
            recomposeScopeImpl2.setDefaultsInvalid(false);
            recomposeScopeImpl = recomposeScopeImpl2;
        }
        end(false);
        return recomposeScopeImpl;
    }

    @Override // androidx.compose.runtime.Composer
    public void endReusableGroup() {
        if (this.reusing && this.reader.getParentGroup() == this.reusingGroup) {
            this.reusingGroup = -1;
            this.reusing = false;
        }
        end(false);
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void endReuseFromRoot$runtime() {
        int i = this.reusingGroup;
        if (!(!isComposing$runtime() && (i < 0 ? 100 : this.reader.groupKey(i)) == 100)) {
            PreconditionsKt.throwIllegalArgumentException("Cannot disable reuse from root if it was caused by other groups");
        }
        this.reusingGroup = -1;
        this.reusing = false;
    }

    @Override // androidx.compose.runtime.Composer
    public void endToMarker(int i) {
        jh2 jh2Var = null;
        int i2 = 1;
        int i3 = 0;
        if (i < 0) {
            int i4 = -i;
            SlotTableBuilder slotTableBuilder = this.builder;
            MutableIntSet mutableIntSet = new MutableIntSet(i3, i2, jh2Var);
            int[] groups = getReaderTable$runtime().getAddressSpace().getGroups();
            int i5 = i4;
            while (i5 > 0) {
                mutableIntSet.add(i5);
                i5 = groups[i5 + 2];
            }
            if ((i5 == 0 ? 0 : 1) == 0) {
                h2.b(i4, "Traversing parent of group not in the slot table: ");
            }
            while (!mutableIntSet.contains(slotTableBuilder.getParentGroup())) {
                end(slotTableBuilder.isNode());
            }
            return;
        }
        if (getInserting()) {
            SlotTableBuilder slotTableBuilder2 = this.builder;
            while (getInserting()) {
                end(slotTableBuilder2.isNode());
            }
        }
        MutableIntSet mutableIntSet2 = new MutableIntSet(i3, i2, jh2Var);
        int[] groups2 = getReaderTable$runtime().getAddressSpace().getGroups();
        int i6 = i;
        while (i6 > 0) {
            mutableIntSet2.add(i6);
            i6 = groups2[i6 + 2];
        }
        if (!(i6 != 0)) {
            h2.b(i, "Traversing parent of group not in the slot table: ");
        }
        SlotTableReader slotTableReader = this.reader;
        for (int parentGroup = slotTableReader.getParentGroup(); !mutableIntSet2.contains(parentGroup); parentGroup = slotTableReader.getParentGroup()) {
            end((slotTableReader.flagsOf(parentGroup) & 8388608) == 8388608);
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
        LinkCompositionDataImpl linkCompositionDataImpl = new LinkCompositionDataImpl(getComposition());
        this._compositionData = linkCompositionDataImpl;
        return linkCompositionDataImpl;
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionLocalMap getCurrentCompositionLocalMap() {
        return currentCompositionLocalScope();
    }

    @Override // androidx.compose.runtime.Composer
    public int getCurrentMarker() {
        return getInserting() ? -this.builder.getParentGroup() : this.reader.getParentGroup();
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
    public Changes getDeferredChanges$runtime() {
        return this.deferredChanges;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public CompositionErrorContextImpl getErrorContext$runtime() {
        if (getSourceMarkersEnabled$runtime()) {
            return this.errorContext;
        }
        return null;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean getHasPendingChanges$runtime() {
        return this.changes.isNotEmpty();
    }

    public final SlotTable getInsertTable$runtime() {
        return this.builder.getTable();
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getInserting() {
        return this.inserting;
    }

    public final SlotTableReader getReader$runtime() {
        return this.reader;
    }

    public final SlotTable getReaderTable$runtime() {
        return this.reader.getTable();
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
        try {
            insertMovableContentGuarded(list);
            cleanUpCompose();
        } catch (Throwable th) {
            abortRoot();
            throw th;
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
    public Object joinKey(Object obj, Object obj2) {
        Object key = LinkComposerKt.getKey(getInserting() ? null : this.reader.getGroupObjectKey(), obj, obj2);
        return key == null ? new JoinedKey(obj, obj2) : key;
    }

    public final Object nextSlot$runtime() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        return (!this.reusing || (next instanceof ReusableRememberObserverHolder)) ? next : Composer.Companion.getEmpty();
    }

    public final Object nextSlotForCache$runtime() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        if (this.reusing && !(next instanceof ReusableRememberObserverHolder)) {
            return Composer.Companion.getEmpty();
        }
        if (next instanceof RememberObserverHolder) {
            this.changeListWriter.updateRememberOrdering(LinkComposerKt.asLinkRememberObserverHolder((RememberObserverHolder) next), getReaderTable$runtime().getAddressSpace().anchorOfAddress(this.lastPlacedChildGroup));
        }
        return next;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public int parentKey$runtime() {
        if (getInserting()) {
            SlotTableBuilder slotTableBuilder = this.builder;
            return slotTableBuilder.groupKey(slotTableBuilder.getParentGroup());
        }
        SlotTableReader slotTableReader = this.reader;
        return slotTableReader.groupKey(slotTableReader.getParentGroup());
    }

    @Override // androidx.compose.runtime.InternalComposer
    public List<ComposeStackTraceFrame> parentStackTrace$runtime() {
        Integer numFindSubcompositionContextGroup;
        Composition composition$runtime = this.parentContext.getComposition$runtime();
        CompositionImpl compositionImpl = composition$runtime instanceof CompositionImpl ? (CompositionImpl) composition$runtime : null;
        if (compositionImpl == null || (numFindSubcompositionContextGroup = LinkComposerKt.findSubcompositionContextGroup(SlotTableKt.asLinkBufferSlotTable(compositionImpl.getSlotStorage$runtime()), this.parentContext)) == null) {
            return kx2.b;
        }
        SlotTableReader slotTableReaderOpenReader = SlotTableKt.asLinkBufferSlotTable(compositionImpl.getSlotStorage$runtime()).openReader();
        try {
            return qn1.h0(compositionImpl.getComposer$runtime().parentStackTrace$runtime(), SlotTableReaderKt.traceForGroup(slotTableReaderOpenReader, numFindSubcompositionContextGroup.intValue(), 0));
        } finally {
            slotTableReaderOpenReader.close();
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
    /* JADX INFO: renamed from: recompose-aFTiNEg$runtime */
    public boolean mo5320recomposeaFTiNEg$runtime(MutableScatterMap<Object, Object> mutableScatterMap, ShouldPauseCallback shouldPauseCallback) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        if (ScopeMap.m5403getSizeimpl(mutableScatterMap) <= 0 && !ScopeMap.m5406isNotEmptyimpl(this.invalidations) && ((this.slotTable.getRoot() < 0 || !requiresRecomposition(this.slotTable.getRoot())) && !this.forciblyRecompose)) {
            return false;
        }
        this.shouldPauseCallback = shouldPauseCallback;
        try {
            this.changeListWriter.startComposition();
            m5324doComposeaFTiNEg(mutableScatterMap, null);
            this.shouldPauseCallback = null;
            if (ChangeListKt.asLinkBufferChangeList(this.changes).hasChangesRequiringApplication()) {
                return true;
            }
            if (!this.changes.isNotEmpty()) {
                return false;
            }
            executeChangesImmediatelyWithoutApplier();
            return false;
        } catch (Throwable th) {
            this.shouldPauseCallback = null;
            throw th;
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
        return unwrapRememberObserverHolder(nextSlotForCache$runtime());
    }

    @Override // androidx.compose.runtime.Composer
    public CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
        return this.parentContext.scheduleFrameEndCallback(ll3Var);
    }

    public void setDeferredChanges$runtime(Changes changes) {
        this.deferredChanges = changes;
    }

    public final void setReader$runtime(SlotTableReader slotTableReader) {
        this.reader = slotTableReader;
    }

    public void setSourceMarkersEnabled$runtime(boolean z) {
        this.sourceMarkersEnabled = z;
    }

    @Override // androidx.compose.runtime.Composer
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

    /* JADX WARN: Code duplicated, block: B:22:0x0090  */
    /* JADX WARN: Code duplicated, block: B:30:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:32:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e7  */
    @Override // androidx.compose.runtime.Composer
    @ComposeCompilerApi
    public void skipCurrentGroup() {
        long jRotateLeft;
        if (!requiresRecomposition(this.reader.getCurrentGroup())) {
            skipGroup();
            return;
        }
        SlotTableReader slotTableReader = this.reader;
        int groupKey = slotTableReader.getGroupKey();
        Object groupObjectKey = slotTableReader.getGroupObjectKey();
        Object groupAux = slotTableReader.getGroupAux();
        int i = this.rGroupIndex;
        if (groupObjectKey == null) {
            if (groupAux == null || groupKey != 207 || groupAux.equals(Composer.Companion.getEmpty())) {
                jRotateLeft = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) groupKey), 3) ^ ((long) i);
            } else {
                this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) groupAux.hashCode()), 3) ^ ((long) i);
            }
            startReaderGroup(slotTableReader.isNode(), null);
            recomposeToGroupEnd();
            slotTableReader.endGroup();
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
        startReaderGroup(slotTableReader.isNode(), null);
        recomposeToGroupEnd();
        slotTableReader.endGroup();
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
        if (this.reader.getCurrentGroup() < 0 || !requiresRecomposition(this.reader.getParentGroup())) {
            skipReaderToGroupEnd();
        } else {
            recomposeToGroupEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void sourceInformation(String str) {
        if (getInserting() && getSourceMarkersEnabled$runtime()) {
            this.builder.recordGroupSourceInformation(str);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void sourceInformationMarkerEnd() {
        if (getInserting() && getSourceMarkersEnabled$runtime()) {
            this.builder.recordGrouplessCallSourceInformationEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void sourceInformationMarkerStart(int i, String str) {
        if (getInserting() && getSourceMarkersEnabled$runtime()) {
            this.builder.recordGrouplessCallSourceInformationStart(i, str);
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public ComposeStackTrace stackTraceForValue$runtime(Object obj) {
        boolean sourceMarkersEnabled$runtime = getSourceMarkersEnabled$runtime();
        int i = 0;
        List listH0 = kx2.b;
        if (!sourceMarkersEnabled$runtime) {
            return new ComposeStackTrace(listH0, false);
        }
        ObjectLocation objectLocationFindLocation = SlotTableKt.findLocation(this.slotTable, new mq4(obj, i));
        if (objectLocationFindLocation != null) {
            listH0 = qn1.h0(parentStackTrace$runtime(), stackTraceForGroup(objectLocationFindLocation.component1(), objectLocationFindLocation.component2()));
        }
        return new ComposeStackTrace(listH0, getSourceMarkersEnabled$runtime());
    }

    @Override // androidx.compose.runtime.InternalComposer
    public int stacksSize$runtime() {
        return Stack.m5343getSizeimpl(this.pendingStack) + Stack.m5343getSizeimpl(this.invalidateStack) + this.entersStack.tos + this.providersInvalidStack.tos + this.parentStateStack.tos;
    }

    @Override // androidx.compose.runtime.Composer
    public void startDefaults() {
        m5325startAzEfcrM(ComposerKt.defaultsKey, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void startMovableGroup(int i, Object obj) {
        m5325startAzEfcrM(i, obj, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void startNode() {
        m5325startAzEfcrM(GapComposerKt.nodeKey, null, GroupKind.Companion.m5425getNode9udXigM(), null);
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
            this.builderHasAProvider = true;
        } else {
            SlotTableReader slotTableReader = this.reader;
            Object objGroupAux = slotTableReader.groupAux(slotTableReader.getCurrentGroup());
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
        this.providersInvalidStack.push(LinkComposerKt.asInt(this.providersInvalid));
        this.providersInvalid = z2;
        this.providerCache = persistentCompositionLocalMapCurrentCompositionLocalScope;
        m5325startAzEfcrM(ComposerKt.compositionLocalMapKey, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m5424getGroup9udXigM(), persistentCompositionLocalMapCurrentCompositionLocalScope);
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
            this.builderHasAProvider = true;
        } else {
            Object obj = this.reader.get(0);
            obj.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) obj;
            Object obj2 = this.reader.get(1);
            obj2.getClass();
            PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) obj2;
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
        this.providersInvalidStack.push(LinkComposerKt.asInt(this.providersInvalid));
        this.providersInvalid = z2;
        this.providerCache = persistentCompositionLocalMapUpdateProviderMapGroup;
        m5325startAzEfcrM(ComposerKt.compositionLocalMapKey, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m5424getGroup9udXigM(), persistentCompositionLocalMapUpdateProviderMapGroup);
    }

    @Override // androidx.compose.runtime.Composer
    public void startReplaceGroup(int i) {
        if (this.pending != null) {
            m5325startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
            return;
        }
        validateNodeNotExpected();
        this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(getCompositeKeyHashCode(), 3) ^ ((long) i), 3) ^ ((long) this.rGroupIndex);
        this.rGroupIndex++;
        SlotTableReader slotTableReader = this.reader;
        if (getInserting()) {
            slotTableReader.beginEmpty();
            SlotTableBuilder slotTableBuilder = this.builder;
            Composer.Companion companion = Composer.Companion;
            Object empty = companion.getEmpty();
            slotTableBuilder.startNewGroup(i, empty == companion.getEmpty() ? 0 : 16777216, empty, null, null);
            enterGroup(false, null);
            return;
        }
        if (slotTableReader.getGroupKey() == i && !slotTableReader.getHasObjectKey()) {
            slotTableReader.startGroup();
            enterGroup(false, null);
            return;
        }
        if (!slotTableReader.isGroupEnd()) {
            int i2 = this.nodeIndex;
            recordDelete();
            this.changeListWriter.removeNode(i2, slotTableReader.skipGroup());
        }
        slotTableReader.beginEmpty();
        this.inserting = true;
        this.providerCache = null;
        ensureBuilder();
        SlotTableBuilder slotTableBuilder2 = this.builder;
        Composer.Companion companion2 = Composer.Companion;
        Object empty2 = companion2.getEmpty();
        slotTableBuilder2.startNewGroup(i, empty2 == companion2.getEmpty() ? 0 : 16777216, empty2, null, null);
        enterGroup(false, null);
    }

    @Override // androidx.compose.runtime.Composer
    public void startReplaceableGroup(int i) {
        m5325startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
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
        m5325startAzEfcrM(i, null, GroupKind.Companion.m5424getGroup9udXigM(), obj);
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableNode() {
        m5325startAzEfcrM(GapComposerKt.nodeKey, null, GroupKind.Companion.m5426getReusableNode9udXigM(), null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void startReuseFromRoot$runtime() {
        this.reusingGroup = this.slotTable.getRoot();
        this.reusing = true;
    }

    @Override // androidx.compose.runtime.InternalComposer
    public boolean tryImminentInvalidation$runtime(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        int address;
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor == null || (address = LinkAnchorKt.asLinkAnchor(anchor).getAddress()) < 0 || !isComposing$runtime() || !isGroupAfterCurrentReaderPosition(((long) address) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) {
            return false;
        }
        this.reader.addFlag(address, 67108864);
        if (obj != null) {
            ScopeInvalidated scopeInvalidated = ScopeInvalidated.INSTANCE;
            if (!obj.equals(scopeInvalidated)) {
                boolean z = obj instanceof ScatterSet;
                MutableScatterMap<Object, Object> mutableScatterMap = this.invalidations;
                if (z) {
                    ScopeMap.m5389addAllimpl(mutableScatterMap, recomposeScopeImpl, (ScatterSet) obj);
                    return true;
                }
                if (aa4.e(ScopeMap.m5402getimpl(mutableScatterMap, recomposeScopeImpl), scopeInvalidated)) {
                    return true;
                }
                ScopeMap.m5388addimpl(this.invalidations, recomposeScopeImpl, obj);
                return true;
            }
        }
        ScopeMap.m5412setimpl(this.invalidations, recomposeScopeImpl, ScopeInvalidated.INSTANCE);
        return true;
    }

    public final void updateCachedValue$runtime(Object obj) {
        boolean z = obj instanceof RememberObserver;
        Object obj2 = obj;
        if (z) {
            LinkRememberObserverHolder linkRememberObserverHolder = new LinkRememberObserverHolder((RememberObserver) obj, getReaderTable$runtime().getAddressSpace().anchorOfAddress(this.lastPlacedChildGroup));
            if (getInserting()) {
                this.changeListWriter.remember(linkRememberObserverHolder);
            }
            this.abandonSet.add(obj);
            obj2 = linkRememberObserverHolder;
        }
        updateValue(obj2);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0089  */
    @Override // androidx.compose.runtime.InternalComposer
    /* JADX INFO: renamed from: updateComposerInvalidations-RY85e9Y$runtime */
    public void mo5321updateComposerInvalidationsRY85e9Y$runtime(MutableScatterMap<Object, Object> mutableScatterMap) {
        int i;
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            long j = jArr[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8;
                int i4 = 8 - ((~(i2 - length)) >>> 31);
                int i5 = 0;
                while (i5 < i4) {
                    if ((255 & j) < 128) {
                        int i6 = (i2 << 3) + i5;
                        Object obj = objArr[i6];
                        Object obj2 = objArr2[i6];
                        obj.getClass();
                        Anchor anchor = ((RecomposeScopeImpl) obj).getAnchor();
                        LinkAnchor linkAnchorAsLinkAnchor = anchor != null ? LinkAnchorKt.asLinkAnchor(anchor) : null;
                        if (linkAnchorAsLinkAnchor == null || !linkAnchorAsLinkAnchor.getValid()) {
                            i = i3;
                        } else {
                            int address = linkAnchorAsLinkAnchor.getAddress();
                            this.reader.addFlag(address, 67108864);
                            ScopeInvalidated scopeInvalidated = ScopeInvalidated.INSTANCE;
                            if (aa4.e(obj2, scopeInvalidated)) {
                                ScopeMap.m5412setimpl(this.invalidations, obj, scopeInvalidated);
                                i = i3;
                            } else {
                                boolean z = obj2 instanceof MutableScatterSet;
                                i = i3;
                                MutableScatterMap<Object, Object> mutableScatterMap2 = this.invalidations;
                                if (z) {
                                    ScopeMap.m5389addAllimpl(mutableScatterMap2, obj, (ScatterSet) obj2);
                                } else {
                                    ScopeMap.m5388addimpl(mutableScatterMap2, obj, obj2);
                                }
                            }
                            this.reader.addFlag(address, 67108864);
                        }
                    } else {
                        i = i3;
                    }
                    j >>= i;
                    i5++;
                    i3 = i;
                }
                if (i4 != i3) {
                    return;
                }
            }
            if (i2 == length) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void updateRememberedValue(Object obj) {
        updateCachedValue$runtime(obj);
    }

    public final void updateValue(Object obj) {
        if (getInserting()) {
            this.builder.append(obj);
            return;
        }
        boolean hadNext = this.reader.getHadNext();
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (hadNext) {
            composerChangeListWriter.updateValue(this.reader.getParentCurrentSlotOffset() - 1, obj);
        } else {
            composerChangeListWriter.appendValue(obj);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void useNode() {
        validateNodeExpected();
        if (getInserting()) {
            ComposerKt.composeImmediateRuntimeError("useNode() called while inserting");
        }
        Object parentNode = this.reader.getParentNode();
        this.changeListWriter.moveDown(parentNode);
        if (this.reusing && (parentNode instanceof ComposeNodeLifecycleCallback)) {
            this.changeListWriter.useNode(parentNode);
        }
    }

    @Override // androidx.compose.runtime.InternalComposer
    public void verifyConsistent$runtime() {
        if (isComposing$runtime()) {
            return;
        }
        getInsertTable$runtime().verifyWellFormed();
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionImpl getComposition() {
        return this.composition;
    }

    private final void startGroup(int i, Object obj) {
        m5325startAzEfcrM(i, obj, GroupKind.Companion.m5424getGroup9udXigM(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(char c) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Character) && c == ((Character) objNextSlot$runtime).charValue()) {
            return false;
        }
        updateValue(Character.valueOf(c));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(byte b) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Byte) && b == ((Number) objNextSlot$runtime).byteValue()) {
            return false;
        }
        updateValue(Byte.valueOf(b));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(short s) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Short) && s == ((Number) objNextSlot$runtime).shortValue()) {
            return false;
        }
        updateValue(Short.valueOf(s));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(boolean z) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Boolean) && z == ((Boolean) objNextSlot$runtime).booleanValue()) {
            return false;
        }
        updateValue(Boolean.valueOf(z));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(float f) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Float) && aa4.a(f, (Float) objNextSlot$runtime)) {
            return false;
        }
        updateValue(Float.valueOf(f));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(Object obj) {
        if (aa4.e(nextSlot$runtime(), obj)) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(double d) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Double) && d == ((Double) objNextSlot$runtime).doubleValue()) {
            return false;
        }
        updateValue(Double.valueOf(d));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(int i) {
        Object objNextSlot$runtime = nextSlot$runtime();
        if ((objNextSlot$runtime instanceof Integer) && i == ((Number) objNextSlot$runtime).intValue()) {
            return false;
        }
        updateValue(Integer.valueOf(i));
        return true;
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope() {
        PersistentCompositionLocalMap persistentCompositionLocalMap = this.providerCache;
        return persistentCompositionLocalMap != null ? persistentCompositionLocalMap : currentCompositionLocalScope(this.reader.getParentGroup());
    }
}
