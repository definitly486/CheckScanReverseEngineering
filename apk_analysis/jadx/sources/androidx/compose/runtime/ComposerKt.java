package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.tooling.ComposeStackTraceMode;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.b36;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.me0;
import defpackage.qn1;
import defpackage.zo1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposerKt {
    public static final boolean EnableDebugRuntimeChecks = false;
    public static final int compositionLocalMapKey = 202;
    private static CompositionTracer compositionTracer = null;
    public static final int defaultsKey = -127;
    private static final int invalidGroupLocation = -2;
    public static final int invocationKey = 200;
    public static final int providerKey = 201;
    public static final int providerMapsKey = 204;
    public static final int providerValuesKey = 203;
    public static final int referenceKey = 206;
    public static final int reuseKey = 207;
    private static int composeStackTraceMode = ComposeStackTraceMode.Companion.m5653getNoneMD5MrJc();
    private static final Object invocation = new OpaqueKey("provider");
    private static final Object provider = new OpaqueKey("provider");
    private static final Object compositionLocalMap = new OpaqueKey("compositionLocalMap");
    private static final Object providerValues = new OpaqueKey("providerValues");
    private static final Object providerMaps = new OpaqueKey("providers");
    private static final Object reference = new OpaqueKey(TypedValues.Custom.S_REFERENCE);

    @ComposeCompilerApi
    public static final <T> T cache(Composer composer, boolean z, ll3<? extends T> ll3Var) {
        T t = (T) composer.rememberedValue();
        if (!z && t != Composer.Companion.getEmpty()) {
            return t;
        }
        T tInvoke = ll3Var.invoke();
        composer.updateRememberedValue(tInvoke);
        return tInvoke;
    }

    public static final void composeImmediateRuntimeError(String str) {
        throw new ComposeRuntimeError(me0.c("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final Void composeRuntimeError(String str) {
        throw new ComposeRuntimeError(me0.c("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final void debugRuntimeCheck(boolean z) {
    }

    public static final void debugRuntimeCheck(boolean z, ll3<String> ll3Var) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v2, types: [kx2] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.util.ArrayList] */
    public static final MovableContentState extractMovableContentAtCurrent(final ControlledComposition controlledComposition, MovableContentStateReference movableContentStateReference, SlotWriter slotWriter, Applier<?> applier) {
        final MovableContentStateReference movableContentStateReference2;
        SlotTable slotTable;
        ?? arrayList;
        Anchor anchor;
        long[] jArr;
        Anchor anchor2;
        SlotTable slotTable2;
        long[] jArr2;
        long j;
        int i;
        boolean zIsEmpty;
        Object obj;
        int i2;
        long j2;
        Object obj2;
        SlotTable slotTable3 = new SlotTable();
        if (slotWriter.getCollectingSourceInformation()) {
            slotTable3.collectSourceInformation();
        }
        if (slotWriter.getCollectingCalledInformation()) {
            slotTable3.collectCalledByInformation();
        }
        int currentGroup = slotWriter.getCurrentGroup();
        if (applier != null && slotWriter.nodeCount(currentGroup) > 0) {
            int parent = slotWriter.getParent();
            while (parent > 0 && !slotWriter.isNode(parent)) {
                parent = slotWriter.parent(parent);
            }
            if (parent >= 0 && slotWriter.isNode(parent)) {
                Object objNode = slotWriter.node(parent);
                int i3 = parent + 1;
                int iGroupSize = slotWriter.groupSize(parent) + parent;
                int iNodeCount = 0;
                while (i3 < iGroupSize) {
                    int iGroupSize2 = slotWriter.groupSize(i3) + i3;
                    if (iGroupSize2 > currentGroup) {
                        break;
                    }
                    iNodeCount += slotWriter.isNode(i3) ? 1 : slotWriter.nodeCount(i3);
                    i3 = iGroupSize2;
                }
                int iNodeCount2 = slotWriter.isNode(currentGroup) ? 1 : slotWriter.nodeCount(currentGroup);
                applier.down(objNode);
                applier.remove(iNodeCount, iNodeCount2);
                applier.up();
            }
        }
        Anchor anchor$runtime = movableContentStateReference.getAnchor$runtime();
        if (anchor$runtime.getValid()) {
            controlledComposition.getClass();
            CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
            if (ScopeMap.m5403getSizeimpl(compositionImpl.invalidations) > 0) {
                arrayList = new ArrayList();
                MutableScatterMap mutableScatterMap = compositionImpl.invalidations;
                long[] jArr3 = mutableScatterMap.metadata;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    int i4 = 0;
                    while (true) {
                        long j3 = jArr3[i4];
                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i5 = 8;
                            int i6 = 8 - ((~(i4 - length)) >>> 31);
                            int i7 = 0;
                            while (i7 < i6) {
                                if ((j3 & 255) < 128) {
                                    int i8 = (i4 << 3) + i7;
                                    int i9 = i5;
                                    Object obj3 = mutableScatterMap.keys[i8];
                                    anchor2 = anchor$runtime;
                                    Object obj4 = mutableScatterMap.values[i8];
                                    obj3.getClass();
                                    if (obj4 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet = (MutableScatterSet) obj4;
                                        Object[] objArr = mutableScatterSet.elements;
                                        long[] jArr4 = mutableScatterSet.metadata;
                                        jArr2 = jArr3;
                                        int length2 = jArr4.length - 2;
                                        if (length2 >= 0) {
                                            j = j3;
                                            int i10 = 0;
                                            while (true) {
                                                long j4 = jArr4[i10];
                                                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                                    int i12 = 0;
                                                    while (i12 < i11) {
                                                        if ((j4 & 255) < 128) {
                                                            i2 = i12;
                                                            int i13 = (i10 << 3) + i2;
                                                            j2 = j4;
                                                            Object obj5 = objArr[i13];
                                                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                                                            Anchor anchor3 = recomposeScopeImpl.getAnchor();
                                                            if (anchor3 != null) {
                                                                obj2 = obj3;
                                                                slotTable3 = slotTable3;
                                                                if (slotWriter.inGroup(GapAnchorKt.asGapAnchor(anchor2), GapAnchorKt.asGapAnchor(anchor3))) {
                                                                    arrayList.add(new b36(recomposeScopeImpl, obj5));
                                                                    mutableScatterSet.removeElementAt(i13);
                                                                }
                                                            }
                                                            j4 = j2 >> i9;
                                                            i12 = i2 + 1;
                                                            obj3 = obj2;
                                                            slotTable3 = slotTable3;
                                                        } else {
                                                            i2 = i12;
                                                            j2 = j4;
                                                        }
                                                        obj2 = obj3;
                                                        j4 = j2 >> i9;
                                                        i12 = i2 + 1;
                                                        obj3 = obj2;
                                                        slotTable3 = slotTable3;
                                                    }
                                                    slotTable2 = slotTable3;
                                                    obj = obj3;
                                                    if (i11 != i9) {
                                                        break;
                                                    }
                                                } else {
                                                    slotTable2 = slotTable3;
                                                    obj = obj3;
                                                }
                                                if (i10 == length2) {
                                                    break;
                                                }
                                                i10++;
                                                obj3 = obj;
                                                slotTable3 = slotTable2;
                                                i9 = 8;
                                            }
                                        } else {
                                            slotTable2 = slotTable3;
                                            j = j3;
                                        }
                                        zIsEmpty = mutableScatterSet.isEmpty();
                                    } else {
                                        slotTable2 = slotTable3;
                                        jArr2 = jArr3;
                                        j = j3;
                                        obj4.getClass();
                                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj3;
                                        Anchor anchor4 = recomposeScopeImpl2.getAnchor();
                                        if (anchor4 == null || !slotWriter.inGroup(GapAnchorKt.asGapAnchor(anchor2), GapAnchorKt.asGapAnchor(anchor4))) {
                                            zIsEmpty = false;
                                        } else {
                                            arrayList.add(new b36(recomposeScopeImpl2, obj4));
                                            zIsEmpty = true;
                                        }
                                    }
                                    if (zIsEmpty) {
                                        mutableScatterMap.removeValueAt(i8);
                                    }
                                    i = 8;
                                } else {
                                    anchor2 = anchor$runtime;
                                    slotTable2 = slotTable3;
                                    jArr2 = jArr3;
                                    j = j3;
                                    i = i5;
                                }
                                j3 = j >> i;
                                i7++;
                                i5 = i;
                                anchor$runtime = anchor2;
                                jArr3 = jArr2;
                                slotTable3 = slotTable2;
                            }
                            anchor = anchor$runtime;
                            slotTable = slotTable3;
                            jArr = jArr3;
                            if (i6 != i5) {
                                break;
                            }
                        } else {
                            anchor = anchor$runtime;
                            slotTable = slotTable3;
                            jArr = jArr3;
                        }
                        if (i4 == length) {
                            break;
                        }
                        i4++;
                        anchor$runtime = anchor;
                        jArr3 = jArr;
                        slotTable3 = slotTable;
                    }
                } else {
                    slotTable = slotTable3;
                }
            } else {
                slotTable = slotTable3;
                arrayList = kx2.b;
            }
            movableContentStateReference2 = movableContentStateReference;
            movableContentStateReference2.setInvalidations$runtime(qn1.h0((Iterable) arrayList, movableContentStateReference.getInvalidations$runtime()));
        } else {
            movableContentStateReference2 = movableContentStateReference;
            slotTable = slotTable3;
        }
        SlotWriter slotWriterOpenWriter = slotTable.openWriter();
        try {
            slotWriterOpenWriter.beginInsert();
            slotWriterOpenWriter.startGroup(MovableContentKt.movableContentKey, movableContentStateReference2.getContent$runtime());
            SlotWriter.markGroup$default(slotWriterOpenWriter, 0, 1, null);
            slotWriterOpenWriter.update(movableContentStateReference2.getParameter$runtime());
            List<GapAnchor> listMoveTo = slotWriter.moveTo(GapAnchorKt.asGapAnchor(movableContentStateReference2.getAnchor$runtime()), 1, slotWriterOpenWriter);
            slotWriterOpenWriter.skipGroup();
            slotWriterOpenWriter.endGroup();
            slotWriterOpenWriter.endInsert();
            slotWriterOpenWriter.close(true);
            SlotTable slotTable4 = slotTable;
            MovableContentState movableContentState = new MovableContentState(slotTable4);
            RecomposeScopeImpl.Companion companion = RecomposeScopeImpl.Companion;
            if (!companion.hasAnchoredRecomposeScopes$runtime(slotTable4, listMoveTo)) {
                return movableContentState;
            }
            RecomposeScopeOwner recomposeScopeOwner = new RecomposeScopeOwner() { // from class: androidx.compose.runtime.ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1
                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl3, Object obj6) {
                    InvalidationResult invalidationResultInvalidate;
                    ControlledComposition controlledComposition2 = controlledComposition;
                    RecomposeScopeOwner recomposeScopeOwner2 = controlledComposition2 instanceof RecomposeScopeOwner ? (RecomposeScopeOwner) controlledComposition2 : null;
                    if (recomposeScopeOwner2 == null || (invalidationResultInvalidate = recomposeScopeOwner2.invalidate(recomposeScopeImpl3, obj6)) == null) {
                        invalidationResultInvalidate = InvalidationResult.IGNORED;
                    }
                    if (invalidationResultInvalidate != InvalidationResult.IGNORED) {
                        return invalidationResultInvalidate;
                    }
                    MovableContentStateReference movableContentStateReference3 = movableContentStateReference2;
                    movableContentStateReference3.setInvalidations$runtime(qn1.i0(new b36(recomposeScopeImpl3, obj6), movableContentStateReference3.getInvalidations$runtime()));
                    return InvalidationResult.SCHEDULED;
                }

                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public void recomposeScopeReleased(RecomposeScopeImpl recomposeScopeImpl3) {
                }

                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public void recordReadOf(Object obj6) {
                }
            };
            SlotWriter slotWriterOpenWriter2 = slotTable4.openWriter();
            try {
                companion.adoptAnchoredScopes$runtime(slotWriterOpenWriter2, listMoveTo, recomposeScopeOwner);
                j59 j59Var = j59.a;
                boolean z = true;
                return movableContentState;
            } finally {
                slotWriterOpenWriter2.close(false);
            }
        } catch (Throwable th) {
            slotWriterOpenWriter.close(false);
            throw th;
        }
    }

    public static final int getComposeStackTraceMode() {
        return composeStackTraceMode;
    }

    public static final Object getCompositionLocalMap() {
        return compositionLocalMap;
    }

    public static /* synthetic */ void getCompositionLocalMap$annotations() {
    }

    public static /* synthetic */ void getCompositionLocalMapKey$annotations() {
    }

    private static /* synthetic */ void getCompositionTracer$annotations() {
    }

    public static final Object getInvocation() {
        return invocation;
    }

    public static /* synthetic */ void getInvocation$annotations() {
    }

    public static /* synthetic */ void getInvocationKey$annotations() {
    }

    private static final int getNextGroup(SlotWriter slotWriter) {
        return slotWriter.groupSize(slotWriter.getCurrentGroup()) + slotWriter.getCurrentGroup();
    }

    public static final Object getProvider() {
        return provider;
    }

    public static /* synthetic */ void getProvider$annotations() {
    }

    public static /* synthetic */ void getProviderKey$annotations() {
    }

    public static final Object getProviderMaps() {
        return providerMaps;
    }

    public static /* synthetic */ void getProviderMaps$annotations() {
    }

    public static /* synthetic */ void getProviderMapsKey$annotations() {
    }

    public static final Object getProviderValues() {
        return providerValues;
    }

    public static /* synthetic */ void getProviderValues$annotations() {
    }

    public static /* synthetic */ void getProviderValuesKey$annotations() {
    }

    public static final Object getReference() {
        return reference;
    }

    public static /* synthetic */ void getReference$annotations() {
    }

    public static /* synthetic */ void getReferenceKey$annotations() {
    }

    public static /* synthetic */ void getReuseKey$annotations() {
    }

    public static final boolean isAfterFirstChild(SlotWriter slotWriter) {
        return slotWriter.getCurrentGroup() > slotWriter.getParent() + 1;
    }

    @ComposeCompilerApi
    public static final boolean isTraceInProgress() {
        CompositionTracer compositionTracer2 = compositionTracer;
        return compositionTracer2 != null && compositionTracer2.isTraceInProgress();
    }

    public static final void removeCurrentGroup(SlotWriter slotWriter, RememberManager rememberManager) {
        slotWriter.forAllDataInRememberOrder(slotWriter.getCurrentGroup(), new zo1(rememberManager, 1));
        slotWriter.removeGroup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 removeCurrentGroup$lambda$0(RememberManager rememberManager, int i, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            rememberManager.releasing((ComposeNodeLifecycleCallback) obj);
        }
        if (obj instanceof RememberObserverHolder) {
            rememberManager.forgetting((RememberObserverHolder) obj);
        }
        if (obj instanceof RecomposeScopeImpl) {
            ((RecomposeScopeImpl) obj).release();
        }
        return j59.a;
    }

    public static final void runtimeCheck(boolean z, ll3<String> ll3Var) {
        if (z) {
            return;
        }
        composeImmediateRuntimeError(ll3Var.invoke());
    }

    /* JADX INFO: renamed from: setComposeStackTraceMode-76WK1J0, reason: not valid java name */
    public static final void m5315setComposeStackTraceMode76WK1J0(int i) {
        composeStackTraceMode = i;
    }

    @ComposeCompilerApi
    public static final void sourceInformation(Composer composer, String str) {
        composer.sourceInformation(str);
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerEnd(Composer composer) {
        composer.sourceInformationMarkerEnd();
    }

    @ComposeCompilerApi
    public static final void sourceInformationMarkerStart(Composer composer, int i, String str) {
        composer.sourceInformationMarkerStart(i, str);
    }

    @ComposeCompilerApi
    public static final void traceEventEnd() {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventEnd();
        }
    }

    @ComposeCompilerApi
    public static final void traceEventStart(int i, int i2, int i3, String str) {
        CompositionTracer compositionTracer2 = compositionTracer;
        if (compositionTracer2 != null) {
            compositionTracer2.traceEventStart(i, i2, i3, str);
        }
    }

    public static final <R> void withAfterAnchorInfo(SlotWriter slotWriter, Anchor anchor, bm3<? super Integer, ? super Integer, ? extends R> bm3Var) {
        int iAnchorIndex;
        int slotsSize;
        if (anchor == null || !anchor.getValid()) {
            iAnchorIndex = -1;
            slotsSize = -1;
        } else {
            iAnchorIndex = slotWriter.anchorIndex(GapAnchorKt.asGapAnchor(anchor));
            slotsSize = slotWriter.getSlotsSize() - slotWriter.slotsEndAllIndex$runtime(iAnchorIndex);
        }
        bm3Var.invoke(Integer.valueOf(iAnchorIndex), Integer.valueOf(slotsSize));
    }

    public static final void runtimeCheck(boolean z) {
        if (z) {
            return;
        }
        composeImmediateRuntimeError("Check failed");
    }

    public static final boolean isAfterFirstChild(SlotReader slotReader) {
        return slotReader.getCurrentGroup() > slotReader.getParent() + 1;
    }
}
