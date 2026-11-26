package androidx.compose.runtime.composer.linkbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.LinkRememberObserverHolder;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OffsetApplier;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.composer.linkbuffer.AnchorHandle;
import androidx.compose.runtime.composer.linkbuffer.GroupHandleKt;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchor;
import androidx.compose.runtime.composer.linkbuffer.SlotTable;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditorKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTableKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.muxer.MuxerUtil;
import defpackage.av;
import defpackage.bh1;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ny5;
import defpackage.qz0;
import defpackage.x07;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Operation {
    public static final int $stable = 0;
    private final int ints;
    private final boolean isExternallyVisible;
    private final int objects;

    public static final class AppendValue extends Operation {
        public static final int $stable = 0;
        public static final AppendValue INSTANCE = new AppendValue();

        private AppendValue() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objMo5552getObjectgvac4VY = operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            if (objMo5552getObjectgvac4VY instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) objMo5552getObjectgvac4VY);
            }
            slotTableEditor.appendSlot(objMo5552getObjectgvac4VY);
        }

        /* JADX INFO: renamed from: getValue-s5KIjrA, reason: not valid java name */
        public final int m5508getValues5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "value" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class ApplyChangeList extends Operation {
        public static final int $stable = 0;
        public static final ApplyChangeList INSTANCE = new ApplyChangeList();

        private ApplyChangeList() {
            super(0, 2, false, 1, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            IntRef intRef = (IntRef) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1));
            int element = intRef != null ? intRef.getElement() : 0;
            ChangeList changeList = (ChangeList) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            if (element > 0) {
                applier = new OffsetApplier(applier, element);
            }
            changeList.executeAndFlushAllPendingChanges(applier, slotTableEditor, rememberManager, operationErrorContext != null ? OperationKt.withCurrentStackTrace(operationErrorContext, slotTableEditor) : null);
        }

        /* JADX INFO: renamed from: getChanges-s5KIjrA, reason: not valid java name */
        public final int m5509getChangess5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        /* JADX INFO: renamed from: getEffectiveNodeIndex-s5KIjrA, reason: not valid java name */
        public final int m5510getEffectiveNodeIndexs5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "changes";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "effectiveNodeIndex" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class ClearAllRecompositionRequired extends Operation {
        public static final int $stable = 0;
        public static final ClearAllRecompositionRequired INSTANCE = new ClearAllRecompositionRequired();

        private ClearAllRecompositionRequired() {
            super(0, 0, false, 3, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.removeAllInstancesOfFlags(67108864);
        }
    }

    public static final class CopyNodesToNewAnchorLocation extends Operation {
        public static final int $stable = 0;
        public static final CopyNodesToNewAnchorLocation INSTANCE = new CopyNodesToNewAnchorLocation();

        private CopyNodesToNewAnchorLocation() {
            super(0, 2, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int element = ((IntRef) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).getElement();
            List list = (List) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1));
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                applier.getClass();
                int i2 = element + i;
                applier.insertBottomUp(i2, obj);
                applier.insertTopDown(i2, obj);
            }
        }

        /* JADX INFO: renamed from: getEffectiveNodeIndex-s5KIjrA, reason: not valid java name */
        public final int m5511getEffectiveNodeIndexs5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        /* JADX INFO: renamed from: getNodes-s5KIjrA, reason: not valid java name */
        public final int m5512getNodess5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "effectiveNodeIndex";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "nodes" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class CopySlotTableToHandleLocation extends Operation {
        public static final int $stable = 0;
        public static final CopySlotTableToHandleLocation INSTANCE = new CopySlotTableToHandleLocation();

        private CopySlotTableToHandleLocation() {
            super(0, 4, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(2));
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(3));
            CompositionContext compositionContext = (CompositionContext) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1));
            MovableContentState movableContentStateMovableContentStateResolve$runtime = (MovableContentState) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            if (movableContentStateMovableContentStateResolve$runtime == null && (movableContentStateMovableContentStateResolve$runtime = compositionContext.movableContentStateResolve$runtime(movableContentStateReference)) == null) {
                throw av.b("Could not resolve state for movable content");
            }
            SlotTableEditor slotTableEditorOpenEditor = SlotTableKt.asLinkBufferSlotTable(movableContentStateMovableContentStateResolve$runtime.getSlotStorage$runtime()).openEditor();
            try {
                slotTableEditorOpenEditor.startGroup();
                slotTableEditorOpenEditor.startGroup();
                long jMoveFrom = slotTableEditor.moveFrom(slotTableEditorOpenEditor, slotTableEditorOpenEditor.handle(), (((long) slotTableEditor.firstChildOf(slotTableEditor.getCurrentGroup())) << 32) | MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                slotTableEditorOpenEditor.close();
                SlotTable table = slotTableEditor.getTable();
                int group = GroupHandleKt.getGroup(jMoveFrom);
                ControlledComposition composition$runtime = movableContentStateReference2.getComposition$runtime();
                composition$runtime.getClass();
                SlotTableKt.adoptScopesInGroupToNewParent(table, group, (RecomposeScopeOwner) composition$runtime);
            } catch (Throwable th) {
                slotTableEditorOpenEditor.close();
                throw th;
            }
        }

        /* JADX INFO: renamed from: getFrom-s5KIjrA, reason: not valid java name */
        public final int m5513getFroms5KIjrA() {
            return ObjectParameter.m5530constructorimpl(2);
        }

        /* JADX INFO: renamed from: getParentCompositionContext-s5KIjrA, reason: not valid java name */
        public final int m5514getParentCompositionContexts5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        /* JADX INFO: renamed from: getResolvedState-s5KIjrA, reason: not valid java name */
        public final int m5515getResolvedStates5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        /* JADX INFO: renamed from: getTo-s5KIjrA, reason: not valid java name */
        public final int m5516getTos5KIjrA() {
            return ObjectParameter.m5530constructorimpl(3);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "resolvedState";
            }
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1))) {
                return "resolvedCompositionContext";
            }
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(2))) {
                return "from";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(3)) ? "to" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class DeactivateGroup extends Operation {
        public static final int $stable = 0;
        public static final DeactivateGroup INSTANCE = new DeactivateGroup();

        private DeactivateGroup() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            SlotTableEditorKt.deactivateGroup(slotTableEditor, rememberManager);
        }
    }

    public static final class DetermineMovableContentNodeIndex extends Operation {
        public static final int $stable = 0;
        public static final DetermineMovableContentNodeIndex INSTANCE = new DetermineMovableContentNodeIndex();

        private DetermineMovableContentNodeIndex() {
            super(2, 1, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            IntRef intRef = (IntRef) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            long j = OperationArgContainerKt.getLong(operationArgContainer, 1, 0);
            applier.getClass();
            intRef.setElement(OperationKt.positionToInsert(slotTableEditor, j, applier));
        }

        /* JADX INFO: renamed from: getEffectiveNodeIndexOut-s5KIjrA, reason: not valid java name */
        public final int m5517getEffectiveNodeIndexOuts5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        public final int getGroupHandleHighBits() {
            return 1;
        }

        public final int getGroupHandleLowBits() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "groupHandle[32..63]";
            }
            return i == 1 ? "groupHandle[0..31]" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "effectiveNodeIndexOut" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class DisposeMovableContentState extends Operation {
        public static final int $stable = 0;
        public static final DisposeMovableContentState INSTANCE = new DisposeMovableContentState();

        private DisposeMovableContentState() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((MovableContentState) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).dispose$runtime();
        }

        /* JADX INFO: renamed from: getResolvedState-s5KIjrA, reason: not valid java name */
        public final int m5518getResolvedStates5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "resolvedState" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class Downs extends Operation {
        public static final int $stable = 0;
        public static final Downs INSTANCE = new Downs();

        private Downs() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.getClass();
            for (Object obj : (Object[]) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))) {
                applier.down(obj);
            }
        }

        /* JADX INFO: renamed from: getNodes-s5KIjrA, reason: not valid java name */
        public final int m5519getNodess5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "nodes" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class EndCompositionScope extends Operation {
        public static final int $stable = 0;
        public static final EndCompositionScope INSTANCE = new EndCompositionScope();

        private EndCompositionScope() {
            super(0, 2, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((nl3) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).invoke((Composition) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1)));
        }

        /* JADX INFO: renamed from: getAction-s5KIjrA, reason: not valid java name */
        public final int m5520getActions5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        /* JADX INFO: renamed from: getComposition-s5KIjrA, reason: not valid java name */
        public final int m5521getCompositions5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "anchor";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "composition" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class EndMovableContentPlacement extends Operation {
        public static final int $stable = 0;
        public static final EndMovableContentPlacement INSTANCE = new EndMovableContentPlacement();

        private EndMovableContentPlacement() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            while (slotTableEditor.getParentGroup() >= 0) {
                if (slotTableEditor.isParentGroupANode()) {
                    applier.up();
                }
                slotTableEditor.endGroup();
            }
        }
    }

    public static final class EndResumingScope extends Operation {
        public static final int $stable = 0;
        public static final EndResumingScope INSTANCE = new EndResumingScope();

        private EndResumingScope() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.endResumingScope((RecomposeScopeImpl) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getScope-s5KIjrA, reason: not valid java name */
        public final int m5522getScopes5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "scope" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class InsertNodeFixup extends Operation {
        public static final int $stable = 0;
        public static final InsertNodeFixup INSTANCE = new InsertNodeFixup();

        private InsertNodeFixup() {
            super(3, 1, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objInvoke = ((ll3) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).invoke();
            int i = operationArgContainer.getInt(0);
            int group = GroupHandleKt.getGroup(getGroupHandle(operationArgContainer, slotTableEditor));
            applier.getClass();
            slotTableEditor.updateNode(group, objInvoke);
            applier.insertTopDown(i, objInvoke);
            applier.down(objInvoke);
        }

        /* JADX INFO: renamed from: getFactory-s5KIjrA, reason: not valid java name */
        public final int m5523getFactorys5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public long getGroupHandle(OperationArgContainer operationArgContainer, SlotTableEditor slotTableEditor) {
            return OperationArgContainerKt.getLong(operationArgContainer, 1, 2);
        }

        public final int getGroupHandleHigh() {
            return 1;
        }

        public final int getGroupHandleLow() {
            return 2;
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "insertIndex";
            }
            if (i == 1) {
                return "groupHandleHigh";
            }
            return i == 2 ? "groupHandleLow" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "factory" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class InsertNodeFixupByAnchor extends Operation {
        public static final int $stable = 0;
        public static final InsertNodeFixupByAnchor INSTANCE = new InsertNodeFixupByAnchor();

        private InsertNodeFixupByAnchor() {
            super(1, 2, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objInvoke = ((ll3) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).invoke();
            int i = operationArgContainer.getInt(0);
            int address = ((LinkAnchor) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1))).getAddress();
            applier.getClass();
            slotTableEditor.updateNode(address, objInvoke);
            applier.insertTopDown(i, objInvoke);
            applier.down(objInvoke);
        }

        /* JADX INFO: renamed from: getAnchor-s5KIjrA, reason: not valid java name */
        public final int m5524getAnchors5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        /* JADX INFO: renamed from: getFactory-s5KIjrA, reason: not valid java name */
        public final int m5525getFactorys5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "insertIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "factory";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "anchor" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class InsertSlots extends Operation {
        public static final int $stable = 0;
        public static final InsertSlots INSTANCE = new InsertSlots();

        private InsertSlots() {
            super(2, 1, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            SlotTableEditor.moveFrom$default(slotTableEditor, (SlotTable) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)), OperationArgContainerKt.getLong(operationArgContainer, 0, 1), 0L, 4, (Object) null);
            slotTableEditor.skipGroup();
        }

        /* JADX INFO: renamed from: getFromSlotTable-s5KIjrA, reason: not valid java name */
        public final int m5526getFromSlotTables5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        public final int getSourceHighBits() {
            return 0;
        }

        public final int getSourceLowBits() {
            return 1;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "source[32..63]";
            }
            return i == 1 ? "source[0..31]" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "from" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class InsertSlotsWithFixups extends Operation {
        public static final int $stable = 0;
        public static final InsertSlotsWithFixups INSTANCE = new InsertSlotsWithFixups();

        private InsertSlotsWithFixups() {
            super(2, 2, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationErrorContext operationErrorContextWithCurrentStackTrace;
            SlotTable slotTable = (SlotTable) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            FixupList fixupList = (FixupList) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1));
            SlotTableEditor slotTableEditorOpenEditor = slotTable.openEditor();
            if (operationErrorContext != null) {
                try {
                    operationErrorContextWithCurrentStackTrace = OperationKt.withCurrentStackTrace(operationErrorContext, slotTableEditor);
                } catch (Throwable th) {
                    slotTableEditorOpenEditor.close();
                    throw th;
                }
            } else {
                operationErrorContextWithCurrentStackTrace = null;
            }
            fixupList.executeAndFlushAllPendingFixups(applier, slotTableEditorOpenEditor, rememberManager, operationErrorContextWithCurrentStackTrace);
            j59 j59Var = j59.a;
            slotTableEditorOpenEditor.close();
            SlotTableEditor.moveFrom$default(slotTableEditor, slotTable, OperationArgContainerKt.getLong(operationArgContainer, 0, 1), 0L, 4, (Object) null);
            slotTableEditor.skipGroup();
        }

        /* JADX INFO: renamed from: getFixups-s5KIjrA, reason: not valid java name */
        public final int m5527getFixupss5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        /* JADX INFO: renamed from: getFromSlotTable-s5KIjrA, reason: not valid java name */
        public final int m5528getFromSlotTables5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        public final int getSourceHighBits() {
            return 0;
        }

        public final int getSourceLowBits() {
            return 1;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "sourceHandle[32..63]";
            }
            return i == 1 ? "sourceHandle[0..31]" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "from";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "fixups" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class MoveGroup extends Operation {
        public static final int $stable = 0;
        public static final MoveGroup INSTANCE = new MoveGroup();

        private MoveGroup() {
            super(1, 0, false, 6, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.moveGroup(operationArgContainer.getInt(0));
        }

        public final int getOffset() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? TypedValues.CycleType.S_WAVE_OFFSET : super.intParamName(i);
        }
    }

    public static final class MoveNode extends Operation {
        public static final int $stable = 0;
        public static final MoveNode INSTANCE = new MoveNode();

        private MoveNode() {
            super(3, 0, false, 6, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.move(operationArgContainer.getInt(0), operationArgContainer.getInt(1), operationArgContainer.getInt(2));
        }

        public final int getCount() {
            return 2;
        }

        public final int getFrom() {
            return 0;
        }

        public final int getTo() {
            return 1;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "from";
            }
            if (i == 1) {
                return "to";
            }
            return i == 2 ? "count" : super.intParamName(i);
        }
    }

    public static final class ObjectParameter<T> {
        private final int offset;

        private /* synthetic */ ObjectParameter(int i) {
            this.offset = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ ObjectParameter m5529boximpl(int i) {
            return new ObjectParameter(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static <T> int m5530constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5531equalsimpl(int i, Object obj) {
            return (obj instanceof ObjectParameter) && i == ((ObjectParameter) obj).m5535unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5532equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5533hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5534toStringimpl(int i) {
            return qz0.d("ObjectParameter(offset=", i, ')');
        }

        public boolean equals(Object obj) {
            return m5531equalsimpl(this.offset, obj);
        }

        public final int getOffset() {
            return this.offset;
        }

        public int hashCode() {
            return m5533hashCodeimpl(this.offset);
        }

        public String toString() {
            return m5534toStringimpl(this.offset);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m5535unboximpl() {
            return this.offset;
        }
    }

    public static final class PostInsertNodeFixup extends Operation {
        public static final int $stable = 0;
        public static final PostInsertNodeFixup INSTANCE = new PostInsertNodeFixup();

        private PostInsertNodeFixup() {
            super(3, 0, false, 6, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = operationArgContainer.getInt(0);
            int group = GroupHandleKt.getGroup(OperationArgContainerKt.getLong(operationArgContainer, 1, 2));
            applier.up();
            applier.insertBottomUp(i, slotTableEditor.node(group));
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public long getGroupHandle(OperationArgContainer operationArgContainer, SlotTableEditor slotTableEditor) {
            return OperationArgContainerKt.getLong(operationArgContainer, 1, 2);
        }

        public final int getGroupHandleHigh() {
            return 1;
        }

        public final int getGroupHandleLow() {
            return 2;
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "insertIndex";
            }
            if (i == 1) {
                return "groupHandleHigh";
            }
            return i == 2 ? "groupHandleLow" : super.intParamName(i);
        }
    }

    public static final class PostInsertNodeFixupByAnchor extends Operation {
        public static final int $stable = 0;
        public static final PostInsertNodeFixupByAnchor INSTANCE = new PostInsertNodeFixupByAnchor();

        private PostInsertNodeFixupByAnchor() {
            super(1, 1, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = operationArgContainer.getInt(0);
            int address = ((LinkAnchor) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).getAddress();
            applier.up();
            applier.insertBottomUp(i, slotTableEditor.node(address));
        }

        /* JADX INFO: renamed from: getAnchor-s5KIjrA, reason: not valid java name */
        public final int m5536getAnchors5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "insertIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "anchor" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class ReleaseMovableGroup extends Operation {
        public static final int $stable = 0;
        public static final ReleaseMovableGroup INSTANCE = new ReleaseMovableGroup();

        private ReleaseMovableGroup() {
            super(0, 3, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationKt.releaseMovableGroup((ControlledComposition) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)), (CompositionContext) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1)), (MovableContentStateReference) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(2)), slotTableEditor, applier);
        }

        /* JADX INFO: renamed from: getComposition-s5KIjrA, reason: not valid java name */
        public final int m5537getCompositions5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        /* JADX INFO: renamed from: getParentCompositionContext-s5KIjrA, reason: not valid java name */
        public final int m5538getParentCompositionContexts5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        /* JADX INFO: renamed from: getReference-s5KIjrA, reason: not valid java name */
        public final int m5539getReferences5KIjrA() {
            return ObjectParameter.m5530constructorimpl(2);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "composition";
            }
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1))) {
                return "parentCompositionContext";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(2)) ? TypedValues.Custom.S_REFERENCE : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class Remember extends Operation {
        public static final int $stable = 0;
        public static final Remember INSTANCE = new Remember();

        private Remember() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.remembering((RememberObserverHolder) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getValue-s5KIjrA, reason: not valid java name */
        public final int m5540getValues5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "value" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class RememberPausingScope extends Operation {
        public static final int $stable = 0;
        public static final RememberPausingScope INSTANCE = new RememberPausingScope();

        private RememberPausingScope() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.rememberPausingScope((RecomposeScopeImpl) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getScope-s5KIjrA, reason: not valid java name */
        public final int m5541getScopes5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "scope" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class RemoveGroup extends Operation {
        public static final int $stable = 0;
        public static final RemoveGroup INSTANCE = new RemoveGroup();

        private RemoveGroup() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            SlotTableEditorKt.removeGroupAndForgetSlots(slotTableEditor, rememberManager);
        }
    }

    public static final class RemoveNode extends Operation {
        public static final int $stable = 0;
        public static final RemoveNode INSTANCE = new RemoveNode();

        private RemoveNode() {
            super(2, 0, false, 6, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.remove(operationArgContainer.getInt(0), operationArgContainer.getInt(1));
        }

        public final int getCount() {
            return 1;
        }

        public final int getRemoveIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "removeIndex";
            }
            return i == 1 ? "count" : super.intParamName(i);
        }
    }

    public static final class RemoveTailGroupsAndValues extends Operation {
        public static final int $stable = 0;
        public static final RemoveTailGroupsAndValues INSTANCE = new RemoveTailGroupsAndValues();

        private RemoveTailGroupsAndValues() {
            super(2, 0, false, 6, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean execute$lambda$0(RememberManager rememberManager, int i, int i2, Object obj) {
            if (obj instanceof ComposeNodeLifecycleCallback) {
                ((ComposeNodeLifecycleCallback) obj).onRelease();
                return false;
            }
            if (obj instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) obj);
                return false;
            }
            if (!(obj instanceof RecomposeScopeImpl)) {
                return false;
            }
            ((RecomposeScopeImpl) obj).release();
            return false;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = operationArgContainer.getInt(1);
            int i2 = operationArgContainer.getInt(0);
            slotTableEditor.visitTailSlotsInRememberOrder$runtime(slotTableEditor.getParentGroup(), i2, i, new bh1(rememberManager, 2));
            slotTableEditor.trimSlots(i);
            while (slotTableEditor.getCurrentGroup() != i2) {
                slotTableEditor.skipGroup();
            }
            while (slotTableEditor.getCurrentGroup() >= 0) {
                slotTableEditor.removeGroup(true);
            }
        }

        public final int getFirstTailGroupToRemove() {
            return 0;
        }

        public final int getTailSlotCount() {
            return 1;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "firstTailGroupToRemove";
            }
            return i == 1 ? "tailSlotCount" : super.intParamName(i);
        }
    }

    public static final class ResetSlots extends Operation {
        public static final int $stable = 0;
        public static final ResetSlots INSTANCE = new ResetSlots();

        private ResetSlots() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.reset();
        }
    }

    public static final class SeekToAnchor extends Operation {
        public static final int $stable = 0;
        public static final SeekToAnchor INSTANCE = new SeekToAnchor();

        private SeekToAnchor() {
            super(0, 1, false, 1, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.seek(((AnchorHandle) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0))).toHandle());
        }

        /* JADX INFO: renamed from: getAnchorHandle-s5KIjrA, reason: not valid java name */
        public final int m5542getAnchorHandles5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "anchorHandle" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class SeekToGroupHandle extends Operation {
        public static final int $stable = 0;
        public static final SeekToGroupHandle INSTANCE = new SeekToGroupHandle();

        private SeekToGroupHandle() {
            super(2, 0, false, 2, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.seek(OperationArgContainerKt.getLong(operationArgContainer, 0, 1));
        }

        public final int getGroupHandleHighBits() {
            return 0;
        }

        public final int getGroupHandleLowBits() {
            return 1;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "group[32..63]";
            }
            return i == 1 ? "group[0..31]" : super.intParamName(i);
        }
    }

    public static final class SideEffect extends Operation {
        public static final int $stable = 0;
        public static final SideEffect INSTANCE = new SideEffect();

        private SideEffect() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.sideEffect((ll3) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getEffect-s5KIjrA, reason: not valid java name */
        public final int m5543getEffects5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "effect" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class SkipGroup extends Operation {
        public static final int $stable = 0;
        public static final SkipGroup INSTANCE = new SkipGroup();

        private SkipGroup() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.skipGroup();
        }
    }

    public static final class StartGroup extends Operation {
        public static final int $stable = 0;
        public static final StartGroup INSTANCE = new StartGroup();

        private StartGroup() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.startGroup();
        }
    }

    public static final class StartResumingScope extends Operation {
        public static final int $stable = 0;
        public static final StartResumingScope INSTANCE = new StartResumingScope();

        private StartResumingScope() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.startResumingScope((RecomposeScopeImpl) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getScope-s5KIjrA, reason: not valid java name */
        public final int m5544getScopes5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "scope" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class UpdateAuxData extends Operation {
        public static final int $stable = 0;
        public static final UpdateAuxData INSTANCE = new UpdateAuxData();

        private UpdateAuxData() {
            super(0, 1, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotTableEditor.updateAux(operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getData-s5KIjrA, reason: not valid java name */
        public final int m5545getDatas5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "data" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class UpdateNode extends Operation {
        public static final int $stable = 0;
        public static final UpdateNode INSTANCE = new UpdateNode();

        private UpdateNode() {
            super(0, 2, false, 5, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.apply((bm3) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1)), operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getBlock-s5KIjrA, reason: not valid java name */
        public final int m5546getBlocks5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        /* JADX INFO: renamed from: getValue-s5KIjrA, reason: not valid java name */
        public final int m5547getValues5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return "value";
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "block" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class UpdateRememberObserverHolderOrdering extends Operation {
        public static final int $stable = 0;
        public static final UpdateRememberObserverHolderOrdering INSTANCE = new UpdateRememberObserverHolderOrdering();

        private UpdateRememberObserverHolderOrdering() {
            super(0, 2, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((LinkRememberObserverHolder) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(1))).setAfter((LinkAnchor) operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getAfter-s5KIjrA, reason: not valid java name */
        public final int m5548getAfters5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        /* JADX INFO: renamed from: getHolder-s5KIjrA, reason: not valid java name */
        public final int m5549getHolders5KIjrA() {
            return ObjectParameter.m5530constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            if (ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0))) {
                return TtmlNode.ANNOTATION_POSITION_AFTER;
            }
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(1)) ? "rememberObserverHolder" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class UpdateValue extends Operation {
        public static final int $stable = 0;
        public static final UpdateValue INSTANCE = new UpdateValue();

        private UpdateValue() {
            super(1, 1, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objMo5552getObjectgvac4VY = operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            int i = operationArgContainer.getInt(0);
            if (objMo5552getObjectgvac4VY instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) objMo5552getObjectgvac4VY);
            }
            Object absolute = slotTableEditor.setAbsolute(i, objMo5552getObjectgvac4VY);
            if (absolute instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) absolute);
            } else if (absolute instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) absolute).release();
            }
        }

        public final int getSlotAddress() {
            return 0;
        }

        /* JADX INFO: renamed from: getValue-s5KIjrA, reason: not valid java name */
        public final int m5550getValues5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "slotAddress" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "value" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class UpdateValueRelative extends Operation {
        public static final int $stable = 0;
        public static final UpdateValueRelative INSTANCE = new UpdateValueRelative();

        private UpdateValueRelative() {
            super(1, 1, false, 4, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objMo5552getObjectgvac4VY = operationArgContainer.mo5552getObjectgvac4VY(ObjectParameter.m5530constructorimpl(0));
            int i = operationArgContainer.getInt(0);
            if (objMo5552getObjectgvac4VY instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) objMo5552getObjectgvac4VY);
            }
            Object relative = slotTableEditor.setRelative(i, objMo5552getObjectgvac4VY);
            if (relative instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) relative);
            } else if (relative instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) relative).release();
            }
        }

        public final int getSlotIndex() {
            return 0;
        }

        /* JADX INFO: renamed from: getValue-s5KIjrA, reason: not valid java name */
        public final int m5551getValues5KIjrA() {
            return ObjectParameter.m5530constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "slotIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-gvac4VY */
        public String mo5507objectParamNamegvac4VY(int i) {
            return ObjectParameter.m5532equalsimpl0(i, ObjectParameter.m5530constructorimpl(0)) ? "value" : super.mo5507objectParamNamegvac4VY(i);
        }
    }

    public static final class Ups extends Operation {
        public static final int $stable = 0;
        public static final Ups INSTANCE = new Ups();

        private Ups() {
            super(1, 0, false, 6, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = operationArgContainer.getInt(0);
            for (int i2 = 0; i2 < i; i2++) {
                applier.up();
            }
        }

        public final int getCount() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "count" : super.intParamName(i);
        }
    }

    public static final class UseCurrentNode extends Operation {
        public static final int $stable = 0;
        public static final UseCurrentNode INSTANCE = new UseCurrentNode();

        private UseCurrentNode() {
            super(0, 0, false, 7, null);
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.reuse();
        }
    }

    public /* synthetic */ Operation(int i, int i2, boolean z, int i3, jh2 jh2Var) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? true : z, null);
    }

    public abstract void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext);

    public final void executeWithComposeStackTrace(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        long groupHandle = getGroupHandle(operationArgContainer, slotTableEditor);
        try {
            execute(operationArgContainer, applier, slotTableEditor, rememberManager, operationErrorContext);
        } catch (Throwable th) {
            throw OperationKt.attachComposeStackTrace(th, operationErrorContext, slotTableEditor, groupHandle);
        }
    }

    public long getGroupHandle(OperationArgContainer operationArgContainer, SlotTableEditor slotTableEditor) {
        return -1L;
    }

    public final int getInts() {
        return this.ints;
    }

    public final String getName() {
        String strF = x07.a(getClass()).f();
        return strF == null ? "" : strF;
    }

    public final int getObjects() {
        return this.objects;
    }

    public String intParamName(int i) {
        return qz0.d("IntParameter(", i, ')');
    }

    public final boolean isExternallyVisible() {
        return this.isExternallyVisible;
    }

    /* JADX INFO: renamed from: objectParamName-gvac4VY, reason: not valid java name */
    public String mo5507objectParamNamegvac4VY(int i) {
        return qz0.d("ObjectParameter(", i, ')');
    }

    public String toString() {
        return getName();
    }

    private Operation(int i, int i2, boolean z) {
        this.ints = i;
        this.objects = i2;
        this.isExternallyVisible = z;
    }

    public /* synthetic */ Operation(int i, int i2, boolean z, jh2 jh2Var) {
        this(i, i2, z);
    }

    public static final class TestOperation extends Operation {
        public static final int $stable = 8;
        private final dm3<Applier<?>, SlotTableEditor, RememberManager, j59> block;
        private final List<Integer> intParams;
        private final List<ObjectParameter<Object>> objParams;

        /* JADX WARN: Multi-variable type inference failed */
        public TestOperation(int i, int i2, dm3<? super Applier<?>, ? super SlotTableEditor, ? super RememberManager, j59> dm3Var) {
            super(i, i2, false, 4, null);
            this.block = dm3Var;
            ArrayList arrayList = new ArrayList(i);
            for (int i3 = 0; i3 < i; i3++) {
                arrayList.add(Integer.valueOf(i3));
            }
            this.intParams = arrayList;
            ArrayList arrayList2 = new ArrayList(i2);
            for (int i4 = 0; i4 < i2; i4++) {
                arrayList2.add(ObjectParameter.m5529boximpl(ObjectParameter.m5530constructorimpl(i4)));
            }
            this.objParams = arrayList2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 _init_$lambda$0(Applier applier, SlotTableEditor slotTableEditor, RememberManager rememberManager) {
            return j59.a;
        }

        public static /* synthetic */ void getIntParams$annotations() {
        }

        public static /* synthetic */ void getObjParams$annotations() {
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            this.block.invoke(applier, slotTableEditor, rememberManager);
        }

        public final dm3<Applier<?>, SlotTableEditor, RememberManager, j59> getBlock() {
            return this.block;
        }

        public final List<Integer> getIntParams() {
            return this.intParams;
        }

        public final List<ObjectParameter<Object>> getObjParams() {
            return this.objParams;
        }

        @Override // androidx.compose.runtime.composer.linkbuffer.changelist.Operation
        public String toString() {
            return "TestOperation(ints = " + getInts() + ", objects = " + getObjects() + ")@" + System_jvmKt.identityHashCode(this);
        }

        public TestOperation() {
            this(0, 0, null, 7, null);
        }

        public /* synthetic */ TestOperation(int i, int i2, dm3 dm3Var, int i3, jh2 jh2Var) {
            this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? new ny5() : dm3Var);
        }
    }
}
