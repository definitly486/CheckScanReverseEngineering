package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OffsetApplier;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.av;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.oy5;
import defpackage.qz0;
import defpackage.x07;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Operation {
    public static final int $stable = 0;
    private final int ints;
    private final int objects;

    public static final class AdvanceSlotsBy extends Operation {
        public static final int $stable = 0;
        public static final AdvanceSlotsBy INSTANCE = new AdvanceSlotsBy();

        private AdvanceSlotsBy() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.advanceBy(operationArgContainer.getInt(0));
        }

        public final int getDistance() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "distance" : super.intParamName(i);
        }
    }

    public static final class AppendValue extends Operation {
        public static final int $stable = 0;
        public static final AppendValue INSTANCE = new AppendValue();

        private AppendValue() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            Object objMo5489getObjectPtLUHM = operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            if (objMo5489getObjectPtLUHM instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) objMo5489getObjectPtLUHM);
            }
            slotWriter.appendSlot(gapAnchor, objMo5489getObjectPtLUHM);
        }

        /* JADX INFO: renamed from: getAnchor-w8_IdGo, reason: not valid java name */
        public final int m5444getAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getValue-w8_IdGo, reason: not valid java name */
        public final int m5445getValuew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "anchor";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "value" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class ApplyChangeList extends Operation {
        public static final int $stable = 0;
        public static final ApplyChangeList INSTANCE = new ApplyChangeList();

        private ApplyChangeList() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            IntRef intRef = (IntRef) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            int element = intRef != null ? intRef.getElement() : 0;
            ChangeList changeList = (ChangeList) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            if (element > 0) {
                applier = new OffsetApplier(applier, element);
            }
            changeList.executeAndFlushAllPendingChanges(applier, slotWriter, rememberManager, operationErrorContext != null ? OperationKt.withCurrentStackTrace(operationErrorContext, slotWriter) : null);
        }

        /* JADX INFO: renamed from: getChanges-w8_IdGo, reason: not valid java name */
        public final int m5446getChangesw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getEffectiveNodeIndex-w8_IdGo, reason: not valid java name */
        public final int m5447getEffectiveNodeIndexw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "changes";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "effectiveNodeIndex" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class CopyNodesToNewAnchorLocation extends Operation {
        public static final int $stable = 0;
        public static final CopyNodesToNewAnchorLocation INSTANCE = new CopyNodesToNewAnchorLocation();

        private CopyNodesToNewAnchorLocation() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int element = ((IntRef) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0))).getElement();
            List list = (List) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                applier.getClass();
                int i2 = element + i;
                applier.insertBottomUp(i2, obj);
                applier.insertTopDown(i2, obj);
            }
        }

        /* JADX INFO: renamed from: getEffectiveNodeIndex-w8_IdGo, reason: not valid java name */
        public final int m5448getEffectiveNodeIndexw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getNodes-w8_IdGo, reason: not valid java name */
        public final int m5449getNodesw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "effectiveNodeIndex";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "nodes" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class CopySlotTableToAnchorLocation extends Operation {
        public static final int $stable = 0;
        public static final CopySlotTableToAnchorLocation INSTANCE = new CopySlotTableToAnchorLocation();

        private CopySlotTableToAnchorLocation() {
            super(0, 4, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(2));
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(3));
            CompositionContext compositionContext = (CompositionContext) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            MovableContentState movableContentStateMovableContentStateResolve$runtime = (MovableContentState) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            if (movableContentStateMovableContentStateResolve$runtime == null && (movableContentStateMovableContentStateResolve$runtime = compositionContext.movableContentStateResolve$runtime(movableContentStateReference)) == null) {
                throw av.b("Could not resolve state for movable content");
            }
            List<GapAnchor> listMoveIntoGroupFrom = slotWriter.moveIntoGroupFrom(1, SlotTableKt.asGapBufferSlotTable(movableContentStateMovableContentStateResolve$runtime.getSlotStorage$runtime()), 2);
            RecomposeScopeImpl.Companion companion = RecomposeScopeImpl.Companion;
            ControlledComposition composition$runtime = movableContentStateReference2.getComposition$runtime();
            composition$runtime.getClass();
            companion.adoptAnchoredScopes$runtime(slotWriter, listMoveIntoGroupFrom, (RecomposeScopeOwner) composition$runtime);
        }

        /* JADX INFO: renamed from: getFrom-w8_IdGo, reason: not valid java name */
        public final int m5450getFromw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(2);
        }

        /* JADX INFO: renamed from: getParentCompositionContext-w8_IdGo, reason: not valid java name */
        public final int m5451getParentCompositionContextw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        /* JADX INFO: renamed from: getResolvedState-w8_IdGo, reason: not valid java name */
        public final int m5452getResolvedStatew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getTo-w8_IdGo, reason: not valid java name */
        public final int m5453getTow8_IdGo() {
            return ObjectParameter.m5469constructorimpl(3);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "resolvedState";
            }
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1))) {
                return "resolvedCompositionContext";
            }
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(2))) {
                return "from";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(3)) ? "to" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class DeactivateCurrentGroup extends Operation {
        public static final int $stable = 0;
        public static final DeactivateCurrentGroup INSTANCE = new DeactivateCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        private DeactivateCurrentGroup() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapComposerKt.deactivateCurrentGroup(slotWriter, rememberManager);
        }
    }

    public static final class DetermineMovableContentNodeIndex extends Operation {
        public static final int $stable = 0;
        public static final DetermineMovableContentNodeIndex INSTANCE = new DetermineMovableContentNodeIndex();

        private DetermineMovableContentNodeIndex() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            IntRef intRef = (IntRef) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            applier.getClass();
            intRef.setElement(OperationKt.positionToInsert(slotWriter, gapAnchor, applier));
        }

        /* JADX INFO: renamed from: getAnchor-w8_IdGo, reason: not valid java name */
        public final int m5454getAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        /* JADX INFO: renamed from: getEffectiveNodeIndexOut-w8_IdGo, reason: not valid java name */
        public final int m5455getEffectiveNodeIndexOutw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "effectiveNodeIndexOut";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "anchor" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class Downs extends Operation {
        public static final int $stable = 0;
        public static final Downs INSTANCE = new Downs();

        /* JADX WARN: Illegal instructions before constructor call */
        private Downs() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.getClass();
            for (Object obj : (Object[]) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0))) {
                applier.down(obj);
            }
        }

        /* JADX INFO: renamed from: getNodes-w8_IdGo, reason: not valid java name */
        public final int m5456getNodesw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "nodes" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class EndCompositionScope extends Operation {
        public static final int $stable = 0;
        public static final EndCompositionScope INSTANCE = new EndCompositionScope();

        private EndCompositionScope() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ((nl3) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0))).invoke((Composition) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1)));
        }

        /* JADX INFO: renamed from: getAction-w8_IdGo, reason: not valid java name */
        public final int m5457getActionw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getComposition-w8_IdGo, reason: not valid java name */
        public final int m5458getCompositionw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "anchor";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "composition" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class EndCurrentGroup extends Operation {
        public static final int $stable = 0;
        public static final EndCurrentGroup INSTANCE = new EndCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        private EndCurrentGroup() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.endGroup();
        }
    }

    public static final class EndMovableContentPlacement extends Operation {
        public static final int $stable = 0;
        public static final EndMovableContentPlacement INSTANCE = new EndMovableContentPlacement();

        /* JADX WARN: Illegal instructions before constructor call */
        private EndMovableContentPlacement() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.getClass();
            OperationKt.positionToParentOf(slotWriter, applier, 0);
            slotWriter.endGroup();
        }
    }

    public static final class EndResumingScope extends Operation {
        public static final int $stable = 0;
        public static final EndResumingScope INSTANCE = new EndResumingScope();

        /* JADX WARN: Illegal instructions before constructor call */
        private EndResumingScope() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.endResumingScope((RecomposeScopeImpl) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getScope-w8_IdGo, reason: not valid java name */
        public final int m5459getScopew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "scope" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class EnsureGroupStarted extends Operation {
        public static final int $stable = 0;
        public static final EnsureGroupStarted INSTANCE = new EnsureGroupStarted();

        /* JADX WARN: Illegal instructions before constructor call */
        private EnsureGroupStarted() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.ensureStarted((GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getAnchor-w8_IdGo, reason: not valid java name */
        public final int m5460getAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "anchor" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class EnsureRootGroupStarted extends Operation {
        public static final int $stable = 0;
        public static final EnsureRootGroupStarted INSTANCE = new EnsureRootGroupStarted();

        /* JADX WARN: Illegal instructions before constructor call */
        private EnsureRootGroupStarted() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.ensureStarted(0);
        }
    }

    public static final class InsertNodeFixup extends Operation {
        public static final int $stable = 0;
        public static final InsertNodeFixup INSTANCE = new InsertNodeFixup();

        private InsertNodeFixup() {
            super(1, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objInvoke = ((ll3) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0))).invoke();
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            int i = operationArgContainer.getInt(0);
            applier.getClass();
            slotWriter.updateNode(gapAnchor, objInvoke);
            applier.insertTopDown(i, objInvoke);
            applier.down(objInvoke);
        }

        /* JADX INFO: renamed from: getFactory-w8_IdGo, reason: not valid java name */
        public final int m5461getFactoryw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public GapAnchor getGroupAnchor(OperationArgContainer operationArgContainer, SlotWriter slotWriter) {
            return (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
        }

        /* JADX INFO: renamed from: getGroupAnchor-w8_IdGo, reason: not valid java name */
        public final int m5462getGroupAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "insertIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "factory";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "groupAnchor" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class InsertSlots extends Operation {
        public static final int $stable = 0;
        public static final InsertSlots INSTANCE = new InsertSlots();

        private InsertSlots() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            SlotTable slotTable = (SlotTable) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            slotWriter.beginInsert();
            slotWriter.moveFrom(slotTable, gapAnchor.toIndexFor(slotTable), false);
            slotWriter.endInsert();
        }

        /* JADX INFO: renamed from: getAnchor-w8_IdGo, reason: not valid java name */
        public final int m5463getAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getFromSlotTable-w8_IdGo, reason: not valid java name */
        public final int m5464getFromSlotTablew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "anchor";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "from" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class InsertSlotsWithFixups extends Operation {
        public static final int $stable = 0;
        public static final InsertSlotsWithFixups INSTANCE = new InsertSlotsWithFixups();

        private InsertSlotsWithFixups() {
            super(0, 3, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            OperationErrorContext operationErrorContextWithCurrentStackTrace;
            SlotTable slotTable = (SlotTable) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            FixupList fixupList = (FixupList) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(2));
            SlotWriter slotWriterOpenWriter = slotTable.openWriter();
            if (operationErrorContext != null) {
                try {
                    operationErrorContextWithCurrentStackTrace = OperationKt.withCurrentStackTrace(operationErrorContext, slotWriter);
                } catch (Throwable th) {
                    slotWriterOpenWriter.close(false);
                    throw th;
                }
            } else {
                operationErrorContextWithCurrentStackTrace = null;
            }
            fixupList.executeAndFlushAllPendingFixups(applier, slotWriterOpenWriter, rememberManager, operationErrorContextWithCurrentStackTrace);
            j59 j59Var = j59.a;
            slotWriterOpenWriter.close(true);
            slotWriter.beginInsert();
            slotWriter.moveFrom(slotTable, gapAnchor.toIndexFor(slotTable), false);
            slotWriter.endInsert();
        }

        /* JADX INFO: renamed from: getAnchor-w8_IdGo, reason: not valid java name */
        public final int m5465getAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getFixups-w8_IdGo, reason: not valid java name */
        public final int m5466getFixupsw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(2);
        }

        /* JADX INFO: renamed from: getFromSlotTable-w8_IdGo, reason: not valid java name */
        public final int m5467getFromSlotTablew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "anchor";
            }
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1))) {
                return "from";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(2)) ? "fixups" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class MoveCurrentGroup extends Operation {
        public static final int $stable = 0;
        public static final MoveCurrentGroup INSTANCE = new MoveCurrentGroup();

        private MoveCurrentGroup() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.moveGroup(operationArgContainer.getInt(0));
        }

        public final int getOffset() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? TypedValues.CycleType.S_WAVE_OFFSET : super.intParamName(i);
        }
    }

    public static final class MoveNode extends Operation {
        public static final int $stable = 0;
        public static final MoveNode INSTANCE = new MoveNode();

        private MoveNode() {
            super(3, 0, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
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

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
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
        public static final /* synthetic */ ObjectParameter m5468boximpl(int i) {
            return new ObjectParameter(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static <T> int m5469constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m5470equalsimpl(int i, Object obj) {
            return (obj instanceof ObjectParameter) && i == ((ObjectParameter) obj).m5474unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m5471equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m5472hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m5473toStringimpl(int i) {
            return qz0.d("ObjectParameter(offset=", i, ')');
        }

        public boolean equals(Object obj) {
            return m5470equalsimpl(this.offset, obj);
        }

        public final int getOffset() {
            return this.offset;
        }

        public int hashCode() {
            return m5472hashCodeimpl(this.offset);
        }

        public String toString() {
            return m5473toStringimpl(this.offset);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m5474unboximpl() {
            return this.offset;
        }
    }

    public static final class PostInsertNodeFixup extends Operation {
        public static final int $stable = 0;
        public static final PostInsertNodeFixup INSTANCE = new PostInsertNodeFixup();

        /* JADX WARN: Illegal instructions before constructor call */
        private PostInsertNodeFixup() {
            int i = 1;
            super(i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            int i = operationArgContainer.getInt(0);
            applier.up();
            applier.insertBottomUp(i, slotWriter.node(gapAnchor));
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public GapAnchor getGroupAnchor(OperationArgContainer operationArgContainer, SlotWriter slotWriter) {
            return (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
        }

        /* JADX INFO: renamed from: getGroupAnchor-w8_IdGo, reason: not valid java name */
        public final int m5475getGroupAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        public final int getInsertIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "insertIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "groupAnchor" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class ReleaseMovableGroupAtCurrent extends Operation {
        public static final int $stable = 0;
        public static final ReleaseMovableGroupAtCurrent INSTANCE = new ReleaseMovableGroupAtCurrent();

        private ReleaseMovableGroupAtCurrent() {
            super(0, 3, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ControlledComposition controlledComposition = (ControlledComposition) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(2));
            ((CompositionContext) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1))).movableContentStateReleased$runtime(movableContentStateReference, ComposerKt.extractMovableContentAtCurrent(controlledComposition, movableContentStateReference, slotWriter, null), applier);
        }

        /* JADX INFO: renamed from: getComposition-w8_IdGo, reason: not valid java name */
        public final int m5476getCompositionw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        /* JADX INFO: renamed from: getParentCompositionContext-w8_IdGo, reason: not valid java name */
        public final int m5477getParentCompositionContextw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        /* JADX INFO: renamed from: getReference-w8_IdGo, reason: not valid java name */
        public final int m5478getReferencew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(2);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "composition";
            }
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1))) {
                return "parentCompositionContext";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(2)) ? TypedValues.Custom.S_REFERENCE : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class Remember extends Operation {
        public static final int $stable = 0;
        public static final Remember INSTANCE = new Remember();

        /* JADX WARN: Illegal instructions before constructor call */
        private Remember() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.remembering((RememberObserverHolder) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getValue-w8_IdGo, reason: not valid java name */
        public final int m5479getValuew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "value" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class RememberPausingScope extends Operation {
        public static final int $stable = 0;
        public static final RememberPausingScope INSTANCE = new RememberPausingScope();

        /* JADX WARN: Illegal instructions before constructor call */
        private RememberPausingScope() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.rememberPausingScope((RecomposeScopeImpl) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getScope-w8_IdGo, reason: not valid java name */
        public final int m5480getScopew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "scope" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class RemoveCurrentGroup extends Operation {
        public static final int $stable = 0;
        public static final RemoveCurrentGroup INSTANCE = new RemoveCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        private RemoveCurrentGroup() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            ComposerKt.removeCurrentGroup(slotWriter, rememberManager);
        }
    }

    public static final class RemoveNode extends Operation {
        public static final int $stable = 0;
        public static final RemoveNode INSTANCE = new RemoveNode();

        /* JADX WARN: Illegal instructions before constructor call */
        private RemoveNode() {
            int i = 2;
            super(i, 0, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.remove(operationArgContainer.getInt(0), operationArgContainer.getInt(1));
        }

        public final int getCount() {
            return 1;
        }

        public final int getRemoveIndex() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            if (i == 0) {
                return "removeIndex";
            }
            return i == 1 ? "count" : super.intParamName(i);
        }
    }

    public static final class ResetSlots extends Operation {
        public static final int $stable = 0;
        public static final ResetSlots INSTANCE = new ResetSlots();

        /* JADX WARN: Illegal instructions before constructor call */
        private ResetSlots() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.reset();
        }
    }

    public static final class SideEffect extends Operation {
        public static final int $stable = 0;
        public static final SideEffect INSTANCE = new SideEffect();

        /* JADX WARN: Illegal instructions before constructor call */
        private SideEffect() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.sideEffect((ll3) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getEffect-w8_IdGo, reason: not valid java name */
        public final int m5481getEffectw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "effect" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class SkipToEndOfCurrentGroup extends Operation {
        public static final int $stable = 0;
        public static final SkipToEndOfCurrentGroup INSTANCE = new SkipToEndOfCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        private SkipToEndOfCurrentGroup() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.skipToGroupEnd();
        }
    }

    public static final class StartResumingScope extends Operation {
        public static final int $stable = 0;
        public static final StartResumingScope INSTANCE = new StartResumingScope();

        /* JADX WARN: Illegal instructions before constructor call */
        private StartResumingScope() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            rememberManager.startResumingScope((RecomposeScopeImpl) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getScope-w8_IdGo, reason: not valid java name */
        public final int m5482getScopew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "scope" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class TrimParentValues extends Operation {
        public static final int $stable = 0;
        public static final TrimParentValues INSTANCE = new TrimParentValues();

        private TrimParentValues() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = operationArgContainer.getInt(0);
            int parent = slotWriter.getParent();
            int iSlotsStartIndex$runtime = slotWriter.slotsStartIndex$runtime(parent);
            int iSlotsEndIndex$runtime = slotWriter.slotsEndIndex$runtime(parent);
            for (int iMax = Math.max(iSlotsStartIndex$runtime, iSlotsEndIndex$runtime - i); iMax < iSlotsEndIndex$runtime; iMax++) {
                Object obj = slotWriter.slots[slotWriter.dataIndexToDataAddress(iMax)];
                if (obj instanceof RememberObserverHolder) {
                    rememberManager.forgetting((RememberObserverHolder) obj);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).release();
                }
            }
            slotWriter.trimTailSlots(i);
        }

        public final int getCount() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "count" : super.intParamName(i);
        }
    }

    public static final class UpdateAnchoredValue extends Operation {
        public static final int $stable = 0;
        public static final UpdateAnchoredValue INSTANCE = new UpdateAnchoredValue();

        private UpdateAnchoredValue() {
            super(1, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objMo5489getObjectPtLUHM = operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            GapAnchor gapAnchor = (GapAnchor) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1));
            int i = operationArgContainer.getInt(0);
            if (objMo5489getObjectPtLUHM instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) objMo5489getObjectPtLUHM);
            }
            Object obj = slotWriter.set(slotWriter.anchorIndex(gapAnchor), i, objMo5489getObjectPtLUHM);
            if (obj instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) obj);
            } else if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).release();
            }
        }

        /* JADX INFO: renamed from: getAnchor-w8_IdGo, reason: not valid java name */
        public final int m5483getAnchorw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        public final int getGroupSlotIndex() {
            return 0;
        }

        /* JADX INFO: renamed from: getValue-w8_IdGo, reason: not valid java name */
        public final int m5484getValuew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "groupSlotIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "value";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "anchor" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class UpdateAuxData extends Operation {
        public static final int $stable = 0;
        public static final UpdateAuxData INSTANCE = new UpdateAuxData();

        /* JADX WARN: Illegal instructions before constructor call */
        private UpdateAuxData() {
            int i = 1;
            super(0, i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            slotWriter.updateAux(operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getData-w8_IdGo, reason: not valid java name */
        public final int m5485getDataw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "data" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class UpdateNode extends Operation {
        public static final int $stable = 0;
        public static final UpdateNode INSTANCE = new UpdateNode();

        private UpdateNode() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.apply((bm3) operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(1)), operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0)));
        }

        /* JADX INFO: renamed from: getBlock-w8_IdGo, reason: not valid java name */
        public final int m5486getBlockw8_IdGo() {
            return ObjectParameter.m5469constructorimpl(1);
        }

        /* JADX INFO: renamed from: getValue-w8_IdGo, reason: not valid java name */
        public final int m5487getValuew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            if (ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0))) {
                return "value";
            }
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(1)) ? "block" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class UpdateValue extends Operation {
        public static final int $stable = 0;
        public static final UpdateValue INSTANCE = new UpdateValue();

        /* JADX WARN: Illegal instructions before constructor call */
        private UpdateValue() {
            int i = 1;
            super(i, i, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            Object objMo5489getObjectPtLUHM = operationArgContainer.mo5489getObjectPtLUHM(ObjectParameter.m5469constructorimpl(0));
            int i = operationArgContainer.getInt(0);
            if (objMo5489getObjectPtLUHM instanceof RememberObserverHolder) {
                rememberManager.remembering((RememberObserverHolder) objMo5489getObjectPtLUHM);
            }
            Object obj = slotWriter.set(slotWriter.getCurrentGroup(), i, objMo5489getObjectPtLUHM);
            if (obj instanceof RememberObserverHolder) {
                rememberManager.forgetting((RememberObserverHolder) obj);
            } else if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).release();
            }
        }

        public final int getGroupSlotIndex() {
            return 0;
        }

        /* JADX INFO: renamed from: getValue-w8_IdGo, reason: not valid java name */
        public final int m5488getValuew8_IdGo() {
            return ObjectParameter.m5469constructorimpl(0);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "groupSlotIndex" : super.intParamName(i);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        /* JADX INFO: renamed from: objectParamName-PtL-UHM */
        public String mo5443objectParamNamePtLUHM(int i) {
            return ObjectParameter.m5471equalsimpl0(i, ObjectParameter.m5469constructorimpl(0)) ? "value" : super.mo5443objectParamNamePtLUHM(i);
        }
    }

    public static final class Ups extends Operation {
        public static final int $stable = 0;
        public static final Ups INSTANCE = new Ups();

        private Ups() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            int i = operationArgContainer.getInt(0);
            for (int i2 = 0; i2 < i; i2++) {
                applier.up();
            }
        }

        public final int getCount() {
            return 0;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String intParamName(int i) {
            return i == 0 ? "count" : super.intParamName(i);
        }
    }

    public static final class UseCurrentNode extends Operation {
        public static final int $stable = 0;
        public static final UseCurrentNode INSTANCE = new UseCurrentNode();

        /* JADX WARN: Illegal instructions before constructor call */
        private UseCurrentNode() {
            int i = 0;
            super(i, i, 3, null);
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            applier.reuse();
        }
    }

    public /* synthetic */ Operation(int i, int i2, int i3, jh2 jh2Var) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, null);
    }

    public abstract void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext);

    public final void executeWithComposeStackTrace(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) throws Throwable {
        GapAnchor groupAnchor = getGroupAnchor(operationArgContainer, slotWriter);
        try {
            execute(operationArgContainer, applier, slotWriter, rememberManager, operationErrorContext);
        } catch (Throwable th) {
            throw OperationKt.attachComposeStackTrace(th, operationErrorContext, slotWriter, groupAnchor);
        }
    }

    public GapAnchor getGroupAnchor(OperationArgContainer operationArgContainer, SlotWriter slotWriter) {
        return null;
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

    /* JADX INFO: renamed from: objectParamName-PtL-UHM, reason: not valid java name */
    public String mo5443objectParamNamePtLUHM(int i) {
        return qz0.d("ObjectParameter(", i, ')');
    }

    public String toString() {
        return getName();
    }

    private Operation(int i, int i2) {
        this.ints = i;
        this.objects = i2;
    }

    public /* synthetic */ Operation(int i, int i2, jh2 jh2Var) {
        this(i, i2);
    }

    public static final class TestOperation extends Operation {
        public static final int $stable = 8;
        private final dm3<Applier<?>, SlotWriter, RememberManager, j59> block;
        private final List<Integer> intParams;
        private final List<ObjectParameter<Object>> objParams;

        /* JADX WARN: Multi-variable type inference failed */
        public TestOperation(int i, int i2, dm3<? super Applier<?>, ? super SlotWriter, ? super RememberManager, j59> dm3Var) {
            super(i, i2, null);
            this.block = dm3Var;
            ArrayList arrayList = new ArrayList(i);
            for (int i3 = 0; i3 < i; i3++) {
                arrayList.add(Integer.valueOf(i3));
            }
            this.intParams = arrayList;
            ArrayList arrayList2 = new ArrayList(i2);
            for (int i4 = 0; i4 < i2; i4++) {
                arrayList2.add(ObjectParameter.m5468boximpl(ObjectParameter.m5469constructorimpl(i4)));
            }
            this.objParams = arrayList2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 _init_$lambda$0(Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            return j59.a;
        }

        public static /* synthetic */ void getIntParams$annotations() {
        }

        public static /* synthetic */ void getObjParams$annotations() {
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
            this.block.invoke(applier, slotWriter, rememberManager);
        }

        public final dm3<Applier<?>, SlotWriter, RememberManager, j59> getBlock() {
            return this.block;
        }

        public final List<Integer> getIntParams() {
            return this.intParams;
        }

        public final List<ObjectParameter<Object>> getObjParams() {
            return this.objParams;
        }

        @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
        public String toString() {
            return "TestOperation(ints = " + getInts() + ", objects = " + getObjects() + ")@" + System_jvmKt.identityHashCode(this);
        }

        public TestOperation() {
            this(0, 0, null, 7, null);
        }

        public /* synthetic */ TestOperation(int i, int i2, dm3 dm3Var, int i3, jh2 jh2Var) {
            this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? new oy5() : dm3Var);
        }
    }
}
