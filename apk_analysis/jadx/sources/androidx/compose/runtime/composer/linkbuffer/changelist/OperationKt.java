package androidx.compose.runtime.composer.linkbuffer.changelist;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.InvalidationResult;
import androidx.compose.runtime.MovableContent;
import androidx.compose.runtime.MovableContentKt;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.ScopeInvalidated;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.composer.linkbuffer.GroupHandleKt;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchorKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTable;
import androidx.compose.runtime.composer.linkbuffer.SlotTableBuilder;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditorKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTableKt;
import androidx.compose.runtime.composer.linkbuffer.changelist.OperationKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import androidx.compose.runtime.tooling.ComposeStackTraceKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.h2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.qn1;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class OperationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable attachComposeStackTrace(Throwable th, final OperationErrorContext operationErrorContext, final SlotTableEditor slotTableEditor, final long j) {
        return operationErrorContext == null ? th : ComposeStackTraceKt.attachComposeStackTrace(th, new ll3() { // from class: yy5
            @Override // defpackage.ll3
            public final Object invoke() {
                return OperationKt.attachComposeStackTrace$lambda$0(j, slotTableEditor, operationErrorContext);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComposeStackTrace attachComposeStackTrace$lambda$0(long j, SlotTableEditor slotTableEditor, OperationErrorContext operationErrorContext) {
        if (j != -1) {
            slotTableEditor.seek(j);
        }
        List listBuildTrace$default = SlotTableEditorKt.buildTrace$default(slotTableEditor, null, 0, 3, null);
        ComposeStackTraceFrame composeStackTraceFrame = (ComposeStackTraceFrame) qn1.c0(listBuildTrace$default);
        Integer groupOffset = composeStackTraceFrame != null ? composeStackTraceFrame.getGroupOffset() : null;
        List<ComposeStackTraceFrame> listBuildStackTrace = operationErrorContext.buildStackTrace(groupOffset);
        if (groupOffset != null && !listBuildStackTrace.isEmpty()) {
            listBuildStackTrace = qn1.h0(qn1.O(listBuildStackTrace, 1), u96.h(ComposeStackTraceFrame.copy$default((ComposeStackTraceFrame) qn1.T(listBuildStackTrace), 0, null, groupOffset, 3, null)));
        }
        return new ComposeStackTrace(qn1.h0(listBuildStackTrace, listBuildTrace$default), operationErrorContext.getSourceInformationEnabled());
    }

    private static final int nodeIndex(SlotTableEditor slotTableEditor, int i) {
        if (i < 0) {
            return 0;
        }
        SlotTable table = slotTableEditor.getTable();
        int[] groups = table.getAddressSpace().getGroups();
        int i2 = i;
        int i3 = i2;
        int iNodeCountOf = 0;
        while (i2 > 0) {
            if (slotTableEditor.isNode(i2)) {
                return iNodeCountOf;
            }
            int iParentOf = slotTableEditor.parentOf(i2);
            int[] groups2 = table.getAddressSpace().getGroups();
            for (int root = iParentOf < 0 ? table.getRoot() : slotTableEditor.firstChildOf(iParentOf); root >= 0 && root != i3; root = groups2[root + 1]) {
                iNodeCountOf += slotTableEditor.nodeCountOf(root);
            }
            i2 = groups[i2 + 2];
            i3 = iParentOf;
        }
        if (!(i2 != 0)) {
            h2.b(i, "Traversing parent of group not in the slot table: ");
        }
        return iNodeCountOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int positionToInsert(SlotTableEditor slotTableEditor, long j, Applier<Object> applier) {
        positionToParentOf(slotTableEditor, applier, j);
        int parentGroup = slotTableEditor.getParentGroup();
        int group = GroupHandleKt.getGroup(j);
        IntStack intStack = new IntStack();
        int[] groups = slotTableEditor.getTable().getAddressSpace().getGroups();
        int i = group;
        while (true) {
            if (i <= 0) {
                if (!(i != 0)) {
                    h2.b(group, "Traversing parent of group not in the slot table: ");
                    break;
                }
                break;
            }
            if (i == parentGroup) {
                break;
            }
            intStack.push(i);
            i = groups[i + 2];
        }
        if (!(slotTableEditor.getParentGroup() == parentGroup)) {
            ComposerKt.composeImmediateRuntimeError("Unexpected slot table structure when inserting movable content");
        }
        int currentGroup = slotTableEditor.getCurrentGroup();
        int iSkipGroup = 0;
        boolean z = false;
        while (slotTableEditor.getCurrentGroup() != group) {
            if (intStack.tos == 0 || slotTableEditor.getCurrentGroup() != intStack.peek()) {
                iSkipGroup += slotTableEditor.skipGroup();
            } else {
                if (slotTableEditor.isNode()) {
                    applier.down(slotTableEditor.getNode());
                    z = true;
                    iSkipGroup = 0;
                }
                slotTableEditor.startGroup();
                intStack.pop();
            }
        }
        return iSkipGroup + (z ? 0 : nodeIndex(slotTableEditor, currentGroup));
    }

    private static final void positionToParentOf(SlotTableEditor slotTableEditor, Applier<Object> applier, long j) {
        if (slotTableEditor.getParentGroup() >= 0) {
            MutableIntSet mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
            SlotTable table = slotTableEditor.getTable();
            int iParentOf = slotTableEditor.parentOf(GroupHandleKt.getGroup(j));
            int[] groups = table.getAddressSpace().getGroups();
            int i = iParentOf;
            while (i > 0) {
                mutableIntSetMutableIntSetOf.add(i);
                i = groups[i + 2];
            }
            if (!(i != 0)) {
                h2.b(iParentOf, "Traversing parent of group not in the slot table: ");
            }
            while (slotTableEditor.getParentGroup() >= 0 && !mutableIntSetMutableIntSetOf.contains(slotTableEditor.getParentGroup())) {
                if (slotTableEditor.isParentGroupANode()) {
                    applier.up();
                }
                slotTableEditor.endGroup();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseMovableGroup(final ControlledComposition controlledComposition, CompositionContext compositionContext, final MovableContentStateReference movableContentStateReference, SlotTableEditor slotTableEditor, Applier<?> applier) {
        SlotTable table = slotTableEditor.getTable();
        SlotTable.Companion companion = SlotTable.Companion;
        SlotTableBuilder slotTableBuilder = new SlotTableBuilder(table.getAddressSpace(), false, false);
        slotTableBuilder.buildStart();
        MovableContent<Object> content$runtime = movableContentStateReference.getContent$runtime();
        slotTableBuilder.startNewGroup(MovableContentKt.movableContentKey, content$runtime != Composer.Companion.getEmpty() ? 16777216 : 0, content$runtime, null, null);
        slotTableBuilder.addFlags(268435456);
        slotTableBuilder.append(movableContentStateReference.getParameter$runtime());
        slotTableBuilder.moveFrom(slotTableEditor, ((long) slotTableEditor.getTable().getAddressSpace().getGroups()[LinkAnchorKt.asLinkAnchor(movableContentStateReference.getAnchor$runtime()).getAddress() + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        slotTableBuilder.endGroup();
        SlotTable slotTableBuild = slotTableBuilder.build();
        MovableContentState movableContentState = new MovableContentState(slotTableBuild);
        if (slotTableBuild.hasRecomposeScopes(slotTableBuild.getRoot())) {
            SlotTableKt.adoptScopesInGroupToNewParent(slotTableBuild, slotTableBuild.getRoot(), new RecomposeScopeOwner() { // from class: androidx.compose.runtime.composer.linkbuffer.changelist.OperationKt$releaseMovableGroup$movableContentRecomposeScopeOwner$1
                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public InvalidationResult invalidate(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
                    InvalidationResult invalidationResultInvalidate;
                    ControlledComposition controlledComposition2 = controlledComposition;
                    RecomposeScopeOwner recomposeScopeOwner = controlledComposition2 instanceof RecomposeScopeOwner ? (RecomposeScopeOwner) controlledComposition2 : null;
                    if (recomposeScopeOwner == null || (invalidationResultInvalidate = recomposeScopeOwner.invalidate(recomposeScopeImpl, obj)) == null) {
                        invalidationResultInvalidate = InvalidationResult.IGNORED;
                    }
                    if (invalidationResultInvalidate != InvalidationResult.IGNORED) {
                        return invalidationResultInvalidate;
                    }
                    MovableContentStateReference movableContentStateReference2 = movableContentStateReference;
                    List<b36<RecomposeScopeImpl, Object>> invalidations$runtime = movableContentStateReference2.getInvalidations$runtime();
                    if (obj == null) {
                        obj = ScopeInvalidated.INSTANCE;
                    }
                    movableContentStateReference2.setInvalidations$runtime(qn1.i0(new b36(recomposeScopeImpl, obj), invalidations$runtime));
                    return InvalidationResult.SCHEDULED;
                }

                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public void recomposeScopeReleased(RecomposeScopeImpl recomposeScopeImpl) {
                }

                @Override // androidx.compose.runtime.RecomposeScopeOwner
                public void recordReadOf(Object obj) {
                }
            });
        }
        compositionContext.movableContentStateReleased$runtime(movableContentStateReference, movableContentState, applier);
    }

    private static final void withCurrentStackTrace(OperationErrorContext operationErrorContext, SlotTableEditor slotTableEditor, long j, ll3<j59> ll3Var) throws Throwable {
        try {
            ll3Var.invoke();
        } catch (Throwable th) {
            throw attachComposeStackTrace(th, operationErrorContext, slotTableEditor, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OperationErrorContext withCurrentStackTrace(final OperationErrorContext operationErrorContext, final SlotTableEditor slotTableEditor) {
        return new OperationErrorContext() { // from class: androidx.compose.runtime.composer.linkbuffer.changelist.OperationKt.withCurrentStackTrace.1
            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
            public List<ComposeStackTraceFrame> buildStackTrace(Integer num) {
                List<ComposeStackTraceFrame> listBuildStackTrace = operationErrorContext.buildStackTrace(null);
                int parentGroup = slotTableEditor.getParentGroup();
                if (parentGroup < 0) {
                    return listBuildStackTrace;
                }
                return qn1.h0(listBuildStackTrace, SlotTableEditorKt.buildTrace(slotTableEditor, num, parentGroup));
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
            public boolean getSourceInformationEnabled() {
                return operationErrorContext.getSourceInformationEnabled();
            }
        };
    }
}
