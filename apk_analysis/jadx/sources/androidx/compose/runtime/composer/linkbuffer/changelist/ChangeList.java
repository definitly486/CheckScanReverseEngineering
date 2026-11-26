package androidx.compose.runtime.composer.linkbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Changes;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.LinkRememberObserverHolder;
import androidx.compose.runtime.MovableContentState;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchor;
import androidx.compose.runtime.composer.linkbuffer.LinkAnchorKt;
import androidx.compose.runtime.composer.linkbuffer.SlotTable;
import androidx.compose.runtime.composer.linkbuffer.SlotTableAddressSpace;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import defpackage.ad2;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.v39;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ChangeList extends Changes {
    public static final int $stable = 8;
    private final Operations operations = new Operations();

    public static /* synthetic */ void pushExecuteOperationsIn$default(ChangeList changeList, ChangeList changeList2, IntRef intRef, int i, Object obj) {
        if ((i & 2) != 0) {
            intRef = null;
        }
        changeList.pushExecuteOperationsIn(changeList2, intRef);
    }

    @Override // androidx.compose.runtime.Changes
    public void clear() {
        this.operations.clear();
    }

    @Override // androidx.compose.runtime.Changes
    public void execute(SlotStorage slotStorage, Applier<?> applier, RememberManager rememberManager, CompositionErrorContextImpl compositionErrorContextImpl) {
        SlotTableEditor slotTableEditorOpenEditor = SlotTableKt.asLinkBufferSlotTable(slotStorage).openEditor();
        try {
            executeAndFlushAllPendingChanges(applier, slotTableEditorOpenEditor, rememberManager, compositionErrorContextImpl);
            j59 j59Var = j59.a;
        } finally {
            slotTableEditorOpenEditor.close();
        }
    }

    public final void executeAndFlushAllPendingChanges(Applier<?> applier, SlotTableEditor slotTableEditor, RememberManager rememberManager, OperationErrorContext operationErrorContext) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotTableEditor, rememberManager, operationErrorContext);
    }

    public final int getSize() {
        return this.operations.getSize();
    }

    public final boolean hasChangesRequiringApplication() {
        return this.operations.getRequiresApplication();
    }

    @Override // androidx.compose.runtime.Changes
    public boolean isEmpty() {
        return this.operations.isEmpty();
    }

    public final void pushAppendValue(Object obj) {
        Operations operations = this.operations;
        Operation.AppendValue appendValue = Operation.AppendValue.INSTANCE;
        operations.pushOp(appendValue);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), obj);
        operations.ensureAllArgumentsPushedFor(appendValue);
    }

    public final void pushClearAllRecompositionRequiredGroups() {
        this.operations.push(Operation.ClearAllRecompositionRequired.INSTANCE);
    }

    public final void pushCopyNodesToNewAnchorLocation(List<? extends Object> list, IntRef intRef) {
        if (list.isEmpty()) {
            return;
        }
        Operations operations = this.operations;
        Operation.CopyNodesToNewAnchorLocation copyNodesToNewAnchorLocation = Operation.CopyNodesToNewAnchorLocation.INSTANCE;
        operations.pushOp(copyNodesToNewAnchorLocation);
        Operations.WriteScope.m5566setObjectsEykTJF8(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(1), list, Operation.ObjectParameter.m5530constructorimpl(0), intRef);
        operations.ensureAllArgumentsPushedFor(copyNodesToNewAnchorLocation);
    }

    public final void pushCopySlotTableToAnchorLocation(MovableContentState movableContentState, CompositionContext compositionContext, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        Operations operations = this.operations;
        Operation.CopySlotTableToHandleLocation copySlotTableToHandleLocation = Operation.CopySlotTableToHandleLocation.INSTANCE;
        operations.pushOp(copySlotTableToHandleLocation);
        Operations.WriteScope.m5568setObjectsUOUgNZM(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), movableContentState, Operation.ObjectParameter.m5530constructorimpl(1), compositionContext, Operation.ObjectParameter.m5530constructorimpl(3), movableContentStateReference2, Operation.ObjectParameter.m5530constructorimpl(2), movableContentStateReference);
        operations.ensureAllArgumentsPushedFor(copySlotTableToHandleLocation);
    }

    public final void pushDeactivateGroup() {
        this.operations.push(Operation.DeactivateGroup.INSTANCE);
    }

    public final void pushDetermineMovableContentNodeIndex(IntRef intRef, long j) {
        Operations operations = this.operations;
        Operation.DetermineMovableContentNodeIndex determineMovableContentNodeIndex = Operation.DetermineMovableContentNodeIndex.INSTANCE;
        operations.pushOp(determineMovableContentNodeIndex);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), intRef);
        Operations.WriteScope.m5564setLongimpl(operationsM5555constructorimpl, 1, 0, j);
        operations.ensureAllArgumentsPushedFor(determineMovableContentNodeIndex);
    }

    public final void pushDisposeDisposeMovableContentState(MovableContentState movableContentState) {
        Operations operations = this.operations;
        Operation.DisposeMovableContentState disposeMovableContentState = Operation.DisposeMovableContentState.INSTANCE;
        operations.pushOp(disposeMovableContentState);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), movableContentState);
        operations.ensureAllArgumentsPushedFor(disposeMovableContentState);
    }

    public final void pushDowns(Object[] objArr) {
        if (objArr.length == 0) {
            return;
        }
        Operations operations = this.operations;
        Operation.Downs downs = Operation.Downs.INSTANCE;
        operations.pushOp(downs);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), objArr);
        operations.ensureAllArgumentsPushedFor(downs);
    }

    public final void pushEndCompositionScope(nl3<? super Composition, j59> nl3Var, Composition composition) {
        Operations operations = this.operations;
        Operation.EndCompositionScope endCompositionScope = Operation.EndCompositionScope.INSTANCE;
        operations.pushOp(endCompositionScope);
        Operations.WriteScope.m5566setObjectsEykTJF8(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), nl3Var, Operation.ObjectParameter.m5530constructorimpl(1), composition);
        operations.ensureAllArgumentsPushedFor(endCompositionScope);
    }

    public final void pushEndMovableContentPlacement() {
        this.operations.push(Operation.EndMovableContentPlacement.INSTANCE);
    }

    public final void pushEndResumingScope(RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.EndResumingScope endResumingScope = Operation.EndResumingScope.INSTANCE;
        operations.pushOp(endResumingScope);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(endResumingScope);
    }

    public final void pushExecuteOperationsIn(ChangeList changeList, IntRef intRef) {
        if (changeList.isNotEmpty()) {
            Operations operations = this.operations;
            Operation.ApplyChangeList applyChangeList = Operation.ApplyChangeList.INSTANCE;
            operations.pushOp(applyChangeList);
            Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
            Operations.WriteScope.m5566setObjectsEykTJF8(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), changeList, Operation.ObjectParameter.m5530constructorimpl(1), intRef);
            if (changeList.operations.getRequiresApplication()) {
                Operations.WriteScope.m5560requireApplicationimpl(operationsM5555constructorimpl);
            }
            operations.ensureAllArgumentsPushedFor(applyChangeList);
        }
    }

    public final void pushInsertSlots(SlotTable slotTable, long j, FixupList fixupList) {
        Operations operations = this.operations;
        Operation.InsertSlotsWithFixups insertSlotsWithFixups = Operation.InsertSlotsWithFixups.INSTANCE;
        operations.pushOp(insertSlotsWithFixups);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5564setLongimpl(operationsM5555constructorimpl, 0, 1, j);
        Operations.WriteScope.m5566setObjectsEykTJF8(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), slotTable, Operation.ObjectParameter.m5530constructorimpl(1), fixupList);
        operations.ensureAllArgumentsPushedFor(insertSlotsWithFixups);
    }

    public final void pushMoveGroup(int i) {
        Operations operations = this.operations;
        Operation.MoveGroup moveGroup = Operation.MoveGroup.INSTANCE;
        operations.pushOp(moveGroup);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        operationsM5555constructorimpl.intArgs[operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(moveGroup);
    }

    public final void pushMoveNode(int i, int i2, int i3) {
        Operations operations = this.operations;
        Operation.MoveNode moveNode = Operation.MoveNode.INSTANCE;
        operations.pushOp(moveNode);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        int ints = operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = operationsM5555constructorimpl.intArgs;
        iArr[ints + 1] = i;
        iArr[ints] = i2;
        iArr[ints + 2] = i3;
        operations.ensureAllArgumentsPushedFor(moveNode);
    }

    public final void pushReleaseMovableGroup(ControlledComposition controlledComposition, CompositionContext compositionContext, MovableContentStateReference movableContentStateReference) {
        Operations operations = this.operations;
        Operation.ReleaseMovableGroup releaseMovableGroup = Operation.ReleaseMovableGroup.INSTANCE;
        operations.pushOp(releaseMovableGroup);
        Operations.WriteScope.m5567setObjectsGn0XI2A(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), controlledComposition, Operation.ObjectParameter.m5530constructorimpl(1), compositionContext, Operation.ObjectParameter.m5530constructorimpl(2), movableContentStateReference);
        operations.ensureAllArgumentsPushedFor(releaseMovableGroup);
    }

    public final void pushRemember(RememberObserverHolder rememberObserverHolder) {
        Operations operations = this.operations;
        Operation.Remember remember = Operation.Remember.INSTANCE;
        operations.pushOp(remember);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), rememberObserverHolder);
        operations.ensureAllArgumentsPushedFor(remember);
    }

    public final void pushRememberPausingScope(RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.RememberPausingScope rememberPausingScope = Operation.RememberPausingScope.INSTANCE;
        operations.pushOp(rememberPausingScope);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(rememberPausingScope);
    }

    public final void pushRemoveGroup() {
        this.operations.push(Operation.RemoveGroup.INSTANCE);
    }

    public final void pushRemoveNode(int i, int i2) {
        Operations operations = this.operations;
        Operation.RemoveNode removeNode = Operation.RemoveNode.INSTANCE;
        operations.pushOp(removeNode);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        int ints = operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = operationsM5555constructorimpl.intArgs;
        iArr[ints] = i;
        iArr[ints + 1] = i2;
        operations.ensureAllArgumentsPushedFor(removeNode);
    }

    public final void pushRemoveTailGroupsAndValues(int i, int i2) {
        Operations operations = this.operations;
        Operation.RemoveTailGroupsAndValues removeTailGroupsAndValues = Operation.RemoveTailGroupsAndValues.INSTANCE;
        operations.pushOp(removeTailGroupsAndValues);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        int ints = operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts();
        int[] iArr = operationsM5555constructorimpl.intArgs;
        iArr[ints] = i;
        iArr[ints + 1] = i2;
        operations.ensureAllArgumentsPushedFor(removeTailGroupsAndValues);
    }

    public final void pushResetSlots() {
        this.operations.push(Operation.ResetSlots.INSTANCE);
    }

    public final void pushSeekToAnchor(SlotTableAddressSpace slotTableAddressSpace, long j) {
        Operations operations = this.operations;
        Operation.SeekToAnchor seekToAnchor = Operation.SeekToAnchor.INSTANCE;
        operations.pushOp(seekToAnchor);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), LinkAnchorKt.anchorHandle(slotTableAddressSpace, j));
        operations.ensureAllArgumentsPushedFor(seekToAnchor);
    }

    public final void pushSeekToGroupHandle(long j) {
        Operations operations = this.operations;
        Operation.SeekToGroupHandle seekToGroupHandle = Operation.SeekToGroupHandle.INSTANCE;
        operations.pushOp(seekToGroupHandle);
        Operations.WriteScope.m5564setLongimpl(Operations.WriteScope.m5555constructorimpl(operations), 0, 1, j);
        operations.ensureAllArgumentsPushedFor(seekToGroupHandle);
    }

    public final void pushSideEffect(ll3<j59> ll3Var) {
        Operations operations = this.operations;
        Operation.SideEffect sideEffect = Operation.SideEffect.INSTANCE;
        operations.pushOp(sideEffect);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), ll3Var);
        operations.ensureAllArgumentsPushedFor(sideEffect);
    }

    public final void pushSkipGroup() {
        this.operations.push(Operation.SkipGroup.INSTANCE);
    }

    public final void pushStartGroup() {
        this.operations.push(Operation.StartGroup.INSTANCE);
    }

    public final void pushStartResumingScope(RecomposeScopeImpl recomposeScopeImpl) {
        Operations operations = this.operations;
        Operation.StartResumingScope startResumingScope = Operation.StartResumingScope.INSTANCE;
        operations.pushOp(startResumingScope);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), recomposeScopeImpl);
        operations.ensureAllArgumentsPushedFor(startResumingScope);
    }

    public final void pushUpdateAuxData(Object obj) {
        Operations operations = this.operations;
        Operation.UpdateAuxData updateAuxData = Operation.UpdateAuxData.INSTANCE;
        operations.pushOp(updateAuxData);
        Operations.WriteScope.m5565setObjectaWHcuVo(Operations.WriteScope.m5555constructorimpl(operations), Operation.ObjectParameter.m5530constructorimpl(0), obj);
        operations.ensureAllArgumentsPushedFor(updateAuxData);
    }

    public final <T, V> void pushUpdateNode(V v, bm3<? super T, ? super V, j59> bm3Var) {
        Operations operations = this.operations;
        Operation.UpdateNode updateNode = Operation.UpdateNode.INSTANCE;
        operations.pushOp(updateNode);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        int iM5530constructorimpl = Operation.ObjectParameter.m5530constructorimpl(0);
        int iM5530constructorimpl2 = Operation.ObjectParameter.m5530constructorimpl(1);
        bm3Var.getClass();
        v39.c(2, bm3Var);
        Operations.WriteScope.m5566setObjectsEykTJF8(operationsM5555constructorimpl, iM5530constructorimpl, v, iM5530constructorimpl2, bm3Var);
        operations.ensureAllArgumentsPushedFor(updateNode);
    }

    public final void pushUpdateRelativeValue(int i, Object obj) {
        Operations operations = this.operations;
        Operation.UpdateValueRelative updateValueRelative = Operation.UpdateValueRelative.INSTANCE;
        operations.pushOp(updateValueRelative);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        operationsM5555constructorimpl.intArgs[operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts()] = i;
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), obj);
        operations.ensureAllArgumentsPushedFor(updateValueRelative);
    }

    public final void pushUpdateRememberObserverHolderOrdering(LinkRememberObserverHolder linkRememberObserverHolder, LinkAnchor linkAnchor) {
        Operations operations = this.operations;
        Operation.UpdateRememberObserverHolderOrdering updateRememberObserverHolderOrdering = Operation.UpdateRememberObserverHolderOrdering.INSTANCE;
        operations.pushOp(updateRememberObserverHolderOrdering);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(1), linkRememberObserverHolder);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), linkAnchor);
        operations.ensureAllArgumentsPushedFor(updateRememberObserverHolderOrdering);
    }

    public final void pushUpdateValue(int i, Object obj) {
        Operations operations = this.operations;
        Operation.UpdateValue updateValue = Operation.UpdateValue.INSTANCE;
        operations.pushOp(updateValue);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), obj);
        operationsM5555constructorimpl.intArgs[operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(updateValue);
    }

    public final void pushUps(int i) {
        Operations operations = this.operations;
        Operation.Ups ups = Operation.Ups.INSTANCE;
        operations.pushOp(ups);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        operationsM5555constructorimpl.intArgs[operationsM5555constructorimpl.intArgsSize - operationsM5555constructorimpl.opCodes[operationsM5555constructorimpl.opCodesSize - 1].getInts()] = i;
        operations.ensureAllArgumentsPushedFor(ups);
    }

    public final void pushUseNode(Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            this.operations.push(Operation.UseCurrentNode.INSTANCE);
        }
    }

    @Override // androidx.compose.runtime.composer.DebugStringFormattable
    public String toDebugString(String str) {
        StringBuilder sbC = ad2.c("ChangeList instance containing ");
        sbC.append(getSize());
        sbC.append(" operations");
        if (sbC.length() > 0) {
            sbC.append(":\n");
            sbC.append(this.operations.toDebugString(str));
        }
        return sbC.toString();
    }

    public final void pushInsertSlots(SlotTable slotTable, long j) {
        Operations operations = this.operations;
        Operation.InsertSlots insertSlots = Operation.InsertSlots.INSTANCE;
        operations.pushOp(insertSlots);
        Operations operationsM5555constructorimpl = Operations.WriteScope.m5555constructorimpl(operations);
        Operations.WriteScope.m5564setLongimpl(operationsM5555constructorimpl, 0, 1, j);
        Operations.WriteScope.m5565setObjectaWHcuVo(operationsM5555constructorimpl, Operation.ObjectParameter.m5530constructorimpl(0), slotTable);
        operations.ensureAllArgumentsPushedFor(insertSlots);
    }
}
